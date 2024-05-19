import 'package:firebase_auth/firebase_auth.dart';

class FirebaseUserStub implements User {
  FirebaseUserStub({this.getIdTokenStub});

  final String Function()? getIdTokenStub;

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
  String get uid => "dummy uid";

  @override
  Future<void> delete() async => throw Exception("not implemented");

  @override
  Future<String?> getIdToken([bool forceRefresh = false]) async =>
      getIdTokenStub != null ? getIdTokenStub!() : "dummy token";

  @override
  Future<IdTokenResult> getIdTokenResult([bool forceRefresh = false]) =>
      throw Exception("not implemented");

  @override
  Future<UserCredential> linkWithCredential(AuthCredential credential) async =>
      throw Exception("not implemented");

  @override
  Future<UserCredential> linkWithProvider(
    AuthProvider provider,
  ) async =>
      throw Exception("not implemented");

  @override
  Future<UserCredential> reauthenticateWithProvider(
    AuthProvider provider,
  ) async =>
      throw Exception("not implemented");

  @override
  Future<UserCredential> reauthenticateWithPopup(
    AuthProvider provider,
  ) async =>
      throw Exception("not implemented");

  @override
  Future<void> reauthenticateWithRedirect(
    AuthProvider provider,
  ) async =>
      throw Exception("not implemented");

  @override
  Future<UserCredential> linkWithPopup(AuthProvider provider) async =>
      throw Exception("not implemented");

  @override
  Future<void> linkWithRedirect(AuthProvider provider) async =>
      throw Exception("not implemented");

  @override
  Future<ConfirmationResult> linkWithPhoneNumber(
    String phoneNumber, [
    RecaptchaVerifier? verifier,
  ]) async =>
      throw Exception("not implemented");

  @override
  Future<UserCredential> reauthenticateWithCredential(
    AuthCredential credential,
  ) async =>
      throw Exception("not implemented");

  @override
  Future<void> reload() async => throw Exception("not implemented");

  @override
  Future<void> sendEmailVerification([
    ActionCodeSettings? actionCodeSettings,
  ]) async =>
      throw Exception("not implemented");

  @override
  Future<User> unlink(String providerId) async =>
      throw Exception("not implemented");

  @override
  Future<void> updateEmail(String newEmail) async =>
      throw Exception("not implemented");

  @override
  Future<void> updatePassword(String newPassword) async =>
      throw Exception("not implemented");

  @override
  Future<void> updatePhoneNumber(PhoneAuthCredential phoneCredential) async =>
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
  ]) async =>
      throw Exception("not implemented");

  @override
  MultiFactor get multiFactor => throw Exception("not implemented");
}
