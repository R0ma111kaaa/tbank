import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tbank/src/features/auth/domain/entities/user/user_entity.dart';
import 'package:tbank/src/features/auth/domain/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository;

  AuthBloc({required this.repository}) : super(const AuthInitial()) {
    on<LoadPage>(_loadPage);
    on<GetUserData>(_getUserData);
    on<Reload>(_reload);
  }

  Future<void> _getUserData(GetUserData event, Emitter<AuthState> emit) async {
    final response = await repository.getUserData();
    emit(AuthState.authorized(user: response));
  }

  Future<void> _loadPage(LoadPage event, Emitter<AuthState> emit) async {
    emit(const AuthState.pageLoaded());
  }

  Future<void> _reload(Reload event, Emitter<AuthState> emit) async {
    emit(const AuthState.initial());
  }
}
