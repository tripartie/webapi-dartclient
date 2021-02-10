//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of tripartie_webapi_dartclient.api;

class ModelUser {
  /// Returns a new [ModelUser] instance.
  ModelUser({
    this.id,
    this.externalId,
  });

  /// The User's Tripartie ID.
  int id;

  /// The User's External ID.
  String externalId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelUser &&
     other.id == id &&
     other.externalId == externalId;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (externalId == null ? 0 : externalId.hashCode);

  @override
  String toString() => 'ModelUser[id=$id, externalId=$externalId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (externalId != null) {
      json[r'externalId'] = externalId;
    }
    return json;
  }

  /// Returns a new [ModelUser] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ModelUser fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ModelUser(
        id: json[r'id'],
        externalId: json[r'externalId'],
    );

  static List<ModelUser> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ModelUser>[]
      : json.map((v) => ModelUser.fromJson(v)).toList(growable: true == growable);

  static Map<String, ModelUser> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ModelUser>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ModelUser.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ModelUser-objects as value to a dart map
  static Map<String, List<ModelUser>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ModelUser>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ModelUser.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

