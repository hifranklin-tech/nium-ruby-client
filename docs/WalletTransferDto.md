# NiumClient::WalletTransferDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | This field is the amount in source currency which is to be transferred. If destinationAmount is provided, it will take preference over this field. | [optional] |
| **customer_comments** | **String** | This field accepts customer comments for the balance transfer within wallet. Maximum character limit is 512. | [optional] |
| **destination_amount** | **Float** | This field is the amount in destination currency which is to be transferred. If provided, amount field is not considered. If this field is skipped, amount is considered in source currency. | [optional] |
| **destination_currency** | **String** | This field accepts the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the destination amount. |  |
| **quote_id** | **String** |  | [optional] |
| **source_currency** | **String** | This field accepts the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the source amount. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::WalletTransferDto.new(
  amount: 10,
  customer_comments: Changed SGD to INR during Travel,
  destination_amount: 20,
  destination_currency: INR,
  quote_id: UUID,
  source_currency: SGD
)
```

