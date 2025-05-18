import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kitchen_padawan/features/auth/domain/entities/auth_docs_response_entity.dart';
import 'package:kitchen_padawan/features/auth/domain/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(const _Initial()) {
    on<AuthEvent>(
      (event, emit) => switch (event) {
        _SignInWithEmail(:final email, :final password) => _signInWithEmail(
          emit: emit,
          email: email,
          password: password,
        ),
        _SignUpWithEmail(:final email, :final password, :final username) =>
          _signUpWithEmail(
            emit: emit,
            email: email,
            password: password,
            username: username,
          ),
        _SignOut() => _signOut(emit: emit),
      },
    );
  }

  Future<void> _signInWithEmail({
    required Emitter<AuthState> emit,
    required String email,
    required String password,
  }) async {
    emit(const AuthState.loading());
    try {
      final user = await _authRepository.signInWithEmail(
        email: email,
        password: password,
      );
      emit(AuthState.success(user: user));
    } catch (e) {
      emit(AuthState.fail(message: e.toString()));
    }
  }

  Future<void> _signUpWithEmail({
    required Emitter<AuthState> emit,
    required String email,
    required String password,
    required String username,
  }) async {
    emit(const AuthState.loading());
    try {
      final user = await _authRepository.signUpWithEmail(
        email: email,
        password: password,
        username: username,
      );
      emit(AuthState.success(user: user));
    } catch (e) {
      emit(AuthState.fail(message: e.toString()));
    }
  }

  Future<void> _signOut({required Emitter<AuthState> emit}) async {
    emit(const AuthState.loading());
    try {
      await _authRepository.signOut();
      emit(AuthState.initial());
    } catch (e) {
      emit(AuthState.fail(message: e.toString()));
    }
  }
}
