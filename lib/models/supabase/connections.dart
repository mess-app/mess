part of '../models.dart';

enum SupabaseConnectionStatus {
  pending,
  declined,
  connected,
}

@freezed
class SupabaseConnection with _$SupabaseConnection {
  factory SupabaseConnection({
    required String id,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "recipient_id") required String recipientId,
    @JsonKey(name: "pioneer_id") required String pioneerId,
    SupabaseProfile? recipient,
    SupabaseProfile? pioneer,
    required SupabaseConnectionStatus status,
  }) = _SupabaseConnection;

  factory SupabaseConnection.fromJson(Map<String, dynamic> json) =>
      _$SupabaseConnectionFromJson(json);
}
