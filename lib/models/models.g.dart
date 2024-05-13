// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupabaseProfileImpl _$$SupabaseProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$SupabaseProfileImpl(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      status: json['status'] as String?,
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$$SupabaseProfileImplToJson(
        _$SupabaseProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar_url': instance.avatarUrl,
      'status': instance.status,
      'user_id': instance.userId,
    };

_$SupabaseProfileInsertImpl _$$SupabaseProfileInsertImplFromJson(
        Map<String, dynamic> json) =>
    _$SupabaseProfileInsertImpl(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      status: json['status'] as String?,
      userId: json['user_id'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$SupabaseProfileInsertImplToJson(
        _$SupabaseProfileInsertImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar_url': instance.avatarUrl,
      'status': instance.status,
      'user_id': instance.userId,
      'username': instance.username,
    };

_$SupabaseProfileUpdateImpl _$$SupabaseProfileUpdateImplFromJson(
        Map<String, dynamic> json) =>
    _$SupabaseProfileUpdateImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      status: json['status'] as String?,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$SupabaseProfileUpdateImplToJson(
        _$SupabaseProfileUpdateImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'status': instance.status,
      'avatar_url': instance.avatarUrl,
    };
