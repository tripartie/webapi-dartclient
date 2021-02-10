# tripartie_webapi_dartclient.model.ModelTransactionTemplate

## Load the model package
```dart
import 'package:tripartie_webapi_dartclient/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The Transaction template's Tripartie ID. | [optional] 
**permalink** | **String** | The template permalink. <strong>This is what you need for the Secured Payment button.</strong> | [optional] 
**title** | **String** | The title. | [optional] 
**description** | **String** | The description. | [optional] 
**externalId** | **String** | The Transaction template's External ID. | [optional] 
**sellerExternalId** | **String** | The Seller's External ID. | [optional] 
**sellerTripartieId** | **String** | The Seller's Tripartie ID. | [optional] 
**subTotal** | **int** | The price, in cents. | [optional] 
**currency** | **String** | The currency code (ISO 4217). | [optional] 
**flow** | **String** | The flow. | [optional] 
**buyerFees** | **int** | The buyer's fees, in cents. | [optional] 
**buyerTotal** | **int** | The buyer's total, in cents. | [optional] 
**sellerFees** | **int** | The seller's fees, in cents. | [optional] 
**sellerTotal** | **int** | The seller's total, in cents. | [optional] 
**adUrl** | **String** | The original Ad's URL. | [optional] 
**allowPriceChange** | **bool** | Allow price negociation? | [optional] 
**hasPicture** | **bool** | Has a picture? | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


