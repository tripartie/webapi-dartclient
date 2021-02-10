//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of tripartie_webapi_dartclient.api;

class RequestRegisterUser {
  /// Returns a new [RequestRegisterUser] instance.
  RequestRegisterUser({
    @required this.email,
    this.externalId,
    this.displayName,
  });

  /// The user's email.
  String email;

  /// The user's External ID.
  String externalId;

  /// The user's display name.
  String displayName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestRegisterUser &&
     other.email == email &&
     other.externalId == externalId &&
     other.displayName == displayName;

  @override
  int get hashCode =>
    (email == null ? 0 : email.hashCode) +
    (externalId == null ? 0 : externalId.hashCode) +
    (displayName == null ? 0 : displayName.hashCode);

  @override
  String toString() => 'RequestRegisterUser[email=$email, externalId=$externalId, displayName=$displayName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (email != null) {
      json[r'email'] = email;
    }
    if (externalId != null) {
      json[r'externalId'] = externalId;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    return json;
  }

  /// Returns a new [RequestRegisterUser] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestRegisterUser fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestRegisterUser(
        email: json[r'email'],
        externalId: json[r'externalId'],
        displayName: json[r'displayName'],
    );

  static List<RequestRegisterUser> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestRegisterUser>[]
      : json.map((v) => RequestRegisterUser.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestRegisterUser> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestRegisterUser>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestRegisterUser.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestRegisterUser-objects as value to a dart map
  static Map<String, List<RequestRegisterUser>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestRegisterUser>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestRegisterUser.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

