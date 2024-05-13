part of '../models.dart';

@freezed
class SupabaseProfile with _$SupabaseProfile {
  factory SupabaseProfile({
    required String id,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "avatar_url") String? avatarUrl,
    String? status,
    @JsonKey(name: "user_id") required String userId,
  }) = _SupabaseProfile;

  factory SupabaseProfile.fromJson(Map<String, dynamic> json) =>
      _$SupabaseProfileFromJson(json);
}

@freezed
class SupabaseProfileInsert with _$SupabaseProfileInsert {
  factory SupabaseProfileInsert({
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "avatar_url") String? avatarUrl,
    String? status,
    @JsonKey(name: "user_id") required String userId,
  }) = _SupabaseProfileInsert;

  factory SupabaseProfileInsert.fromJson(Map<String, dynamic> json) =>
      _$SupabaseProfileInsertFromJson(json);
}

@freezed
class SupabaseProfileUpdate with _$SupabaseProfileUpdate {
  factory SupabaseProfileUpdate({
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    String? status,
    @JsonKey(name: "avatar_url") String? avatarUrl,
  }) = _SupabaseProfileUpdate;

  factory SupabaseProfileUpdate.fromJson(Map<String, dynamic> json) =>
      _$SupabaseProfileUpdateFromJson(json);
}
