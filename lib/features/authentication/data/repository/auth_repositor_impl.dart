abstract class AuthRepository {
  Future<void> sendOtp(String phoneNumber);
  Future<void> verifyOtp(String verificationId, String smsCode);
  }