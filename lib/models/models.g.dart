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
      username: json['username'] as String,
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
      'username': instance.username,
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

_$SupabaseConnectionImpl _$$SupabaseConnectionImplFromJson(
        Map<String, dynamic> json) =>
    _$SupabaseConnectionImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      recipientId: json['recipient_id'] as String,
      pioneerId: json['pioneer_id'] as String,
      recipient: json['recipient'] == null
          ? null
          : SupabaseProfile.fromJson(json['recipient'] as Map<String, dynamic>),
      pioneer: json['pioneer'] == null
          ? null
          : SupabaseProfile.fromJson(json['pioneer'] as Map<String, dynamic>),
      status: $enumDecode(_$SupabaseConnectionStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$SupabaseConnectionImplToJson(
        _$SupabaseConnectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'recipient_id': instance.recipientId,
      'pioneer_id': instance.pioneerId,
      'recipient': instance.recipient,
      'pioneer': instance.pioneer,
      'status': _$SupabaseConnectionStatusEnumMap[instance.status]!,
    };

const _$SupabaseConnectionStatusEnumMap = {
  SupabaseConnectionStatus.pending: 'pending',
  SupabaseConnectionStatus.declined: 'declined',
  SupabaseConnectionStatus.connected: 'connected',
};

_$SupabaseGroupImpl _$$SupabaseGroupImplFromJson(Map<String, dynamic> json) =>
    _$SupabaseGroupImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      name: json['name'] as String,
      creator: json['creator'] as String,
      coverUrl: json['cover_url'] as String?,
    );

Map<String, dynamic> _$$SupabaseGroupImplToJson(_$SupabaseGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'name': instance.name,
      'creator': instance.creator,
      'cover_url': instance.coverUrl,
    };

_$SupabaseGroupConnectionImpl _$$SupabaseGroupConnectionImplFromJson(
        Map<String, dynamic> json) =>
    _$SupabaseGroupConnectionImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      userId: json['user_id'] as String,
      inviter: json['inviter'] as String,
      groupId: json['group_id'] as String,
    );

Map<String, dynamic> _$$SupabaseGroupConnectionImplToJson(
        _$SupabaseGroupConnectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'user_id': instance.userId,
      'inviter': instance.inviter,
      'group_id': instance.groupId,
    };

_$WebsocketSendMessageEventImpl _$$WebsocketSendMessageEventImplFromJson(
        Map<String, dynamic> json) =>
    _$WebsocketSendMessageEventImpl(
      event: $enumDecode(_$WebsocketEventTypeEnumMap, json['event']),
      data: WebsocketMessageEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WebsocketSendMessageEventImplToJson(
        _$WebsocketSendMessageEventImpl instance) =>
    <String, dynamic>{
      'event': _$WebsocketEventTypeEnumMap[instance.event]!,
      'data': instance.data,
    };

const _$WebsocketEventTypeEnumMap = {
  WebsocketEventType.sendMessage: 'send_message',
  WebsocketEventType.receiveMessage: 'receive_message',
};

_$WebsocketReceiveMessageEventImpl _$$WebsocketReceiveMessageEventImplFromJson(
        Map<String, dynamic> json) =>
    _$WebsocketReceiveMessageEventImpl(
      event: $enumDecode(_$WebsocketEventTypeEnumMap, json['event']),
      data: WebsocketMessageEventData.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WebsocketReceiveMessageEventImplToJson(
        _$WebsocketReceiveMessageEventImpl instance) =>
    <String, dynamic>{
      'event': _$WebsocketEventTypeEnumMap[instance.event]!,
      'data': instance.data,
    };

_$WebsocketMessageEventDataImpl _$$WebsocketMessageEventDataImplFromJson(
        Map<String, dynamic> json) =>
    _$WebsocketMessageEventDataImpl(
      connectionId: json['connection_id'] as String,
      recipientId: json['recipient_id'] as String,
      message: json['message'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$WebsocketMessageEventDataImplToJson(
        _$WebsocketMessageEventDataImpl instance) =>
    <String, dynamic>{
      'connection_id': instance.connectionId,
      'recipient_id': instance.recipientId,
      'message': instance.message,
      'created_at': instance.createdAt.toIso8601String(),
    };
