# swagger.model.InvoiceResource

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billingAddress1** | **String** | Line one of the customer&#39;s billing address | [optional] [default to null]
**billingAddress2** | **String** | Line two of the customer&#39;s billing address | [optional] [default to null]
**billingCityName** | **String** | The city for the customer&#39;s billing address | [optional] [default to null]
**billingCountryName** | **String** | The country for the customer&#39;s billing address | [optional] [default to null]
**billingFullName** | **String** | The customer&#39;s name for the billing address | [optional] [default to null]
**billingPostalCode** | **String** | The postal code for the customer&#39;s billing address | [optional] [default to null]
**billingStateName** | **String** | The state for the customer&#39;s billing address | [optional] [default to null]
**cartId** | **String** | The guid of the cart this invoice came from | [optional] [default to null]
**createdDate** | **int** | The date the invoice was created, unix timestamp in seconds | [optional] [default to null]
**currency** | **String** | The code for the currency invoice prices are in | [optional] [default to null]
**currentFulfillmentStatus** | **String** | The fulfillment status of the invoice | [optional] [default to null]
**currentPaymentStatus** | **String** | The payment status of the invoice | [optional] [default to null]
**discount** | **num** | The amount of money saved through coupons | [optional] [default to null]
**email** | **String** | The customer&#39;s email address | [optional] [default to null]
**externalRef** | **String** | An external reference to filter on | [optional] [default to null]
**fedTax** | **num** | The amount of federal tax added | [optional] [default to null]
**grandTotal** | **num** | The final price of the invoice | [optional] [default to null]
**id** | **int** | The id of the invoice | [optional] [default to null]
**invoiceNumber** | **String** | A reference number for the invoice | [optional] [default to null]
**items** | [**List&lt;InvoiceItemResource&gt;**](InvoiceItemResource.md) | A list of items within the invoice | [optional] [default to []]
**namePrefix** | **String** | The customer&#39;s name prefix | [optional] [default to null]
**orderNotes** | **String** | Notes about the order | [optional] [default to null]
**parentInvoiceId** | **int** | The id of an invoice this is a child of | [optional] [default to null]
**paymentMethodId** | **int** | The id of a saved payment method used to pay for the invoice | [optional] [default to null]
**phone** | **String** | The customer&#39;s phone number | [optional] [default to null]
**phoneNumber** | **String** | The customer&#39;s phone number | [optional] [default to null]
**remainingBalance** | **num** | The remaining price of the invoice (after any payments made so far) | [optional] [default to null]
**shipping** | **num** | The shipping cost | [optional] [default to null]
**shippingAddress1** | **String** | Line one of the customer&#39;s shipping address | [optional] [default to null]
**shippingAddress2** | **String** | Line two of the customer&#39;s shipping address | [optional] [default to null]
**shippingCityName** | **String** | The city for the customer&#39;s shipping address | [optional] [default to null]
**shippingCountryName** | **String** | The country for the customer&#39;s shipping address | [optional] [default to null]
**shippingFullName** | **String** | The customer&#39;s name for the shipping address | [optional] [default to null]
**shippingPostalCode** | **String** | The postal code for the customer&#39;s shipping address | [optional] [default to null]
**shippingStateName** | **String** | The state for the customer&#39;s shipping address | [optional] [default to null]
**sort** | **int** | A number to use in sorting items. default 500. | [optional] [default to null]
**stateTax** | **num** | The amount of state tax added | [optional] [default to null]
**subtotal** | **num** | The sum price of all items before shipping, coupons and tax | [optional] [default to null]
**updatedDate** | **int** | The date the invoice was last updated, unix timestamp in seconds | [optional] [default to null]
**user** | [**SimpleUserResource**](SimpleUserResource.md) | The owner of the invoice | [optional] [default to null]
**vendorId** | **int** | The id of the vendor | [optional] [default to null]
**vendorName** | **String** | The name of the invoice | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


