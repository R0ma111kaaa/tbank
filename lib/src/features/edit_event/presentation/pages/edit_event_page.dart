import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EditEventPage extends StatelessWidget {
  const EditEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EditEventView();
  }
}

class EditEventView extends StatelessWidget {
  const EditEventView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Edit event'));
  }
}
