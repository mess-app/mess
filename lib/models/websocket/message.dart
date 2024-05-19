part of '../models.dart';

@freezed
class WebsocketMessageEventData with _$WebsocketMessageEventData {
  factory WebsocketMessageEventData({
    @JsonKey(name: 'connection_id') required String connectionId,
    @JsonKey(name: 'recipient_id') required String recipientId,
    required String message,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _WebsocketMessageEventData;

  factory WebsocketMessageEventData.fromJson(Map<String, dynamic> json) =>
      _$WebsocketMessageEventDataFromJson(json);
}
