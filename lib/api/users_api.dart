//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of tripartie_webapi_dartclient.api;


class UsersApi {
  UsersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Unregister
  ///
  /// Unregister a User using its External ID or Tripartie ID.<br /> You MUST provide either <code>external-id</code> or <code>tripartie-id</code>, but not both.<br /> This wont delete the User's Tripartie account. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] externalId:
  ///   The User's External ID.
  ///
  /// * [int] tripartieId:
  ///   The User's Tripartie ID.
  Future<Response> unregisterWithHttpInfo({ String externalId, int tripartieId }) async {
    // Verify required params are set.

    final path = '/api/web/users/'.replaceAll('{format}', 'json');

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Unregister
  ///
  /// Unregister a User using its External ID or Tripartie ID.<br /> You MUST provide either <code>external-id</code> or <code>tripartie-id</code>, but not both.<br /> This wont delete the User's Tripartie account. 
  ///
  /// Parameters:
  ///
  /// * [String] externalId:
  ///   The User's External ID.
  ///
  /// * [int] tripartieId:
  ///   The User's Tripartie ID.
  Future<void> unregister({ String externalId, int tripartieId }) async {
    final response = await unregisterWithHttpInfo( externalId: externalId, tripartieId: tripartieId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Fetch
  ///
  /// Fetch a User by its External ID or Tripartie ID.<br /> You MUST provide either <code>external-id</code> or <code>tripartie-id</code>, but not both. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] externalId:
  ///   The User's External ID.
  ///
  /// * [int] tripartieId:
  ///   The User's Tripartie ID.
  Future<Response> fetchWithHttpInfo({ String externalId, int tripartieId }) async {
    // Verify required params are set.

    final path = '/api/web/users/'.replaceAll('{format}', 'json');

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
  /// Fetch a User by its External ID or Tripartie ID.<br /> You MUST provide either <code>external-id</code> or <code>tripartie-id</code>, but not both. 
  ///
  /// Parameters:
  ///
  /// * [String] externalId:
  ///   The User's External ID.
  ///
  /// * [int] tripartieId:
  ///   The User's Tripartie ID.
  Future<ModelUser> fetch({ String externalId, int tripartieId }) async {
    final response = await fetchWithHttpInfo( externalId: externalId, tripartieId: tripartieId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ModelUser') as ModelUser;
    }
    return null;
  }

  /// Register
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RequestRegisterUser] requestRegisterUser (required):
  Future<Response> registerWithHttpInfo(RequestRegisterUser requestRegisterUser) async {
    // Verify required params are set.
    if (requestRegisterUser == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: requestRegisterUser');
    }

    final path = '/api/web/users/'.replaceAll('{format}', 'json');

    Object postBody = requestRegisterUser;

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

  /// Register
  ///
  /// Parameters:
  ///
  /// * [RequestRegisterUser] requestRegisterUser (required):
  Future<ModelUser> register(RequestRegisterUser requestRegisterUser) async {
    final response = await registerWithHttpInfo(requestRegisterUser);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ModelUser') as ModelUser;
    }
    return null;
  }
}
