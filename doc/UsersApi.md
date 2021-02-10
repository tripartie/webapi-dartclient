# tripartie_webapi_dartclient.api.UsersApi

## Load the API package
```dart
import 'package:tripartie_webapi_dartclient/api.dart';
```

All URIs are relative to *https://platform.preprod.tripartie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**unregister**](UsersApi.md#unregister) | **DELETE** /api/web/users/ | Unregister
[**fetch**](UsersApi.md#fetch) | **GET** /api/web/users/ | Fetch
[**register**](UsersApi.md#register) | **POST** /api/web/users/ | Register


# **unregister**
> unregister(externalId, tripartieId)

Unregister

Unregister a User using its External ID or Tripartie ID.<br /> You MUST provide either <code>external-id</code> or <code>tripartie-id</code>, but not both.<br /> This wont delete the User's Tripartie account. 

### Example 
```dart
import 'package:tripartie_webapi_dartclient/api.dart';
// TODO Configure API key authorization: ClientIdAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ClientIdAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ClientIdAuth').apiKeyPrefix = 'Bearer';

final usersApi = UsersApi();
final externalId = 'user-96'; // String | The User's External ID.

try { 
    usersApi.unregister(externalId);
} catch (e) {
    print('Exception when calling UsersApi->unregister: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **String**| The User's External ID. | [optional] 
 **tripartieId** | **int**| The User's Tripartie ID. | [optional] 

### Return type

void (empty response body)

### Authorization

[ClientIdAuth](../README.md#ClientIdAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fetch**
> ModelUser fetch(externalId, tripartieId)

Fetch

Fetch a User by its External ID or Tripartie ID.<br /> You MUST provide either <code>external-id</code> or <code>tripartie-id</code>, but not both. 

### Example 
```dart
import 'package:tripartie_webapi_dartclient/api.dart';
// TODO Configure API key authorization: ClientIdAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ClientIdAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ClientIdAuth').apiKeyPrefix = 'Bearer';

final usersApi = UsersApi();
final externalId = 'user-96'; // String | The User's External ID.

try { 
    final result = usersApi.fetch(externalId);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->fetch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **String**| The User's External ID. | [optional] 
 **tripartieId** | **int**| The User's Tripartie ID. | [optional] 

### Return type

[**ModelUser**](ModelUser.md)

### Authorization

[ClientIdAuth](../README.md#ClientIdAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register**
> ModelUser register(requestRegisterUser)

Register

### Example 
```dart
import 'package:tripartie_webapi_dartclient/api.dart';
// TODO Configure API key authorization: ClientIdAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ClientIdAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ClientIdAuth').apiKeyPrefix = 'Bearer';

final usersApi = UsersApi();
final requestRegisterUser = RequestRegisterUser(); // RequestRegisterUser | 

try { 
    final result = usersApi.register(requestRegisterUser);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->register: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestRegisterUser** | [**RequestRegisterUser**](RequestRegisterUser.md)|  | 

### Return type

[**ModelUser**](ModelUser.md)

### Authorization

[ClientIdAuth](../README.md#ClientIdAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

