// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_docs_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthDocsResponseDto {

 String get id; String? get username; String get email;
/// Create a copy of AuthDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthDocsResponseDtoCopyWith<AuthDocsResponseDto> get copyWith => _$AuthDocsResponseDtoCopyWithImpl<AuthDocsResponseDto>(this as AuthDocsResponseDto, _$identity);

  /// Serializes this AuthDocsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthDocsResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email);

@override
String toString() {
  return 'AuthDocsResponseDto(id: $id, username: $username, email: $email)';
}


}

/// @nodoc
abstract mixin class $AuthDocsResponseDtoCopyWith<$Res>  {
  factory $AuthDocsResponseDtoCopyWith(AuthDocsResponseDto value, $Res Function(AuthDocsResponseDto) _then) = _$AuthDocsResponseDtoCopyWithImpl;
@useResult
$Res call({
 String id, String? username, String email
});




}
/// @nodoc
class _$AuthDocsResponseDtoCopyWithImpl<$Res>
    implements $AuthDocsResponseDtoCopyWith<$Res> {
  _$AuthDocsResponseDtoCopyWithImpl(this._self, this._then);

  final AuthDocsResponseDto _self;
  final $Res Function(AuthDocsResponseDto) _then;

/// Create a copy of AuthDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = freezed,Object? email = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AuthDocsResponseDto implements AuthDocsResponseDto {
  const _AuthDocsResponseDto({required this.id, required this.username, required this.email});
  factory _AuthDocsResponseDto.fromJson(Map<String, dynamic> json) => _$AuthDocsResponseDtoFromJson(json);

@override final  String id;
@override final  String? username;
@override final  String email;

/// Create a copy of AuthDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthDocsResponseDtoCopyWith<_AuthDocsResponseDto> get copyWith => __$AuthDocsResponseDtoCopyWithImpl<_AuthDocsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthDocsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthDocsResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email);

@override
String toString() {
  return 'AuthDocsResponseDto(id: $id, username: $username, email: $email)';
}


}

/// @nodoc
abstract mixin class _$AuthDocsResponseDtoCopyWith<$Res> implements $AuthDocsResponseDtoCopyWith<$Res> {
  factory _$AuthDocsResponseDtoCopyWith(_AuthDocsResponseDto value, $Res Function(_AuthDocsResponseDto) _then) = __$AuthDocsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String? username, String email
});




}
/// @nodoc
class __$AuthDocsResponseDtoCopyWithImpl<$Res>
    implements _$AuthDocsResponseDtoCopyWith<$Res> {
  __$AuthDocsResponseDtoCopyWithImpl(this._self, this._then);

  final _AuthDocsResponseDto _self;
  final $Res Function(_AuthDocsResponseDto) _then;

/// Create a copy of AuthDocsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = freezed,Object? email = null,}) {
  return _then(_AuthDocsResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
