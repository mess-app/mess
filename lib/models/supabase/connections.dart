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
    required String recipient,
    required String pioneer,
    required SupabaseConnectionStatus status,
  }) = _SupabaseConnection;

  factory SupabaseConnection.fromJson(Map<String, dynamic> json) =>
      _$SupabaseConnectionFromJson(json);
}
