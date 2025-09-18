import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tbank/app.dart';
import 'package:tbank/di/di.dart';
import 'package:tbank/src/config/styles/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.whiteTBank, // цвет нижнего бара
      systemNavigationBarIconBrightness: Brightness.dark, // цвет иконок
      statusBarColor: AppColors.blackTBank, // верхний бар (опционально)
      statusBarIconBrightness: Brightness.light, // цвет иконок верхнего бара
    ),
  );

  await initDI();
  await dotenv.load(fileName: '.env');

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(App());
}
