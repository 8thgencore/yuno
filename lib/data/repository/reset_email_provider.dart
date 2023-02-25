abstract class ResetEmailProvider {
  Future<bool> setResetEmail(final String? resetEmail);

  Future<String?> getResetEmail();
}
