import 'package:finflux/features/authentication/data/repository/auth_repositor_impl.dart';

class SendOtp {
  final AuthRepository repository;

  SendOtp(this.repository);

  Future<void> call(String phoneNumber) {
    return repository.sendOtp(phoneNumber);
  }
}

// Implementing mobile number authentication using Firebase in Flutter with BLoC and Clean Architecture involves multiple layers:

// ✅ Here's a high-level breakdown:
// 🔹 Layers:
// Presentation Layer: Flutter UI + BLoC

// Domain Layer: Use cases + entities

// Data Layer: Firebase implementation

// 🛠️ 1. Firebase Setup
// Add Firebase to your Flutter project using the Firebase Console

// Enable Phone Authentication under Authentication > Sign-in method

// Add firebase_auth to pubspec.yaml:

// yaml
// Copy
// Edit
// firebase_auth: ^latest
// 🗂️ 2. Project Structure (Clean Architecture)
// kotlin
// Copy
// Edit
// lib/
// ├── data/
// │   └── repositories/
// │       └── auth_repository_impl.dart
// ├── domain/
// │   ├── entities/
// │   │   └── auth_user.dart
// │   ├── repositories/
// │   │   └── auth_repository.dart
// │   └── usecases/
// │       ├── send_otp.dart
// │       └── verify_otp.dart
// ├── presentation/
// │   └── blocs/
// │       └── auth_bloc.dart
// │   └── screens/
// │       └── phone_auth_screen.dart
// 🧩 3. Domain Layer
// auth_repository.dart – Abstract contract
// dart
// Copy
// Edit
// abstract class AuthRepository {
//   Future<void> sendOtp(String phoneNumber);
//   Future<void> verifyOtp(String verificationId, String smsCode);
// }
// send_otp.dart – Use case
// dart
// Copy
// Edit
// class SendOtp {
//   final AuthRepository repository;

//   SendOtp(this.repository);

//   Future<void> call(String phoneNumber) {
//     return repository.sendOtp(phoneNumber);
//   }
// }
// verify_otp.dart – Use case
// dart
// Copy
// Edit
// class VerifyOtp {
//   final AuthRepository repository;

//   VerifyOtp(this.repository);

//   Future<void> call(String verificationId, String smsCode) {
//     return repository.verifyOtp(verificationId, smsCode);
//   }
// }
// 💾 4. Data Layer
// auth_repository_impl.dart
// dart
// Copy
// Edit
// import 'package:firebase_auth/firebase_auth.dart';
// import '../../domain/repositories/auth_repository.dart';

// class AuthRepositoryImpl implements AuthRepository {
//   final FirebaseAuth _firebaseAuth;

//   AuthRepositoryImpl(this._firebaseAuth);

//   String _verificationId = "";

//   @override
//   Future<void> sendOtp(String phoneNumber) async {
//     await _firebaseAuth.verifyPhoneNumber(
//       phoneNumber: phoneNumber,
//       verificationCompleted: (PhoneAuthCredential credential) async {
//         await _firebaseAuth.signInWithCredential(credential);
//       },
//       verificationFailed: (FirebaseAuthException e) {
//         throw Exception(e.message);
//       },
//       codeSent: (String verificationId, int? resendToken) {
//         _verificationId = verificationId;
//       },
//       codeAutoRetrievalTimeout: (String verificationId) {
//         _verificationId = verificationId;
//       },
//     );
//   }

//   @override
//   Future<void> verifyOtp(String smsCode, String verificationId) async {
//     final credential = PhoneAuthProvider.credential(
//       verificationId: verificationId,
//       smsCode: smsCode,
//     );
//     await _firebaseAuth.signInWithCredential(credential);
//   }
// }
// 📦 5. BLoC Layer
// auth_event.dart
// dart
// Copy
// Edit
// part of 'auth_bloc.dart';

// abstract class AuthEvent {}

// class SendOtpEvent extends AuthEvent {
//   final String phoneNumber;
//   SendOtpEvent(this.phoneNumber);
// }

// class VerifyOtpEvent extends AuthEvent {
//   final String smsCode;
//   final String verificationId;
//   VerifyOtpEvent(this.smsCode, this.verificationId);
// }
// auth_state.dart
// dart
// Copy
// Edit
// part of 'auth_bloc.dart';

// abstract class AuthState {}

// class AuthInitial extends AuthState {}

// class OtpSent extends AuthState {}

// class AuthLoading extends AuthState {}

// class AuthSuccess extends AuthState {}

// class AuthFailure extends AuthState {
//   final String error;
//   AuthFailure(this.error);
// }
// auth_bloc.dart
// dart
// Copy
// Edit
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../domain/usecases/send_otp.dart';
// import '../../../domain/usecases/verify_otp.dart';

// part 'auth_event.dart';
// part 'auth_state.dart';

// class AuthBloc extends Bloc<AuthEvent, AuthState> {
//   final SendOtp sendOtp;
//   final VerifyOtp verifyOtp;

//   AuthBloc({required this.sendOtp, required this.verifyOtp}) : super(AuthInitial()) {
//     on<SendOtpEvent>((event, emit) async {
//       emit(AuthLoading());
//       try {
//         await sendOtp(event.phoneNumber);
//         emit(OtpSent());
//       } catch (e) {
//         emit(AuthFailure(e.toString()));
//       }
//     });

//     on<VerifyOtpEvent>((event, emit) async {
//       emit(AuthLoading());
//       try {
//         await verifyOtp(event.verificationId, event.smsCode);
//         emit(AuthSuccess());
//       } catch (e) {
//         emit(AuthFailure(e.toString()));
//       }
//     });
//   }
// }
// 🧪 6. UI Layer (Minimal Example)
// dart
// Copy
// Edit
// class PhoneAuthScreen extends StatefulWidget {
//   const PhoneAuthScreen({super.key});

//   @override
//   State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
// }

// class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
//   final phoneController = TextEditingController();
//   final otpController = TextEditingController();
//   String verificationId = "";

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => getIt<AuthBloc>(),
//       child: Scaffold(
//         appBar: AppBar(title: Text("Phone Auth")),
//         body: BlocConsumer<AuthBloc, AuthState>(
//           listener: (context, state) {
//             if (state is AuthFailure) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text(state.error)),
//               );
//             } else if (state is AuthSuccess) {
//               Navigator.pushReplacementNamed(context, '/home');
//             } else if (state is OtpSent) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text("OTP Sent")),
//               );
//             }
//           },
//           builder: (context, state) {
//             return Column(
//               children: [
//                 TextField(controller: phoneController, decoration: InputDecoration(hintText: "Enter phone number")),
//                 ElevatedButton(
//                   onPressed: () {
//                     context.read<AuthBloc>().add(SendOtpEvent(phoneController.text));
//                   },
//                   child: Text("Send OTP"),
//                 ),
//                 TextField(controller: otpController, decoration: InputDecoration(hintText: "Enter OTP")),
//                 ElevatedButton(
//                   onPressed: () {
//                     context.read<AuthBloc>().add(VerifyOtpEvent(otpController.text, verificationId));
//                   },
//                   child: Text("Verify OTP"),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
// ✅ Bonus Tips
// Use injectable to inject dependencies like FirebaseAuth, AuthBloc, etc.

// For better user experience, show a loader (CircularProgressIndicator) when AuthLoading.

// Would you like me to:

// Generate the full working codebase?

// Set up injectable with this example?

// Use freezed for state/event classes?

// Let me know how deep you'd like to go.








