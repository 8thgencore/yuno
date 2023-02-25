import 'package:yuno/data/repository/base/reactive_repository.dart';
import 'package:yuno/data/repository/reset_email_provider.dart';

class ResetEmailDataRepository extends ReactiveRepository<String> {
  ResetEmailDataRepository(this._resetEmailProvider);

  final ResetEmailProvider _resetEmailProvider;

  @override
  String convertFromString(String rawItem) => rawItem;

  @override
  String convertToString(String item) => item;

  @override
  Future<String?> getRawData() => _resetEmailProvider.getResetEmail();

  @override
  Future<bool> saveRawData(String? item) => _resetEmailProvider.setResetEmail(item);
}
