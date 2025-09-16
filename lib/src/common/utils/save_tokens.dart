import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tbank/di/di.dart';
import 'package:tbank/src/config/constants/constants.dart';

Future<void> saveTokens(String? accessToken, String? refreshToken) async {
  final flutterSecureStorage = getIt<FlutterSecureStorage>();
  await flutterSecureStorage.write(
    key: YandexKeys.accessToken,
    value: accessToken,
  );
  await flutterSecureStorage.write(
    key: YandexKeys.refreshToken,
    value: refreshToken,
  );
}
