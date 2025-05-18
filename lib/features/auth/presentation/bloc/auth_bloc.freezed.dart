// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// @nodoc


class _SignInWithEmail implements AuthEvent {
  const _SignInWithEmail({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInWithEmailCopyWith<_SignInWithEmail> get copyWith => __$SignInWithEmailCopyWithImpl<_SignInWithEmail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInWithEmail&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signInWithEmail(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SignInWithEmailCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$SignInWithEmailCopyWith(_SignInWithEmail value, $Res Function(_SignInWithEmail) _then) = __$SignInWithEmailCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$SignInWithEmailCopyWithImpl<$Res>
    implements _$SignInWithEmailCopyWith<$Res> {
  __$SignInWithEmailCopyWithImpl(this._self, this._then);

  final _SignInWithEmail _self;
  final $Res Function(_SignInWithEmail) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_SignInWithEmail(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SignUpWithEmail implements AuthEvent {
  const _SignUpWithEmail({required this.email, required this.password, required this.username});
  

 final  String email;
 final  String password;
 final  String username;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpWithEmailCopyWith<_SignUpWithEmail> get copyWith => __$SignUpWithEmailCopyWithImpl<_SignUpWithEmail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpWithEmail&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.username, username) || other.username == username));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,username);

@override
String toString() {
  return 'AuthEvent.signUpWithEmail(email: $email, password: $password, username: $username)';
}


}

/// @nodoc
abstract mixin class _$SignUpWithEmailCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$SignUpWithEmailCopyWith(_SignUpWithEmail value, $Res Function(_SignUpWithEmail) _then) = __$SignUpWithEmailCopyWithImpl;
@useResult
$Res call({
 String email, String password, String username
});




}
/// @nodoc
class __$SignUpWithEmailCopyWithImpl<$Res>
    implements _$SignUpWithEmailCopyWith<$Res> {
  __$SignUpWithEmailCopyWithImpl(this._self, this._then);

  final _SignUpWithEmail _self;
  final $Res Function(_SignUpWithEmail) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? username = null,}) {
  return _then(_SignUpWithEmail(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SignOut implements AuthEvent {
  const _SignOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signOut()';
}


}




/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// @nodoc


class _Initial implements AuthState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class Loading implements AuthState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class Success implements AuthState {
  const Success({required this.user});
  

 final  AuthDocsResponseEntity user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<Success> get copyWith => _$SuccessCopyWithImpl<Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.success(user: $user)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 AuthDocsResponseEntity user
});


$AuthDocsResponseEntityCopyWith<$Res> get user;

}
/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success _self;
  final $Res Function(Success) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(Success(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AuthDocsResponseEntity,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthDocsResponseEntityCopyWith<$Res> get user {
  
  return $AuthDocsResponseEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class Fail implements AuthState {
  const Fail({required this.message});
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailCopyWith<Fail> get copyWith => _$FailCopyWithImpl<Fail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Fail&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.fail(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $FailCopyWith(Fail value, $Res Function(Fail) _then) = _$FailCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailCopyWithImpl<$Res>
    implements $FailCopyWith<$Res> {
  _$FailCopyWithImpl(this._self, this._then);

  final Fail _self;
  final $Res Function(Fail) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Fail(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
