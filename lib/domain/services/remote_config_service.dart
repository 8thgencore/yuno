import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:yuno/app/logger.dart';
import 'package:yuno/resources/environment.dart';

class RemoteConfigService {
  factory RemoteConfigService() => _instance;

  RemoteConfigService._();

  static final _instance = RemoteConfigService._();
  FirebaseRemoteConfig? _remoteConfig;

  Future<void> initConfig() async {
    _remoteConfig ??= FirebaseRemoteConfig.instance;
  }

  Map<String, dynamic> _createDefaults() {
    return {
      'BACKEND_URL': Environment.baseUrl,
    };
  }

  Future<bool> fetch({
    Duration duration = const Duration(minutes: 30),
  }) async {
    try {
      await _remoteConfig!.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(minutes: 1),
          minimumFetchInterval: duration,
        ),
      );
      await _remoteConfig!.setDefaults(_createDefaults());
      await _remoteConfig!.fetchAndActivate();
      return true;
    } on Exception catch (e) {
      if (e.toString().contains(
            'Reason is unknown but this could be due to lack of connectivity',
          )) {
        await l.error(
          "Can't fetch: Reason is unknown but this could be due to lack of connectivity",
        );
      } else if (e.toString().contains('The request timed out')) {
        await l.error("Can't fetch: The request timed out");
      } else {
        await l.error("Can't fetch remote config $e");
      }
      // alternative fetch status
      //       if (_remoteConfig!.lastFetchStatus ==
      //           RemoteConfigFetchStatus.noFetchYet) {}
      return false;
    }
  }

  String getString(String key) {
    return _remoteConfig!.getString(key);
  }

  int getInt(String key) {
    return _remoteConfig!.getInt(key);
  }

  bool getBool(String key) {
    return _remoteConfig!.getBool(key);
  }

  double getDouble(String key) {
    return _remoteConfig!.getDouble(key);
  }
}
