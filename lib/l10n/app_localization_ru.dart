// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get event_list => 'Список событий';

  @override
  String get add_event_button_text => 'Добавить событие';

  @override
  String get auth_page_loading => 'Загружаем страницу авторизации';

  @override
  String get current_events => 'Текущие';

  @override
  String get past_events => 'Прошедшие';

  @override
  String get participants1 => 'участник';

  @override
  String get participants2 => 'участника';

  @override
  String get participants5 => 'участников';
}
