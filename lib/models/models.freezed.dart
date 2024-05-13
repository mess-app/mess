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
      @JsonKey(name: "user_id") String userId});
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
      @JsonKey(name: "user_id") String userId});
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
      @JsonKey(name: "user_id") required this.userId});

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
  String toString() {
    return 'SupabaseProfile(id: $id, firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, status: $status, userId: $userId)';
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
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, firstName, lastName, avatarUrl, status, userId);

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
          @JsonKey(name: "user_id") required final String userId}) =
      _$SupabaseProfileImpl;

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
      @JsonKey(name: "user_id") String userId});
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
      @JsonKey(name: "user_id") String userId});
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
      @JsonKey(name: "user_id") required this.userId});

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
  String toString() {
    return 'SupabaseProfileInsert(firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, status: $status, userId: $userId)';
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
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, avatarUrl, status, userId);

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
          @JsonKey(name: "user_id") required final String userId}) =
      _$SupabaseProfileInsertImpl;

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
