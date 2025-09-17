import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/config/styles/dimensions.dart';

@RoutePage()
class EditEventPage extends StatelessWidget {
  const EditEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const EditEventView();
  }
}

class EditEventView extends StatelessWidget {
  const EditEventView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.router.pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: context.colorExt.primaryBackgroundColor,
          ),
        ),
        title: Text('добавление события'),
      ),
      body: const SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.defaultPadding),
          child: Column(children: [
              
            ],
          ),
        ),
      ),
    );
  }
}
