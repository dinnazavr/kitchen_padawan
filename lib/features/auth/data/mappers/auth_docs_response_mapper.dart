import 'package:kitchen_padawan/features/auth/data/DTOs/auth_docs_response_dto.dart';
import 'package:kitchen_padawan/features/auth/domain/entities/auth_docs_response_entity.dart';

abstract class AuthDocsResponseMapper {
  static AuthDocsResponseEntity toEntity({required AuthDocsResponseDto dto}) {
    return AuthDocsResponseEntity(
      id: dto.id,
      username: dto.username,
      email: dto.email,
    );
  }
}

abstract class AuthDocsResponseEntityMapper {
  static AuthDocsResponseDto toDto({required AuthDocsResponseEntity entity}) {
    return AuthDocsResponseDto(
      id: entity.id,
      username: entity.username,
      email: entity.email,
    );
  }
}