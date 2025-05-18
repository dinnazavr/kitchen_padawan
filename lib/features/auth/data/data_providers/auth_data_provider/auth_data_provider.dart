import 'package:kitchen_padawan/features/auth/data/DTOs/auth_docs_response_dto.dart';

abstract interface class AuthDataProvider {
  Future<AuthDocsResponseDto> signUpWithEmail({
    required String email,
    required String password,
    required String username,
  });

  Future<AuthDocsResponseDto> signInWithEmail({
    required String email,
    required String password,
  });

  Future<void> signOut();
}