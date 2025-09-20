part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loadPage() = LoadPage;
  const factory AuthEvent.getUserData() = GetUserData;
  const factory AuthEvent.reload() = Reload;
}
