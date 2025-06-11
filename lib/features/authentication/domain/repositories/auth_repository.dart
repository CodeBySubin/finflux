import 'package:finflux/features/authentication/data/repository/auth_repositor_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _fireBaseAuth;
  AuthRepositoryImpl(this._fireBaseAuth);
  
  String _verificationId = "";

  @override
  Future<void> sendOtp(String phoneNumber) async {
    _fireBaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _fireBaseAuth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        throw Exception(e);
      },
      codeSent: (String verificationId, int? resendToken) {
        _verificationId = verificationId;
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        _verificationId = verificationId;
      },
    );
  }

  @override
  Future<void> verifyOtp(String smsCode) async {
    final credential = PhoneAuthProvider.credential(
      verificationId: _verificationId,
      smsCode: smsCode,
    );
  await _fireBaseAuth.signInWithCredential(credential);
  }
}
