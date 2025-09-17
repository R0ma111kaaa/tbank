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
  String get upcoming_events => 'Предстоящие';

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

  @override
  String get add_event_title => 'Добавление события';

  @override
  String get event_title => 'Название';

  @override
  String get participants_title => 'Участники';

  @override
  String get dates_title => 'Даты';

  @override
  String get budget_title => 'Бюджет по категориям';

  @override
  String get save => 'Сохранить';

  @override
  String get budget_title_text => 'Бюджет (₽)';

  @override
  String get category_title_text => 'Название категории';

  @override
  String get cancel => 'Отмена';

  @override
  String get add_category_button_title => 'Добавить категорию';

  @override
  String get from => 'С';

  @override
  String get to => 'По';

  @override
  String get event => 'Событие';

  @override
  String rubles(Object expense) {
    return '$expense₽';
  }
}
