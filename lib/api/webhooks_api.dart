//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of tripartie_webapi_dartclient.api;


class WebhooksApi {
  WebhooksApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Validate
  ///
  /// Check a webhook's authenticity 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] eventType:
  ///   The webhook type.
  ///
  /// * [String] transactionTemplateExternalId:
  ///   The Transaction template's External ID.
  ///
  /// * [int] transactionTemplateTripartieId:
  ///   The Transaction template's Tripartie ID.
  ///
  /// * [int] eventTimestamp:
  ///   The event timestamp.
  Future<Response> validateWithHttpInfo({ String eventType, String transactionTemplateExternalId, int transactionTemplateTripartieId, int eventTimestamp }) async {
    // Verify required params are set.

    final path = '/api/web/webhooks/'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (eventType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'event-type', eventType));
    }
    if (transactionTemplateExternalId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'transaction-template-external-id', transactionTemplateExternalId));
    }
    if (transactionTemplateTripartieId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'transaction-template-tripartie-id', transactionTemplateTripartieId));
    }
    if (eventTimestamp != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'event-timestamp', eventTimestamp));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['ClientIdAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Validate
  ///
  /// Check a webhook's authenticity 
  ///
  /// Parameters:
  ///
  /// * [String] eventType:
  ///   The webhook type.
  ///
  /// * [String] transactionTemplateExternalId:
  ///   The Transaction template's External ID.
  ///
  /// * [int] transactionTemplateTripartieId:
  ///   The Transaction template's Tripartie ID.
  ///
  /// * [int] eventTimestamp:
  ///   The event timestamp.
  Future<ModelWebhook> validate({ String eventType, String transactionTemplateExternalId, int transactionTemplateTripartieId, int eventTimestamp }) async {
    final response = await validateWithHttpInfo( eventType: eventType, transactionTemplateExternalId: transactionTemplateExternalId, transactionTemplateTripartieId: transactionTemplateTripartieId, eventTimestamp: eventTimestamp );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ModelWebhook') as ModelWebhook;
    }
    return null;
  }
}
