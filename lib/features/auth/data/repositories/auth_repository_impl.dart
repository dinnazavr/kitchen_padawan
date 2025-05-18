import 'package:kitchen_padawan/features/auth/data/data_providers/auth_data_provider/auth_data_provider.dart';
import 'package:kitchen_padawan/features/auth/data/mappers/auth_docs_response_mapper.dart';
import 'package:kitchen_padawan/features/auth/domain/entities/auth_docs_response_entity.dart';
import 'package:kitchen_padawan/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataProvider _authDataProvider;

  AuthRepositoryImpl({required AuthDataProvider authDataProvider})
    : _authDataProvider = authDataProvider;

  @override
  Future<AuthDocsResponseEntity> signInWithEmail({
    required String email,
    required String password,
  }) async {
    final authDto = await _authDataProvider.signInWithEmail(
      email: email,
      password: password,
    );
    final authEntity = AuthDocsResponseMapper.toEntity(dto: authDto);
    return authEntity;
  }

  @override
  Future<AuthDocsResponseEntity> signUpWithEmail({
    required String email,
    required String password,
    required String username,
  }) async {
    final authDto = await _authDataProvider.signUpWithEmail(
      email: email,
      password: password,
      username: username,
    );
    final authEntity = AuthDocsResponseMapper.toEntity(dto: authDto);
    return authEntity;
  }

  @override
  Future<void> signOut() async {
    await _authDataProvider.signOut();
  }
}
