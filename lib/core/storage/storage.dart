import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final _secureStorage = const FlutterSecureStorage();

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  IOSOptions _getIosOptions() =>
      const IOSOptions(accessibility: KeychainAccessibility.unlocked);

  Future<void> writeAccessToken(String token) async {
    await _secureStorage.write(
      key: 'accessToken',
      value: token,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<void> writeId(String token) async {
    await _secureStorage.write(
        key: 'id', value: token, aOptions: _getAndroidOptions());
  }

  Future<String?> readId() async {
    var readData =
        await _secureStorage.read(key: 'id', aOptions: _getAndroidOptions());
    return readData;
  }
  Future<void> writeRefreshToken(String token) async {
    await _secureStorage.write(
      key: 'refreshToken',
      value: token,
      aOptions: _getAndroidOptions(),
    );
  }


  Future<void> writeFirstOpen(String value) async {
    await _secureStorage.write(
      key: 'firstOpen',
      value: value,
    );
  }

  Future<String?> readFirstOpen() async {
    var readData = await _secureStorage.read(
      key: 'firstOpen',
    );
    return readData ?? "True";
  }

  Future<void> writeServerAuth(String value) async {
    await _secureStorage.write(
        key: 'serverAuth', value: value, aOptions: _getAndroidOptions());
  }

  Future<void> writeAppleAuthorizationCode(String token) async {
    await _secureStorage.write(
        key: 'appleAuthorizationCode',
        value: token,
        aOptions: _getAndroidOptions());
  }

  Future<String?> readAppleAuthorizationCode() async {
    var readData = await _secureStorage.read(
        key: 'appleAuthorizationCode', aOptions: _getAndroidOptions());
    return readData;
  }

  Future<void> logoutUser() async {
    await _secureStorage.deleteAll(
      aOptions: _getAndroidOptions(),
    );
  }


  Future<void> setThemeValue(String value) async {
    await _secureStorage.write(
      key: 'theme',
      value: value,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<String?> getThemeValue() async {
    var themeValue = await _secureStorage.read(
      key: 'theme',
      aOptions: _getAndroidOptions(),
    );
    return themeValue;
  }

  Future<void> writeNotificationRegisterId({
    required String registrationId,
  }) async {
    await _secureStorage.write(key: 'registrationId', value: registrationId);
  }

  Future<String?> readNotificationRegisterId() async {
    var registerId = await _secureStorage.read(
        key: 'registrationId', aOptions: _getAndroidOptions());
    return registerId;
  }

  Future<void> deleteAllKey() async {
    _secureStorage.deleteAll(
      aOptions: _getAndroidOptions(),
      iOptions: _getIosOptions(),
    );
  }

  Future<void> setFCMToken(String value) async {
    await _secureStorage.write(
      key: 'fcmToken',
      value: value,
      aOptions: _getAndroidOptions(),
    );
  }

  Future<String?> getFCMToken() async {
    return await _secureStorage.read(
      key: 'fcmToken',
      aOptions: _getAndroidOptions(),
    );
  }

  Future<bool> readBioMetric() async {
    var isEnabled = await _secureStorage.read(key: 'bio-metric');
    return isEnabled != null ? bool.parse(isEnabled) : false;
  }
}
