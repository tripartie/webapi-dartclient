//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of tripartie_webapi_dartclient.api;

class ModelWebhook {
  /// Returns a new [ModelWebhook] instance.
  ModelWebhook({
    this.eventType,
    this.transactionTemplateExternalId,
    this.transactionTemplateTripartieId,
    this.eventTimestamp,
  });

  /// The webhook type.
  ModelWebhookEventTypeEnum eventType;

  /// The Transaction template's External ID.
  String transactionTemplateExternalId;

  /// The Transaction template's Tripartie ID.
  int transactionTemplateTripartieId;

  /// The event timestamp.
  int eventTimestamp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelWebhook &&
     other.eventType == eventType &&
     other.transactionTemplateExternalId == transactionTemplateExternalId &&
     other.transactionTemplateTripartieId == transactionTemplateTripartieId &&
     other.eventTimestamp == eventTimestamp;

  @override
  int get hashCode =>
    (eventType == null ? 0 : eventType.hashCode) +
    (transactionTemplateExternalId == null ? 0 : transactionTemplateExternalId.hashCode) +
    (transactionTemplateTripartieId == null ? 0 : transactionTemplateTripartieId.hashCode) +
    (eventTimestamp == null ? 0 : eventTimestamp.hashCode);

  @override
  String toString() => 'ModelWebhook[eventType=$eventType, transactionTemplateExternalId=$transactionTemplateExternalId, transactionTemplateTripartieId=$transactionTemplateTripartieId, eventTimestamp=$eventTimestamp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (eventType != null) {
      json[r'eventType'] = eventType;
    }
    if (transactionTemplateExternalId != null) {
      json[r'transactionTemplateExternalId'] = transactionTemplateExternalId;
    }
    if (transactionTemplateTripartieId != null) {
      json[r'transactionTemplateTripartieId'] = transactionTemplateTripartieId;
    }
    if (eventTimestamp != null) {
      json[r'eventTimestamp'] = eventTimestamp;
    }
    return json;
  }

  /// Returns a new [ModelWebhook] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ModelWebhook fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ModelWebhook(
        eventType: ModelWebhookEventTypeEnum.fromJson(json[r'eventType']),
        transactionTemplateExternalId: json[r'transactionTemplateExternalId'],
        transactionTemplateTripartieId: json[r'transactionTemplateTripartieId'],
        eventTimestamp: json[r'eventTimestamp'],
    );

  static List<ModelWebhook> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ModelWebhook>[]
      : json.map((v) => ModelWebhook.fromJson(v)).toList(growable: true == growable);

  static Map<String, ModelWebhook> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ModelWebhook>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ModelWebhook.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ModelWebhook-objects as value to a dart map
  static Map<String, List<ModelWebhook>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ModelWebhook>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ModelWebhook.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// The webhook type.
class ModelWebhookEventTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ModelWebhookEventTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ModelWebhookEventTypeEnum && other.value == value;

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() => value;

  String toJson() => value;

  static const propositionSent = ModelWebhookEventTypeEnum._(r'proposition_sent');
  static const propositionAccepted = ModelWebhookEventTypeEnum._(r'proposition_accepted');
  static const propositionRejected = ModelWebhookEventTypeEnum._(r'proposition_rejected');
  static const transactionCompleted = ModelWebhookEventTypeEnum._(r'transaction_completed');
  static const transactionCanceled = ModelWebhookEventTypeEnum._(r'transaction_canceled');

  /// List of all possible values in this [enum][ModelWebhookEventTypeEnum].
  static const values = <ModelWebhookEventTypeEnum>[
    propositionSent,
    propositionAccepted,
    propositionRejected,
    transactionCompleted,
    transactionCanceled,
  ];

  static ModelWebhookEventTypeEnum fromJson(dynamic value) =>
    ModelWebhookEventTypeEnumTypeTransformer().decode(value);

  static List<ModelWebhookEventTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ModelWebhookEventTypeEnum>[]
      : json
          .map((value) => ModelWebhookEventTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ModelWebhookEventTypeEnum] to String,
/// and [decode] dynamic data back to [ModelWebhookEventTypeEnum].
class ModelWebhookEventTypeEnumTypeTransformer {
  const ModelWebhookEventTypeEnumTypeTransformer._();

  factory ModelWebhookEventTypeEnumTypeTransformer() => _instance ??= ModelWebhookEventTypeEnumTypeTransformer._();

  String encode(ModelWebhookEventTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ModelWebhookEventTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ModelWebhookEventTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'proposition_sent': return ModelWebhookEventTypeEnum.propositionSent;
      case r'proposition_accepted': return ModelWebhookEventTypeEnum.propositionAccepted;
      case r'proposition_rejected': return ModelWebhookEventTypeEnum.propositionRejected;
      case r'transaction_completed': return ModelWebhookEventTypeEnum.transactionCompleted;
      case r'transaction_canceled': return ModelWebhookEventTypeEnum.transactionCanceled;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ModelWebhookEventTypeEnumTypeTransformer] instance.
  static ModelWebhookEventTypeEnumTypeTransformer _instance;
}

