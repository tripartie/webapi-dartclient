//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of tripartie_webapi_dartclient.api;

class RequestCreateTransactionTemplate {
  /// Returns a new [RequestCreateTransactionTemplate] instance.
  RequestCreateTransactionTemplate({
    @required this.title,
    this.description,
    this.externalId,
    this.sellerExternalId,
    this.sellerTripartieId,
    @required this.subTotal,
    @required this.currency,
    @required this.flow,
    this.adUrl,
    this.allowPriceChange = true,
    this.picture,
  });

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

  /// The desired flow (see <a href=\"#tag/Flows\">Flows</a>).
  String flow;

  /// The original Ad's URL.
  String adUrl;

  /// Allow price negociation?
  bool allowPriceChange;

  /// Ad picture, in <strong>base64 format</strong>.<br /> Max initial file size: 2Mo.<br /> <strong>You MUST send only the binary code.</strong> Do not send the first part that some converters add into the binary code which is <code>data:image/png;base64,</code>. 
  String picture;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestCreateTransactionTemplate &&
     other.title == title &&
     other.description == description &&
     other.externalId == externalId &&
     other.sellerExternalId == sellerExternalId &&
     other.sellerTripartieId == sellerTripartieId &&
     other.subTotal == subTotal &&
     other.currency == currency &&
     other.flow == flow &&
     other.adUrl == adUrl &&
     other.allowPriceChange == allowPriceChange &&
     other.picture == picture;

  @override
  int get hashCode =>
    (title == null ? 0 : title.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (externalId == null ? 0 : externalId.hashCode) +
    (sellerExternalId == null ? 0 : sellerExternalId.hashCode) +
    (sellerTripartieId == null ? 0 : sellerTripartieId.hashCode) +
    (subTotal == null ? 0 : subTotal.hashCode) +
    (currency == null ? 0 : currency.hashCode) +
    (flow == null ? 0 : flow.hashCode) +
    (adUrl == null ? 0 : adUrl.hashCode) +
    (allowPriceChange == null ? 0 : allowPriceChange.hashCode) +
    (picture == null ? 0 : picture.hashCode);

  @override
  String toString() => 'RequestCreateTransactionTemplate[title=$title, description=$description, externalId=$externalId, sellerExternalId=$sellerExternalId, sellerTripartieId=$sellerTripartieId, subTotal=$subTotal, currency=$currency, flow=$flow, adUrl=$adUrl, allowPriceChange=$allowPriceChange, picture=$picture]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (adUrl != null) {
      json[r'adUrl'] = adUrl;
    }
    if (allowPriceChange != null) {
      json[r'allowPriceChange'] = allowPriceChange;
    }
    if (picture != null) {
      json[r'picture'] = picture;
    }
    return json;
  }

  /// Returns a new [RequestCreateTransactionTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RequestCreateTransactionTemplate fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RequestCreateTransactionTemplate(
        title: json[r'title'],
        description: json[r'description'],
        externalId: json[r'externalId'],
        sellerExternalId: json[r'sellerExternalId'],
        sellerTripartieId: json[r'sellerTripartieId'],
        subTotal: json[r'subTotal'],
        currency: json[r'currency'],
        flow: json[r'flow'],
        adUrl: json[r'adUrl'],
        allowPriceChange: json[r'allowPriceChange'],
        picture: json[r'picture'],
    );

  static List<RequestCreateTransactionTemplate> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RequestCreateTransactionTemplate>[]
      : json.map((v) => RequestCreateTransactionTemplate.fromJson(v)).toList(growable: true == growable);

  static Map<String, RequestCreateTransactionTemplate> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RequestCreateTransactionTemplate>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RequestCreateTransactionTemplate.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RequestCreateTransactionTemplate-objects as value to a dart map
  static Map<String, List<RequestCreateTransactionTemplate>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RequestCreateTransactionTemplate>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RequestCreateTransactionTemplate.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

