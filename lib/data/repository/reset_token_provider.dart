abstract class ResetTokenProvider {
  Future<bool> setResetToken(final String? resetToken);

  Future<String?> getResetToken();
}
