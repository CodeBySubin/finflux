import 'package:finflux/features/authentication/data/repository/auth_repositor_impl.dart';

class VerifyOtp {
  final AuthRepository repository;

  VerifyOtp(this.repository);

  Future<void> call(String smsCode) {
    return repository.verifyOtp(smsCode);
  }
}