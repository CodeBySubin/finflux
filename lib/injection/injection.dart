import 'package:finflux/features/authentication/data/repository/auth_repositor_impl.dart';
import 'package:finflux/features/authentication/presentation/bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import '../features/authentication/domain/usecases/send_otp.dart';
import '../features/authentication/domain/usecases/verify_otp.dart';
import '../features/authentication/domain/repositories/auth_repository.dart';

final getIt = GetIt.instance;

void setupLocator() {
  // Firebase
  getIt.registerLazySingleton(() => FirebaseAuth.instance);

  // Repository
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(getIt()),
  );

  // UseCases
  getIt.registerLazySingleton(() => SendOtp(getIt()));
  getIt.registerLazySingleton(() => VerifyOtp(getIt()));

  // BLoC
  getIt.registerFactory(() => AuthBloc(sendOtp: getIt(), verifyOtp: getIt()));
}
