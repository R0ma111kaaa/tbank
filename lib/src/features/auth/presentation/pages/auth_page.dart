import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:tbank/src/common/utils/dotenv_util.dart';
import 'package:tbank/src/common/utils/save_tokens.dart';
import 'package:tbank/src/config/constants/constants.dart';
import 'package:tbank/src/config/router/router.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    final uri = Uri.parse(
      Env.get(EnvConstants.baseUrl),
    ).replace(path: YandexUrls.authUrl).toString();
    return Scaffold(
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: WebUri(uri),
            timeoutInterval: NetworkConstants.baseTimeout,
          ),
          onLoadStop: (controller, url) async {
            final urlString = url?.toString();
            if (urlString == null) {
              return;
            }

            try {
              final content = await controller.evaluateJavascript(
                source: 'document.body.innerText',
              );
              final jsonBody =
                  json.decode(content.toString()) as Map<String, dynamic>;

              final accessToken = jsonBody[YandexKeys.accessToken] as String;
              final refreshToken = jsonBody[YandexKeys.refreshToken] as String;

              await saveTokens(accessToken, refreshToken);
              await context.router.replace(const EventListRoute());
            } catch (e) {
              rethrow;
            }
          },
        ),
      ),
    );
  }
}
