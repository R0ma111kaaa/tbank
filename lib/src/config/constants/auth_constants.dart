abstract class YandexUrls {
  const YandexUrls._();

  static const String refreshUrl = '/auth/refresh';
  static const String calbackUrl = 'auth/yandex/callback';
  static const String authUrl = 'auth/yandex/login';
}

abstract class YandexKeys {
  const YandexKeys._();

  // JSON-поля, которые приходят от Telegram
  static const String id = 'id';
  static const String firstName = 'first_name';
  static const String lastName = 'last_name';
  static const String username = 'username';
  static const String photoUrl = 'photo_url';
  static const String authDate = 'auth_date';
  static const String hash = 'hash';

  // Ключи для secure storage
  static const String accessToken = 'access_token';
  static const String refreshToken = 'refresh_token';
}
