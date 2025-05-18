part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInWithEmail({
    required String email,
    required String password,
  }) = _SignInWithEmail;

  const factory AuthEvent.signUpWithEmail({
    required String email,
    required String password,
    required String username,
  }) = _SignUpWithEmail;

  const factory AuthEvent.signOut() = _SignOut;
}