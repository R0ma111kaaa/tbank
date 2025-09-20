import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localization_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('ru')];

  /// The name of event list page
  ///
  /// In ru, this message translates to:
  /// **'Список событий'**
  String get event_list;

  /// The add event button text
  ///
  /// In ru, this message translates to:
  /// **'Добавить событие'**
  String get add_event_button_text;

  /// Loading auth page hint
  ///
  /// In ru, this message translates to:
  /// **'Загружаем страницу авторизации'**
  String get auth_page_loading;

  /// upcoming events
  ///
  /// In ru, this message translates to:
  /// **'Предстоящие'**
  String get upcoming_events;

  /// current events
  ///
  /// In ru, this message translates to:
  /// **'Текущие'**
  String get current_events;

  /// past events
  ///
  /// In ru, this message translates to:
  /// **'Прошедшие'**
  String get past_events;

  /// participants1
  ///
  /// In ru, this message translates to:
  /// **'участник'**
  String get participants1;

  /// participants2
  ///
  /// In ru, this message translates to:
  /// **'участника'**
  String get participants2;

  /// participants5
  ///
  /// In ru, this message translates to:
  /// **'участников'**
  String get participants5;

  /// add event page title text
  ///
  /// In ru, this message translates to:
  /// **'Добавление события'**
  String get add_event_title;

  /// enter event title text
  ///
  /// In ru, this message translates to:
  /// **'Название'**
  String get event_title;

  /// enter event participants text
  ///
  /// In ru, this message translates to:
  /// **'Участники'**
  String get participants_title;

  /// enter event dates text
  ///
  /// In ru, this message translates to:
  /// **'Даты'**
  String get dates_title;

  /// enter event budget for categories text
  ///
  /// In ru, this message translates to:
  /// **'Бюджет по категориям'**
  String get budget_title;

  /// save button text
  ///
  /// In ru, this message translates to:
  /// **'Сохранить'**
  String get save;

  /// budget title
  ///
  /// In ru, this message translates to:
  /// **'Бюджет (₽)'**
  String get budget_title_text;

  /// No description provided for @category_title_text.
  ///
  /// In ru, this message translates to:
  /// **'Название категории'**
  String get category_title_text;

  /// cancel button text
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get cancel;

  /// add category button title
  ///
  /// In ru, this message translates to:
  /// **'Добавить категорию'**
  String get add_category_button_title;

  /// from text
  ///
  /// In ru, this message translates to:
  /// **'С'**
  String get from;

  /// to text
  ///
  /// In ru, this message translates to:
  /// **'По'**
  String get to;

  /// event
  ///
  /// In ru, this message translates to:
  /// **'Событие'**
  String get event;

  /// load your events title
  ///
  /// In ru, this message translates to:
  /// **'Грузим ваши события'**
  String get load_event_list_title;

  /// add category button title
  ///
  /// In ru, this message translates to:
  /// **'{expense}₽'**
  String rubles(Object expense);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
