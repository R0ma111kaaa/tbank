import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tbank/app.dart';
import 'package:tbank/di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDI();
  await dotenv.load(fileName: '.env');

  runApp(App());
}
