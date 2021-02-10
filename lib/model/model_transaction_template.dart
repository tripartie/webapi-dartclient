//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of tripartie_webapi_dartclient.api;

class ModelTransactionTemplate {
  /// Returns a new [ModelTransactionTemplate] instance.
  ModelTransactionTemplate({
    this.id,
    this.permalink,
    this.title,
    this.description,
    this.externalId,
    this.sellerExternalId,
    this.sellerTripartieId,
    this.subTotal,
    this.currency,
    this.flow,
    this.buyerFees,
    this.buyerTotal,
    this.sellerFees,
    this.sellerTotal,
    this.adUrl,
    this.allowPriceChange,
    this.hasPicture,
  });

  /// The Transaction template's Tripartie ID.
  int id;

  /// The template permalink. <strong>This is what you need for the Secured Payment button.</strong>
  String permalink;

  /// The title.
  String title;

  /// The description.
  String description;

  /// The Transaction template's External ID.
  String externalId;

  /// The Seller's External ID.
  String sellerExternalId;

  /// The Seller's Tripartie ID.
  String sellerTripartieId;

  /// The price, in cents.
  int subTotal;

  /// The currency code (ISO 4217).
  String currency;

  /// The flow.
  String flow;

  /// The buyer's fees, in cents.
  int buyerFees;

  /// The buyer's total, in cents.
  int buyerTotal;

  /// The seller's fees, in cents.
  int sellerFees;

  /// The seller's total, in cents.
  int sellerTotal;

  /// The original Ad's URL.
  String adUrl;

  /// Allow price negociation?
  bool allowPriceChange;

  /// Has a picture?
  bool hasPicture;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelTransactionTemplate &&
     other.id == id &&
     other.permalink == permalink &&
     other.title == title &&
     other.description == description &&
     other.externalId == externalId &&
     other.sellerExternalId == sellerExternalId &&
     other.sellerTripartieId == sellerTripartieId &&
     other.subTotal == subTotal &&
     other.currency == currency &&
     other.flow == flow &&
     other.buyerFees == buyerFees &&
     other.buyerTotal == buyerTotal &&
     other.sellerFees == sellerFees &&
     other.sellerTotal == sellerTotal &&
     other.adUrl == adUrl &&
     other.allowPriceChange == allowPriceChange &&
     other.hasPicture == hasPicture;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (permalink == null ? 0 : permalink.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (externalId == null ? 0 : externalId.hashCode) +
    (sellerExternalId == null ? 0 : sellerExternalId.hashCode) +
    (sellerTripartieId == null ? 0 : sellerTripartieId.hashCode) +
    (subTotal == null ? 0 : subTotal.hashCode) +
    (currency == null ? 0 : currency.hashCode) +
    (flow == null ? 0 : flow.hashCode) +
    (buyerFees == null ? 0 : buyerFees.hashCode) +
    (buyerTotal == null ? 0 : buyerTotal.hashCode) +
    (sellerFees == null ? 0 : sellerFees.hashCode) +
    (sellerTotal == null ? 0 : sellerTotal.hashCode) +
    (adUrl == null ? 0 : adUrl.hashCode) +
    (allowPriceChange == null ? 0 : allowPriceChange.hashCode) +
    (hasPicture == null ? 0 : hasPicture.hashCode);

  @override
  String toString() => 'ModelTransactionTemplate[id=$id, permalink=$permalink, title=$title, description=$description, externalId=$externalId, sellerExternalId=$sellerExternalId, sellerTripartieId=$sellerTripartieId, subTotal=$subTotal, currency=$currency, flow=$flow, buyerFees=$buyerFees, buyerTotal=$buyerTotal, sellerFees=$sellerFees, sellerTotal=$sellerTotal, adUrl=$adUrl, allowPriceChange=$allowPriceChange, hasPicture=$hasPicture]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (permalink != null) {
      json[r'permalink'] = permalink;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (externalId != null) {
      json[r'externalId'] = externalId;
    }
    if (sellerExternalId != null) {
      json[r'sellerExternalId'] = sellerExternalId;
    }
    if (sellerTripartieId != null) {
      json[r'sellerTripartieId'] = sellerTripartieId;
    }
    if (subTotal != null) {
      json[r'subTotal'] = subTotal;
    }
    if (currency != null) {
      json[r'currency'] = currency;
    }
    if (flow != null) {
      json[r'flow'] = flow;
    }
    if (buyerFees != null) {
      json[r'buyerFees'] = buyerFees;
    }
    if (buyerTotal != null) {
      json[r'buyerTotal'] = buyerTotal;
    }
    if (sellerFees != null) {
      json[r'sellerFees'] = sellerFees;
    }
    if (sellerTotal != null) {
      json[r'sellerTotal'] = sellerTotal;
    }
    if (adUrl != null) {
      json[r'adUrl'] = adUrl;
    }
    if (allowPriceChange != null) {
      json[r'allowPriceChange'] = allowPriceChange;
    }
    if (hasPicture != null) {
      json[r'hasPicture'] = hasPicture;
    }
    return json;
  }

  /// Returns a new [ModelTransactionTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ModelTransactionTemplate fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ModelTransactionTemplate(
        id: json[r'id'],
        permalink: json[r'permalink'],
        title: json[r'title'],
        description: json[r'description'],
        externalId: json[r'externalId'],
        sellerExternalId: json[r'sellerExternalId'],
        sellerTripartieId: json[r'sellerTripartieId'],
        subTotal: json[r'subTotal'],
        currency: json[r'currency'],
        flow: json[r'flow'],
        buyerFees: json[r'buyerFees'],
        buyerTotal: json[r'buyerTotal'],
        sellerFees: json[r'sellerFees'],
        sellerTotal: json[r'sellerTotal'],
        adUrl: json[r'adUrl'],
        allowPriceChange: json[r'allowPriceChange'],
        hasPicture: json[r'hasPicture'],
    );

  static List<ModelTransactionTemplate> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ModelTransactionTemplate>[]
      : json.map((v) => ModelTransactionTemplate.fromJson(v)).toList(growable: true == growable);

  static Map<String, ModelTransactionTemplate> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ModelTransactionTemplate>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ModelTransactionTemplate.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ModelTransactionTemplate-objects as value to a dart map
  static Map<String, List<ModelTransactionTemplate>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ModelTransactionTemplate>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ModelTransactionTemplate.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

