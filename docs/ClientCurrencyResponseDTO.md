# NiumClient::ClientCurrencyResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization_order** | **Integer** | This is the authorization order based on priority for available currencies. The order starts from 0 as a highest priority. | [optional] |
| **currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes). | [optional] |
| **decimal_unit** | **Integer** | This field contains the decimal unit which will be used for rounding off, for example 0 | [optional] |
| **fx_sell_allowed** | **Boolean** | This field indicates if forex sell is allowed or not for the currency. | [optional] |
| **remittance_allowed** | **Boolean** | This field specifies if the remittance is allowed with the respective currency or not. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ClientCurrencyResponseDTO.new(
  authorization_order: null,
  currency_code: SGD,
  decimal_unit: 0,
  fx_sell_allowed: false,
  remittance_allowed: false
)
```

