import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tbank/di/di.dart';
import 'package:tbank/src/features/auth/domain/entities/user/user_entity.dart';
import 'package:tbank/src/features/auth/domain/repositories/auth_repository.dart';

@RoutePage()
class EventListPage extends StatelessWidget {
  const EventListPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const EventListView();
  }
}

class EventListView extends StatelessWidget {
  const EventListView({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = getIt<AuthRepository>(); // создаём репозиторий

    return Scaffold(
      appBar: AppBar(title: const Text('Events')),
      body: FutureBuilder<UserEntity>(
        future: repository.getUserData(), // запрос к репозиторию
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Ошибка: ${snapshot.error}'));
          }

          final events = snapshot.data ?? [];

          return Center(
            child: Text(
              '${snapshot.data?.id} ${snapshot.data?.yandexId} ${snapshot.data?.yandexJson.toString()}',
            ),
          );
        },
      ),
    );
  }
}
