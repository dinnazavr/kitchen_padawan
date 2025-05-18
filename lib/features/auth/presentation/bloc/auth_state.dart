part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = Loading;
  const factory AuthState.success({required AuthDocsResponseEntity user,}) = Success;
  const factory AuthState.fail({required String message}) = Fail;
}
