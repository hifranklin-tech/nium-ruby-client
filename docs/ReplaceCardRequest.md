# NiumClient::ReplaceCardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_expiry** | **String** | The expiry date is applicable only for Virtual cards and not applicable for physical cards. This field is in MMYY format. For Virtual cards, the expiry date can be a maximum of 5 years from when the API is used. | [optional] |
| **card_fee_currency_code** | **String** | This field accepts 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) in which the client wants to levy the card issuance fee. |  |
| **plastic_id** | **String** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ReplaceCardRequest.new(
  card_expiry: 1124,
  card_fee_currency_code: SGD,
  plastic_id: null
)
```

