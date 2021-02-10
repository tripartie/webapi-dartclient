# tripartie_webapi_dartclient.api.WebhooksApi

## Load the API package
```dart
import 'package:tripartie_webapi_dartclient/api.dart';
```

All URIs are relative to *https://platform.preprod.tripartie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validate**](WebhooksApi.md#validate) | **GET** /api/web/webhooks/ | Validate
[**yourEndpointPost**](WebhooksApi.md#yourEndpointPost) | **POST** /your-endpoint/ | Webhook


# **validate**
> ModelWebhook validate(eventType, transactionTemplateExternalId, transactionTemplateTripartieId, eventTimestamp)

Validate

Check a webhook's authenticity 

### Example 
```dart
import 'package:tripartie_webapi_dartclient/api.dart';
// TODO Configure API key authorization: ClientIdAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ClientIdAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ClientIdAuth').apiKeyPrefix = 'Bearer';

final webhooksApi = WebhooksApi();
final eventType = proposition_sent; // String | The webhook type.
final transactionTemplateExternalId = 'template-87'; // String | The Transaction template's External ID.
final transactionTemplateTripartieId = 24; // int | The Transaction template's Tripartie ID.
final eventTimestamp = 1612893903; // int | The event timestamp.

try { 
    final result = webhooksApi.validate(eventType, transactionTemplateExternalId, transactionTemplateTripartieId, eventTimestamp);
    print(result);
} catch (e) {
    print('Exception when calling WebhooksApi->validate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventType** | **String**| The webhook type. | [optional] 
 **transactionTemplateExternalId** | **String**| The Transaction template's External ID. | [optional] 
 **transactionTemplateTripartieId** | **int**| The Transaction template's Tripartie ID. | [optional] 
 **eventTimestamp** | **int**| The event timestamp. | [optional] 

### Return type

[**ModelWebhook**](ModelWebhook.md)

### Authorization

[ClientIdAuth](../README.md#ClientIdAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
