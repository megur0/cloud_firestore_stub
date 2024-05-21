import 'package:firebase_auth/firebase_auth.dart';

class FirebaseUserStubBase implements User {
  FirebaseUserStubBase();

  @override
  String? get displayName => throw Exception("not implemented");

  @override
  String? get email => throw Exception("not implemented");

  @override
  bool get emailVerified => throw Exception("not implemented");

  @override
  bool get isAnonymous => throw Exception("not implemented");

  @override
  UserMetadata get metadata => throw Exception("not implemented");

  @override
  String? get phoneNumber => throw Exception("not implemented");

  @override
  String? get photoURL => throw Exception("not implemented");

  @override
  List<UserInfo> get providerData => throw Exception("not implemented");

  @override
  String? get refreshToken => throw Exception("not implemented");

  @override
  String? get tenantId => throw Exception("not implemented");

  @override
  String get uid => throw Exception("not implemented");

  @override
  Future<void> delete() => throw Exception("not implemented");

  @override
  Future<String?> getIdToken([bool forceRefresh = false]) =>
      throw Exception("not implemented");

  @override
  Future<IdTokenResult> getIdTokenResult([bool forceRefresh = false]) =>
      throw Exception("not implemented");

  @override
  Future<UserCredential> linkWithCredential(AuthCredential credential) =>
      throw Exception("not implemented");

  @override
  Future<UserCredential> linkWithProvider(
    AuthProvider provider,
  ) =>
      throw Exception("not implemented");

  @override
  Future<UserCredential> reauthenticateWithProvider(
    AuthProvider provider,
  ) =>
      throw Exception("not implemented");

  @override
  Future<UserCredential> reauthenticateWithPopup(
    AuthProvider provider,
  ) =>
      throw Exception("not implemented");

  @override
  Future<void> reauthenticateWithRedirect(
    AuthProvider provider,
  ) =>
      throw Exception("not implemented");

  @override
  Future<UserCredential> linkWithPopup(AuthProvider provider) =>
      throw Exception("not implemented");

  @override
  Future<void> linkWithRedirect(AuthProvider provider) =>
      throw Exception("not implemented");

  @override
  Future<ConfirmationResult> linkWithPhoneNumber(
    String phoneNumber, [
    RecaptchaVerifier? verifier,
  ]) =>
      throw Exception("not implemented");

  @override
  Future<UserCredential> reauthenticateWithCredential(
    AuthCredential credential,
  ) =>
      throw Exception("not implemented");

  @override
  Future<void> reload() => throw Exception("not implemented");

  @override
  Future<void> sendEmailVerification([
    ActionCodeSettings? actionCodeSettings,
  ]) =>
      throw Exception("not implemented");

  @override
  Future<User> unlink(String providerId) => throw Exception("not implemented");

  @override
  Future<void> updateEmail(String newEmail) =>
      throw Exception("not implemented");

  @override
  Future<void> updatePassword(String newPassword) =>
      throw Exception("not implemented");

  @override
  Future<void> updatePhoneNumber(PhoneAuthCredential phoneCredential) =>
      throw Exception("not implemented");

  @override
  Future<void> updateDisplayName(String? displayName) =>
      throw Exception("not implemented");

  @override
  Future<void> updatePhotoURL(String? photoURL) =>
      throw Exception("not implemented");

  @override
  Future<void> updateProfile({String? displayName, String? photoURL}) =>
      throw Exception("not implemented");

  @override
  Future<void> verifyBeforeUpdateEmail(
    String newEmail, [
    ActionCodeSettings? actionCodeSettings,
  ]) =>
      throw Exception("not implemented");

  @override
  MultiFactor get multiFactor => throw Exception("not implemented");
}

class UserCredentialStubBase implements UserCredential {
  @override
  User? get user => throw Exception("not implemented");

  @override
  AdditionalUserInfo? get additionalUserInfo =>
      throw Exception("not implemented");

  @override
  AuthCredential? get credential => throw Exception("not implemented");
}
