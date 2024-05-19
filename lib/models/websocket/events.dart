part of '../models.dart';

@JsonEnum(valueField: 'label')
enum WebsocketEventType {
  sendMessage("send_message"),
  receiveMessage("receive_message");

  final String label;
  const WebsocketEventType(this.label);
}

@Freezed(unionKey: "event")
class WebsocketEvent with _$WebsocketEvent {
  @FreezedUnionValue("send_message")
  const factory WebsocketEvent.sendMessage({
    required WebsocketEventType event,
    required WebsocketMessageEventData data,
  }) = WebsocketSendMessageEvent;

  @FreezedUnionValue("receive_message")
  const factory WebsocketEvent.receiveMessage({
    required WebsocketEventType event,
    required WebsocketMessageEventData data,
  }) = WebsocketReceiveMessageEvent;

  factory WebsocketEvent.fromJson(Map<String, dynamic> json) =>
      _$WebsocketEventFromJson(json);
}
