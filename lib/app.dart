import 'package:flutter/material.dart';
import 'package:tbank/l10n/app_localization.dart';
import 'package:tbank/l10n/l10n.dart';
import 'package:tbank/src/config/router/router.dart';
import 'package:tbank/src/config/styles/themes.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppThemes.light,
      supportedLocales: L10n.all,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
    );
  }
}
