import 'package:yuno/data/repository/base/reactive_repository.dart';
import 'package:yuno/data/repository/reset_token_provider.dart';

class ResetTokenDataRepository extends ReactiveRepository<String> {
  ResetTokenDataRepository(this._resetTokenProvider);

  final ResetTokenProvider _resetTokenProvider;

  @override
  String convertFromString(String rawItem) => rawItem;

  @override
  String convertToString(String item) => item;

  @override
  Future<String?> getRawData() => _resetTokenProvider.getResetToken();

  @override
  Future<bool> saveRawData(String? item) => _resetTokenProvider.setResetToken(item);
}
