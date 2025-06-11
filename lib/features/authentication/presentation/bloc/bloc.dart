import 'package:finflux/core/errors.dart/exception.dart';
import 'package:finflux/features/authentication/domain/usecases/send_otp.dart';
import 'package:finflux/features/authentication/domain/usecases/verify_otp.dart';
import 'package:finflux/features/authentication/presentation/bloc/event.dart';
import 'package:finflux/features/authentication/presentation/bloc/state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SendOtp sendOtp;
  final VerifyOtp verifyOtp;
  AuthBloc({required this.sendOtp, required this.verifyOtp})
    : super(AuthState.initial()) {
    on<SendOtpEvent>(_sendOtp);
    on<VerifyOtpEvent>(_verifyOtp);
  }

  Future<void> _sendOtp(SendOtpEvent event, Emitter<AuthState> emit) async {
    try {
      await sendOtp(event.phoneNumber);
      emit(AuthState.otpsend());
    } on FirebaseAuthException catch (e) {
      emit(AuthState.failure(getFirebaseAuthErrorMessage(e)));
    } catch (e) {
      emit(AuthState.failure("Something went wrong. Please try again."));
    }
  }

  Future<void> _verifyOtp(VerifyOtpEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.loading());
    try {
      await verifyOtp(event.smsCode);
      emit(AuthState.success());
    } on FirebaseAuthException catch (e) {
      emit(AuthState.failure(getFirebaseAuthErrorMessage(e)));
    } catch (e) {
      emit(AuthState.failure("Something went wrong. Please try again."));
    }
  }
}
