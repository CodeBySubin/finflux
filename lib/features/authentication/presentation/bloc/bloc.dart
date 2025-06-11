import 'package:finflux/features/authentication/domain/usecases/send_otp.dart';
import 'package:finflux/features/authentication/domain/usecases/verify_otp.dart';
import 'package:finflux/features/authentication/presentation/bloc/event.dart';
import 'package:finflux/features/authentication/presentation/bloc/state.dart';
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
    emit(AuthState.loading());
    try {
      await sendOtp(event.phoneNumber);
      emit(AuthState.otpsend());
    } catch (e) {
      emit(AuthState.failure(e.toString()));
    }
  }

  Future<void> _verifyOtp(VerifyOtpEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.loading());
    try {
      await verifyOtp(event.verificationId, event.smsCode);
      emit(AuthState.success());
    } catch (e) {
      AuthState.failure(e.toString());
    }
  }
}
