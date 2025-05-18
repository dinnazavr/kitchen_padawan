// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_docs_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthDocsResponseDto _$AuthDocsResponseDtoFromJson(Map<String, dynamic> json) =>
    _AuthDocsResponseDto(
      id: json['id'] as String,
      username: json['username'] as String?,
      email: json['email'] as String,
    );

Map<String, dynamic> _$AuthDocsResponseDtoToJson(
  _AuthDocsResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'email': instance.email,
};
