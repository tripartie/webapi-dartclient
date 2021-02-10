# tripartie_webapi_dartclient.api.TransactionTemplatesApi

## Load the API package
```dart
import 'package:tripartie_webapi_dartclient/api.dart';
```

All URIs are relative to *https://platform.preprod.tripartie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fetch**](TransactionTemplatesApi.md#fetch) | **GET** /api/web/transaction-templates/ | Fetch
[**create**](TransactionTemplatesApi.md#create) | **POST** /api/web/transaction-templates/ | Create


# **fetch**
> ModelTransactionTemplate fetch(externalId, tripartieId)

Fetch

Fetch a Transaction template by its External ID or Tripartie ID.<br /> You MUST provide either <code>external-id</code> or <code>tripartie-id</code>, but not both. 

### Example 
```dart
import 'package:tripartie_webapi_dartclient/api.dart';
// TODO Configure API key authorization: ClientIdAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ClientIdAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ClientIdAuth').apiKeyPrefix = 'Bearer';

final transactionTemplatesApi = TransactionTemplatesApi();
final externalId = 'template-87'; // String | The Transaction template's External ID.

try { 
    final result = transactionTemplatesApi.fetch(externalId);
    print(result);
} catch (e) {
    print('Exception when calling TransactionTemplatesApi->fetch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **externalId** | **String**| The Transaction template's External ID. | [optional] 
 **tripartieId** | **int**| The Transaction template's Tripartie ID. | [optional] 

### Return type

[**ModelTransactionTemplate**](ModelTransactionTemplate.md)

### Authorization

[ClientIdAuth](../README.md#ClientIdAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
> ModelTransactionTemplate create(requestCreateTransactionTemplate)

Create

Create a Transaction template.<br /> You MUST provide either sellerExternalId or sellerTripartieId but not both 

### Example 
```dart
import 'package:tripartie_webapi_dartclient/api.dart';
// TODO Configure API key authorization: ClientIdAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ClientIdAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ClientIdAuth').apiKeyPrefix = 'Bearer';

final transactionTemplatesApi = TransactionTemplatesApi();
final requestCreateTransactionTemplate = RequestCreateTransactionTemplate(); // RequestCreateTransactionTemplate | 

try { 
    final result = transactionTemplatesApi.create(requestCreateTransactionTemplate);
    print(result);
} catch (e) {
    print('Exception when calling TransactionTemplatesApi->create: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestCreateTransactionTemplate** | [**RequestCreateTransactionTemplate**](RequestCreateTransactionTemplate.md)|  | 

### Return type

[**ModelTransactionTemplate**](ModelTransactionTemplate.md)

### Authorization

[ClientIdAuth](../README.md#ClientIdAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

