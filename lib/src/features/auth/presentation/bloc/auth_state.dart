part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.pageLoaded() = AuthPageLoaded;
  const factory AuthState.authorized({required UserEntity user}) = Authorized;
}
