# NiumClient::ConversionCreationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_comment** | **String** | Free text comment for clients to record and track the conversion. | [optional] |
| **quote_id** | **String** | Unique identifier of the quote. | [optional] |
| **source_amount** | **Float** | The source amount to be converted to the destination currency. | [optional] |
| **destination_amount** | **Float** | The amount needed in the destination currency. | [optional] |
| **source_currency_code** | **String** | 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the source amount. | [optional] |
| **destination_currency_code** | **String** | 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the destination amount. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ConversionCreationRequest.new(
  customer_comment: Converting SGD to INR during Travel.,
  quote_id: quote_1234567890abcdefABCDEF,
  source_amount: 13.42,
  destination_amount: 13.42,
  source_currency_code: USD,
  destination_currency_code: SGD
)
```

