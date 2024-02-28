# NiumClient::AccountResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | **String** | This field contains the name of the currency pool, for example, \&quot;currency pool\&quot;. | [optional] |
| **balance** | **Float** | This field contains the available balance in the pool mentioned in accountType field. | [optional] |
| **created_at** | **Time** | This field contains the date and time of create for an account type. | [optional] |
| **currency** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) in which the balance is specified. | [optional] |
| **is_default** | **String** | This flag will be true only for base currency and false for other currencies. | [optional] |
| **updated_at** | **Time** | This field contains the date and time of last update for an account type. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AccountResponseDTO.new(
  account_type: CLIENT_POOL,
  balance: 0,
  created_at: null,
  currency: 0.0,
  is_default: true,
  updated_at: null
)
```

