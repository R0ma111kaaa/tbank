import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:tbank/di/di.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/common/utils/dotenv_util.dart';
import 'package:tbank/src/common/utils/save_tokens.dart';
import 'package:tbank/src/config/constants/constants.dart';
import 'package:tbank/src/config/router/router.dart';
import 'package:tbank/src/features/auth/presentation/bloc/auth_bloc.dart';

@RoutePage()
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: const AuthView(),
    );
  }
}

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  InAppWebViewController? _webViewController;

  @override
  Widget build(BuildContext context) {
    final router = context.router;
    final bloc = getIt<AuthBloc>();
    final uri = Uri.parse(
      Env.get(EnvConstants.baseUrl),
    ).replace(path: YandexUrls.authUrl).toString();

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, blocState) {
            return Stack(
              children: [
                RefreshIndicator(
                  color: context.colorExt.primaryColor,
                  onRefresh: () async {
                    await _webViewController?.reload();
                  },
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: context.mq.size.height,
                      child: InAppWebView(
                        initialUrlRequest: URLRequest(
                          url: WebUri(uri),
                          timeoutInterval: NetworkConstants.baseTimeout,
                        ),
                        onWebViewCreated: (controller) {
                          _webViewController = controller;
                        },
                        onLoadStop: (controller, url) async {
                          final urlString = url?.toString();
                          if (urlString == null) {
                            return;
                          }
                          bloc.add(const AuthEvent.loadPage());
                          try {
                            final content = await controller.evaluateJavascript(
                              source: 'document.body.innerText',
                            );
                            final jsonBody =
                                json.decode(content.toString())
                                    as Map<String, dynamic>;

                            final accessToken =
                                jsonBody[YandexKeys.accessToken] as String;
                            final refreshToken =
                                jsonBody[YandexKeys.refreshToken] as String;

                            await saveTokens(accessToken, refreshToken);
                            bloc.add(const AuthEvent.getUserData());
                            await router.replace(const EventListRoute());
                          } catch (e) {
                            rethrow;
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
