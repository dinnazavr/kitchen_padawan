import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_docs_response_dto.freezed.dart';
part 'auth_docs_response_dto.g.dart';

@freezed
sealed class AuthDocsResponseDto with _$AuthDocsResponseDto {
  const factory AuthDocsResponseDto({
    required String id,
    required String? username,
    required String email,
  }) = _AuthDocsResponseDto;

  factory AuthDocsResponseDto.fromJson(Map<String, Object> json) =>
      _$AuthDocsResponseDtoFromJson(json);
}