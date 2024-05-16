// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupabaseProfile _$SupabaseProfileFromJson(Map<String, dynamic> json) {
  return _SupabaseProfile.fromJson(json);
}

/// @nodoc
mixin _$SupabaseProfile {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar_url")
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupabaseProfileCopyWith<SupabaseProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseProfileCopyWith<$Res> {
  factory $SupabaseProfileCopyWith(
          SupabaseProfile value, $Res Function(SupabaseProfile) then) =
      _$SupabaseProfileCopyWithImpl<$Res, SupabaseProfile>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "avatar_url") String? avatarUrl,
      String? status,
      @JsonKey(name: "user_id") String userId,
      String username});
}

/// @nodoc
class _$SupabaseProfileCopyWithImpl<$Res, $Val extends SupabaseProfile>
    implements $SupabaseProfileCopyWith<$Res> {
  _$SupabaseProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? avatarUrl = freezed,
    Object? status = freezed,
    Object? userId = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupabaseProfileImplCopyWith<$Res>
    implements $SupabaseProfileCopyWith<$Res> {
  factory _$$SupabaseProfileImplCopyWith(_$SupabaseProfileImpl value,
          $Res Function(_$SupabaseProfileImpl) then) =
      __$$SupabaseProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "avatar_url") String? avatarUrl,
      String? status,
      @JsonKey(name: "user_id") String userId,
      String username});
}

/// @nodoc
class __$$SupabaseProfileImplCopyWithImpl<$Res>
    extends _$SupabaseProfileCopyWithImpl<$Res, _$SupabaseProfileImpl>
    implements _$$SupabaseProfileImplCopyWith<$Res> {
  __$$SupabaseProfileImplCopyWithImpl(
      _$SupabaseProfileImpl _value, $Res Function(_$SupabaseProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? avatarUrl = freezed,
    Object? status = freezed,
    Object? userId = null,
    Object? username = null,
  }) {
    return _then(_$SupabaseProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupabaseProfileImpl implements _SupabaseProfile {
  _$SupabaseProfileImpl(
      {required this.id,
      @JsonKey(name: "first_name") required this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "avatar_url") this.avatarUrl,
      this.status,
      @JsonKey(name: "user_id") required this.userId,
      required this.username});

  factory _$SupabaseProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupabaseProfileImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "first_name")
  final String firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "avatar_url")
  final String? avatarUrl;
  @override
  final String? status;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  final String username;

  @override
  String toString() {
    return 'SupabaseProfile(id: $id, firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, status: $status, userId: $userId, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupabaseProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName,
      avatarUrl, status, userId, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupabaseProfileImplCopyWith<_$SupabaseProfileImpl> get copyWith =>
      __$$SupabaseProfileImplCopyWithImpl<_$SupabaseProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupabaseProfileImplToJson(
      this,
    );
  }
}

abstract class _SupabaseProfile implements SupabaseProfile {
  factory _SupabaseProfile(
      {required final String id,
      @JsonKey(name: "first_name") required final String firstName,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "avatar_url") final String? avatarUrl,
      final String? status,
      @JsonKey(name: "user_id") required final String userId,
      required final String username}) = _$SupabaseProfileImpl;

  factory _SupabaseProfile.fromJson(Map<String, dynamic> json) =
      _$SupabaseProfileImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "first_name")
  String get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "avatar_url")
  String? get avatarUrl;
  @override
  String? get status;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$SupabaseProfileImplCopyWith<_$SupabaseProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SupabaseProfileInsert _$SupabaseProfileInsertFromJson(
    Map<String, dynamic> json) {
  return _SupabaseProfileInsert.fromJson(json);
}

/// @nodoc
mixin _$SupabaseProfileInsert {
  @JsonKey(name: "first_name")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar_url")
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupabaseProfileInsertCopyWith<SupabaseProfileInsert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseProfileInsertCopyWith<$Res> {
  factory $SupabaseProfileInsertCopyWith(SupabaseProfileInsert value,
          $Res Function(SupabaseProfileInsert) then) =
      _$SupabaseProfileInsertCopyWithImpl<$Res, SupabaseProfileInsert>;
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "avatar_url") String? avatarUrl,
      String? status,
      @JsonKey(name: "user_id") String userId,
      String username});
}

/// @nodoc
class _$SupabaseProfileInsertCopyWithImpl<$Res,
        $Val extends SupabaseProfileInsert>
    implements $SupabaseProfileInsertCopyWith<$Res> {
  _$SupabaseProfileInsertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = freezed,
    Object? avatarUrl = freezed,
    Object? status = freezed,
    Object? userId = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupabaseProfileInsertImplCopyWith<$Res>
    implements $SupabaseProfileInsertCopyWith<$Res> {
  factory _$$SupabaseProfileInsertImplCopyWith(
          _$SupabaseProfileInsertImpl value,
          $Res Function(_$SupabaseProfileInsertImpl) then) =
      __$$SupabaseProfileInsertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "avatar_url") String? avatarUrl,
      String? status,
      @JsonKey(name: "user_id") String userId,
      String username});
}

/// @nodoc
class __$$SupabaseProfileInsertImplCopyWithImpl<$Res>
    extends _$SupabaseProfileInsertCopyWithImpl<$Res,
        _$SupabaseProfileInsertImpl>
    implements _$$SupabaseProfileInsertImplCopyWith<$Res> {
  __$$SupabaseProfileInsertImplCopyWithImpl(_$SupabaseProfileInsertImpl _value,
      $Res Function(_$SupabaseProfileInsertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = freezed,
    Object? avatarUrl = freezed,
    Object? status = freezed,
    Object? userId = null,
    Object? username = null,
  }) {
    return _then(_$SupabaseProfileInsertImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupabaseProfileInsertImpl implements _SupabaseProfileInsert {
  _$SupabaseProfileInsertImpl(
      {@JsonKey(name: "first_name") required this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "avatar_url") this.avatarUrl,
      this.status,
      @JsonKey(name: "user_id") required this.userId,
      required this.username});

  factory _$SupabaseProfileInsertImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupabaseProfileInsertImplFromJson(json);

  @override
  @JsonKey(name: "first_name")
  final String firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "avatar_url")
  final String? avatarUrl;
  @override
  final String? status;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  final String username;

  @override
  String toString() {
    return 'SupabaseProfileInsert(firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, status: $status, userId: $userId, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupabaseProfileInsertImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, avatarUrl, status, userId, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupabaseProfileInsertImplCopyWith<_$SupabaseProfileInsertImpl>
      get copyWith => __$$SupabaseProfileInsertImplCopyWithImpl<
          _$SupabaseProfileInsertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupabaseProfileInsertImplToJson(
      this,
    );
  }
}

abstract class _SupabaseProfileInsert implements SupabaseProfileInsert {
  factory _SupabaseProfileInsert(
      {@JsonKey(name: "first_name") required final String firstName,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "avatar_url") final String? avatarUrl,
      final String? status,
      @JsonKey(name: "user_id") required final String userId,
      required final String username}) = _$SupabaseProfileInsertImpl;

  factory _SupabaseProfileInsert.fromJson(Map<String, dynamic> json) =
      _$SupabaseProfileInsertImpl.fromJson;

  @override
  @JsonKey(name: "first_name")
  String get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "avatar_url")
  String? get avatarUrl;
  @override
  String? get status;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$SupabaseProfileInsertImplCopyWith<_$SupabaseProfileInsertImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupabaseProfileUpdate _$SupabaseProfileUpdateFromJson(
    Map<String, dynamic> json) {
  return _SupabaseProfileUpdate.fromJson(json);
}

/// @nodoc
mixin _$SupabaseProfileUpdate {
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar_url")
  String? get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupabaseProfileUpdateCopyWith<SupabaseProfileUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseProfileUpdateCopyWith<$Res> {
  factory $SupabaseProfileUpdateCopyWith(SupabaseProfileUpdate value,
          $Res Function(SupabaseProfileUpdate) then) =
      _$SupabaseProfileUpdateCopyWithImpl<$Res, SupabaseProfileUpdate>;
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      String? status,
      @JsonKey(name: "avatar_url") String? avatarUrl});
}

/// @nodoc
class _$SupabaseProfileUpdateCopyWithImpl<$Res,
        $Val extends SupabaseProfileUpdate>
    implements $SupabaseProfileUpdateCopyWith<$Res> {
  _$SupabaseProfileUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? status = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupabaseProfileUpdateImplCopyWith<$Res>
    implements $SupabaseProfileUpdateCopyWith<$Res> {
  factory _$$SupabaseProfileUpdateImplCopyWith(
          _$SupabaseProfileUpdateImpl value,
          $Res Function(_$SupabaseProfileUpdateImpl) then) =
      __$$SupabaseProfileUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      String? status,
      @JsonKey(name: "avatar_url") String? avatarUrl});
}

/// @nodoc
class __$$SupabaseProfileUpdateImplCopyWithImpl<$Res>
    extends _$SupabaseProfileUpdateCopyWithImpl<$Res,
        _$SupabaseProfileUpdateImpl>
    implements _$$SupabaseProfileUpdateImplCopyWith<$Res> {
  __$$SupabaseProfileUpdateImplCopyWithImpl(_$SupabaseProfileUpdateImpl _value,
      $Res Function(_$SupabaseProfileUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? status = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$SupabaseProfileUpdateImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupabaseProfileUpdateImpl implements _SupabaseProfileUpdate {
  _$SupabaseProfileUpdateImpl(
      {@JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      this.status,
      @JsonKey(name: "avatar_url") this.avatarUrl});

  factory _$SupabaseProfileUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupabaseProfileUpdateImplFromJson(json);

  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  final String? status;
  @override
  @JsonKey(name: "avatar_url")
  final String? avatarUrl;

  @override
  String toString() {
    return 'SupabaseProfileUpdate(firstName: $firstName, lastName: $lastName, status: $status, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupabaseProfileUpdateImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, status, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupabaseProfileUpdateImplCopyWith<_$SupabaseProfileUpdateImpl>
      get copyWith => __$$SupabaseProfileUpdateImplCopyWithImpl<
          _$SupabaseProfileUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupabaseProfileUpdateImplToJson(
      this,
    );
  }
}

abstract class _SupabaseProfileUpdate implements SupabaseProfileUpdate {
  factory _SupabaseProfileUpdate(
          {@JsonKey(name: "first_name") final String? firstName,
          @JsonKey(name: "last_name") final String? lastName,
          final String? status,
          @JsonKey(name: "avatar_url") final String? avatarUrl}) =
      _$SupabaseProfileUpdateImpl;

  factory _SupabaseProfileUpdate.fromJson(Map<String, dynamic> json) =
      _$SupabaseProfileUpdateImpl.fromJson;

  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  String? get status;
  @override
  @JsonKey(name: "avatar_url")
  String? get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$SupabaseProfileUpdateImplCopyWith<_$SupabaseProfileUpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupabaseConnection _$SupabaseConnectionFromJson(Map<String, dynamic> json) {
  return _SupabaseConnection.fromJson(json);
}

/// @nodoc
mixin _$SupabaseConnection {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get recipient => throw _privateConstructorUsedError;
  String get pioneer => throw _privateConstructorUsedError;
  SupabaseConnectionStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupabaseConnectionCopyWith<SupabaseConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseConnectionCopyWith<$Res> {
  factory $SupabaseConnectionCopyWith(
          SupabaseConnection value, $Res Function(SupabaseConnection) then) =
      _$SupabaseConnectionCopyWithImpl<$Res, SupabaseConnection>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "created_at") DateTime createdAt,
      String recipient,
      String pioneer,
      SupabaseConnectionStatus status});
}

/// @nodoc
class _$SupabaseConnectionCopyWithImpl<$Res, $Val extends SupabaseConnection>
    implements $SupabaseConnectionCopyWith<$Res> {
  _$SupabaseConnectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? recipient = null,
    Object? pioneer = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
      pioneer: null == pioneer
          ? _value.pioneer
          : pioneer // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SupabaseConnectionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupabaseConnectionImplCopyWith<$Res>
    implements $SupabaseConnectionCopyWith<$Res> {
  factory _$$SupabaseConnectionImplCopyWith(_$SupabaseConnectionImpl value,
          $Res Function(_$SupabaseConnectionImpl) then) =
      __$$SupabaseConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "created_at") DateTime createdAt,
      String recipient,
      String pioneer,
      SupabaseConnectionStatus status});
}

/// @nodoc
class __$$SupabaseConnectionImplCopyWithImpl<$Res>
    extends _$SupabaseConnectionCopyWithImpl<$Res, _$SupabaseConnectionImpl>
    implements _$$SupabaseConnectionImplCopyWith<$Res> {
  __$$SupabaseConnectionImplCopyWithImpl(_$SupabaseConnectionImpl _value,
      $Res Function(_$SupabaseConnectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? recipient = null,
    Object? pioneer = null,
    Object? status = null,
  }) {
    return _then(_$SupabaseConnectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String,
      pioneer: null == pioneer
          ? _value.pioneer
          : pioneer // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SupabaseConnectionStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupabaseConnectionImpl implements _SupabaseConnection {
  _$SupabaseConnectionImpl(
      {required this.id,
      @JsonKey(name: "created_at") required this.createdAt,
      required this.recipient,
      required this.pioneer,
      required this.status});

  factory _$SupabaseConnectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupabaseConnectionImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  final String recipient;
  @override
  final String pioneer;
  @override
  final SupabaseConnectionStatus status;

  @override
  String toString() {
    return 'SupabaseConnection(id: $id, createdAt: $createdAt, recipient: $recipient, pioneer: $pioneer, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupabaseConnectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.pioneer, pioneer) || other.pioneer == pioneer) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, recipient, pioneer, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupabaseConnectionImplCopyWith<_$SupabaseConnectionImpl> get copyWith =>
      __$$SupabaseConnectionImplCopyWithImpl<_$SupabaseConnectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupabaseConnectionImplToJson(
      this,
    );
  }
}

abstract class _SupabaseConnection implements SupabaseConnection {
  factory _SupabaseConnection(
          {required final String id,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          required final String recipient,
          required final String pioneer,
          required final SupabaseConnectionStatus status}) =
      _$SupabaseConnectionImpl;

  factory _SupabaseConnection.fromJson(Map<String, dynamic> json) =
      _$SupabaseConnectionImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  String get recipient;
  @override
  String get pioneer;
  @override
  SupabaseConnectionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$SupabaseConnectionImplCopyWith<_$SupabaseConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SupabaseGroup _$SupabaseGroupFromJson(Map<String, dynamic> json) {
  return _SupabaseGroup.fromJson(json);
}

/// @nodoc
mixin _$SupabaseGroup {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get creator => throw _privateConstructorUsedError;
  @JsonKey(name: "cover_url")
  String? get coverUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupabaseGroupCopyWith<SupabaseGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseGroupCopyWith<$Res> {
  factory $SupabaseGroupCopyWith(
          SupabaseGroup value, $Res Function(SupabaseGroup) then) =
      _$SupabaseGroupCopyWithImpl<$Res, SupabaseGroup>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "created_at") DateTime createdAt,
      String name,
      String creator,
      @JsonKey(name: "cover_url") String? coverUrl});
}

/// @nodoc
class _$SupabaseGroupCopyWithImpl<$Res, $Val extends SupabaseGroup>
    implements $SupabaseGroupCopyWith<$Res> {
  _$SupabaseGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? creator = null,
    Object? coverUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupabaseGroupImplCopyWith<$Res>
    implements $SupabaseGroupCopyWith<$Res> {
  factory _$$SupabaseGroupImplCopyWith(
          _$SupabaseGroupImpl value, $Res Function(_$SupabaseGroupImpl) then) =
      __$$SupabaseGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "created_at") DateTime createdAt,
      String name,
      String creator,
      @JsonKey(name: "cover_url") String? coverUrl});
}

/// @nodoc
class __$$SupabaseGroupImplCopyWithImpl<$Res>
    extends _$SupabaseGroupCopyWithImpl<$Res, _$SupabaseGroupImpl>
    implements _$$SupabaseGroupImplCopyWith<$Res> {
  __$$SupabaseGroupImplCopyWithImpl(
      _$SupabaseGroupImpl _value, $Res Function(_$SupabaseGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? creator = null,
    Object? coverUrl = freezed,
  }) {
    return _then(_$SupabaseGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupabaseGroupImpl implements _SupabaseGroup {
  _$SupabaseGroupImpl(
      {required this.id,
      @JsonKey(name: "created_at") required this.createdAt,
      required this.name,
      required this.creator,
      @JsonKey(name: "cover_url") this.coverUrl});

  factory _$SupabaseGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupabaseGroupImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  final String name;
  @override
  final String creator;
  @override
  @JsonKey(name: "cover_url")
  final String? coverUrl;

  @override
  String toString() {
    return 'SupabaseGroup(id: $id, createdAt: $createdAt, name: $name, creator: $creator, coverUrl: $coverUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupabaseGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, name, creator, coverUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupabaseGroupImplCopyWith<_$SupabaseGroupImpl> get copyWith =>
      __$$SupabaseGroupImplCopyWithImpl<_$SupabaseGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupabaseGroupImplToJson(
      this,
    );
  }
}

abstract class _SupabaseGroup implements SupabaseGroup {
  factory _SupabaseGroup(
          {required final String id,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          required final String name,
          required final String creator,
          @JsonKey(name: "cover_url") final String? coverUrl}) =
      _$SupabaseGroupImpl;

  factory _SupabaseGroup.fromJson(Map<String, dynamic> json) =
      _$SupabaseGroupImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  String get name;
  @override
  String get creator;
  @override
  @JsonKey(name: "cover_url")
  String? get coverUrl;
  @override
  @JsonKey(ignore: true)
  _$$SupabaseGroupImplCopyWith<_$SupabaseGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SupabaseGroupConnection _$SupabaseGroupConnectionFromJson(
    Map<String, dynamic> json) {
  return _SupabaseGroupConnection.fromJson(json);
}

/// @nodoc
mixin _$SupabaseGroupConnection {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  String get inviter => throw _privateConstructorUsedError;
  @JsonKey(name: "group_id")
  String get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupabaseGroupConnectionCopyWith<SupabaseGroupConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseGroupConnectionCopyWith<$Res> {
  factory $SupabaseGroupConnectionCopyWith(SupabaseGroupConnection value,
          $Res Function(SupabaseGroupConnection) then) =
      _$SupabaseGroupConnectionCopyWithImpl<$Res, SupabaseGroupConnection>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "user_id") String userId,
      String inviter,
      @JsonKey(name: "group_id") String groupId});
}

/// @nodoc
class _$SupabaseGroupConnectionCopyWithImpl<$Res,
        $Val extends SupabaseGroupConnection>
    implements $SupabaseGroupConnectionCopyWith<$Res> {
  _$SupabaseGroupConnectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? userId = null,
    Object? inviter = null,
    Object? groupId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      inviter: null == inviter
          ? _value.inviter
          : inviter // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupabaseGroupConnectionImplCopyWith<$Res>
    implements $SupabaseGroupConnectionCopyWith<$Res> {
  factory _$$SupabaseGroupConnectionImplCopyWith(
          _$SupabaseGroupConnectionImpl value,
          $Res Function(_$SupabaseGroupConnectionImpl) then) =
      __$$SupabaseGroupConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "user_id") String userId,
      String inviter,
      @JsonKey(name: "group_id") String groupId});
}

/// @nodoc
class __$$SupabaseGroupConnectionImplCopyWithImpl<$Res>
    extends _$SupabaseGroupConnectionCopyWithImpl<$Res,
        _$SupabaseGroupConnectionImpl>
    implements _$$SupabaseGroupConnectionImplCopyWith<$Res> {
  __$$SupabaseGroupConnectionImplCopyWithImpl(
      _$SupabaseGroupConnectionImpl _value,
      $Res Function(_$SupabaseGroupConnectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? userId = null,
    Object? inviter = null,
    Object? groupId = null,
  }) {
    return _then(_$SupabaseGroupConnectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      inviter: null == inviter
          ? _value.inviter
          : inviter // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupabaseGroupConnectionImpl implements _SupabaseGroupConnection {
  _$SupabaseGroupConnectionImpl(
      {required this.id,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "user_id") required this.userId,
      required this.inviter,
      @JsonKey(name: "group_id") required this.groupId});

  factory _$SupabaseGroupConnectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupabaseGroupConnectionImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  final String inviter;
  @override
  @JsonKey(name: "group_id")
  final String groupId;

  @override
  String toString() {
    return 'SupabaseGroupConnection(id: $id, createdAt: $createdAt, userId: $userId, inviter: $inviter, groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupabaseGroupConnectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.inviter, inviter) || other.inviter == inviter) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, userId, inviter, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupabaseGroupConnectionImplCopyWith<_$SupabaseGroupConnectionImpl>
      get copyWith => __$$SupabaseGroupConnectionImplCopyWithImpl<
          _$SupabaseGroupConnectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupabaseGroupConnectionImplToJson(
      this,
    );
  }
}

abstract class _SupabaseGroupConnection implements SupabaseGroupConnection {
  factory _SupabaseGroupConnection(
          {required final String id,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          @JsonKey(name: "user_id") required final String userId,
          required final String inviter,
          @JsonKey(name: "group_id") required final String groupId}) =
      _$SupabaseGroupConnectionImpl;

  factory _SupabaseGroupConnection.fromJson(Map<String, dynamic> json) =
      _$SupabaseGroupConnectionImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  String get inviter;
  @override
  @JsonKey(name: "group_id")
  String get groupId;
  @override
  @JsonKey(ignore: true)
  _$$SupabaseGroupConnectionImplCopyWith<_$SupabaseGroupConnectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
