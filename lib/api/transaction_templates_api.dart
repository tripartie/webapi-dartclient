//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of tripartie_webapi_dartclient.api;


class TransactionTemplatesApi {
  TransactionTemplatesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Fetch
  ///
  /// Fetch a Transaction template by its External ID or Tripartie ID.<br /> You MUST provide either <code>external-id</code> or <code>tripartie-id</code>, but not both. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] externalId:
  ///   The Transaction template's External ID.
  ///
  /// * [int] tripartieId:
  ///   The Transaction template's Tripartie ID.
  Future<Response> fetchWithHttpInfo({ String externalId, int tripartieId }) async {
    // Verify required params are set.

    final path = '/api/web/transaction-templates/'.replaceAll('{format}', 'json');

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (externalId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'external-id', externalId));
    }
    if (tripartieId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'tripartie-id', tripartieId));
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

  /// Fetch
  ///
  /// Fetch a Transaction template by its External ID or Tripartie ID.<br /> You MUST provide either <code>external-id</code> or <code>tripartie-id</code>, but not both. 
  ///
  /// Parameters:
  ///
  /// * [String] externalId:
  ///   The Transaction template's External ID.
  ///
  /// * [int] tripartieId:
  ///   The Transaction template's Tripartie ID.
  Future<ModelTransactionTemplate> fetch({ String externalId, int tripartieId }) async {
    final response = await fetchWithHttpInfo( externalId: externalId, tripartieId: tripartieId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ModelTransactionTemplate') as ModelTransactionTemplate;
    }
    return null;
  }

  /// Create
  ///
  /// Create a Transaction template.<br /> You MUST provide either sellerExternalId or sellerTripartieId but not both 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RequestCreateTransactionTemplate] requestCreateTransactionTemplate (required):
  Future<Response> createWithHttpInfo(RequestCreateTransactionTemplate requestCreateTransactionTemplate) async {
    // Verify required params are set.
    if (requestCreateTransactionTemplate == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: requestCreateTransactionTemplate');
    }

    final path = '/api/web/transaction-templates/'.replaceAll('{format}', 'json');

    Object postBody = requestCreateTransactionTemplate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Create
  ///
  /// Create a Transaction template.<br /> You MUST provide either sellerExternalId or sellerTripartieId but not both 
  ///
  /// Parameters:
  ///
  /// * [RequestCreateTransactionTemplate] requestCreateTransactionTemplate (required):
  Future<ModelTransactionTemplate> create(RequestCreateTransactionTemplate requestCreateTransactionTemplate) async {
    final response = await createWithHttpInfo(requestCreateTransactionTemplate);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ModelTransactionTemplate') as ModelTransactionTemplate;
    }
    return null;
  }
}
