import 'package:yuno/data/repository/base/reactive_repository.dart';
import 'package:yuno/data/repository/refresh_token_provider.dart';

class RefreshTokenRepository extends ReactiveRepository<String> {
  RefreshTokenRepository(this._refreshTokenProvider);

  final RefreshTokenProvider _refreshTokenProvider;

  @override
  String convertFromString(String rawItem) => rawItem;

  @override
  String convertToString(String item) => item;

  @override
  Future<String?> getRawData() => _refreshTokenProvider.getRefreshToken();

  @override
  Future<bool> saveRawData(String? item) => _refreshTokenProvider.setRefreshToken(item);
}
