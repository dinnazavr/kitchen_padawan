import 'package:kitchen_padawan/features/auth/domain/entities/auth_docs_response_entity.dart';

abstract interface class AuthRepository {
  Future<AuthDocsResponseEntity> signUpWithEmail({
    required String email,
    required String password,
    required String username,
  });

  Future<AuthDocsResponseEntity> signInWithEmail({
    required String email,
    required String password,
  });

  Future<void> signOut();
}