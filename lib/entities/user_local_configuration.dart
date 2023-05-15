import 'package:json_annotation/json_annotation.dart';
part 'user_local_configuration.g.dart';

@JsonSerializable(explicitToJson: true)
class UserLocalConfiguration {
  @JsonKey()
  int? user;

  @JsonKey()
  String? placeName;

  @JsonKey()
  String? placeId;

  @JsonKey()
  String? universityName;

  @JsonKey()
  int? universityId;

  @JsonKey()
  String? displayName;

  @JsonKey()
  String? avatarURL;

  @JsonKey()
  bool? hasSeenWelcomeContent;

  @JsonKey()
  String? accessToken;

  @JsonKey()
  String? refreshToken;

  @JsonKey()
  String? fcm;

  UserLocalConfiguration({this.user, this.placeName, this.placeId, this.universityId, this.universityName, this.displayName, this.hasSeenWelcomeContent = false, this.avatarURL, this.accessToken, this.fcm, this.refreshToken});

  factory UserLocalConfiguration.fromJson(Map<String, dynamic> json) {
    return _$UserLocalConfigurationFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UserLocalConfigurationToJson(this);

  isLoggedIn() {
    return this.placeName != null && this.placeId != null && this.accessToken != null && this.refreshToken != null;
  }

  @override
  String toString() {
    return '----------------------------------UserLocalConfiguration{user: $user, placeName: $placeName, placeId: $placeId, displayName: $displayName, avatarURL: $avatarURL, hasSeenWelcomeContent: $hasSeenWelcomeContent, accessToken: $accessToken, refreshToken: $refreshToken, fcm: $fcm}';
  }
}
