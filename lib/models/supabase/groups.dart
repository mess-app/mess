part of '../models.dart';

@freezed
class SupabaseGroup with _$SupabaseGroup {
  factory SupabaseGroup({
    required String id,
    @JsonKey(name: "created_at") required DateTime createdAt,
    required String name,
    required String creator,
    @JsonKey(name: "cover_url") String? coverUrl,
  }) = _SupabaseGroup;

  factory SupabaseGroup.fromJson(Map<String, dynamic> json) =>
      _$SupabaseGroupFromJson(json);
}

@freezed
class SupabaseGroupConnection with _$SupabaseGroupConnection {
  factory SupabaseGroupConnection({
    required String id,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "user_id") required String userId,
    required String inviter,
    @JsonKey(name: "group_id") required String groupId,
  }) = _SupabaseGroupConnection;

  factory SupabaseGroupConnection.fromJson(Map<String, dynamic> json) =>
      _$SupabaseGroupConnectionFromJson(json);
}
