# tripartie_webapi_dartclient.model.RequestCreateTransactionTemplate

## Load the model package
```dart
import 'package:tripartie_webapi_dartclient/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | The title. | 
**description** | **String** | The description. | [optional] 
**externalId** | **String** | The Transaction template's External ID. | [optional] 
**sellerExternalId** | **String** | The Seller's External ID. | [optional] 
**sellerTripartieId** | **String** | The Seller's Tripartie ID. | [optional] 
**subTotal** | **int** | The price, in cents. | 
**currency** | **String** | The currency code (ISO 4217). | 
**flow** | **String** | The desired flow. | 
**adUrl** | **String** | The original Ad's URL. | [optional] 
**allowPriceChange** | **bool** | Allow price negociation? | [optional] [default to true]
**picture** | **String** | Ad picture, in <strong>base64 format</strong>.<br /> Max initial file size: 2Mo.<br /> <strong>You MUST send only the binary code.</strong> Do not send the first part that some converters add into the binary code which is <code>data:image/png;base64,</code>.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


