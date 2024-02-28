# NiumClient::RemitterAccountWhiteList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | This field will return true if the remittance account is active else this will return false | [optional] |
| **remitter_account_number** | **String** | This field contains the remitter account number, for example, 9890098900 | [optional] |
| **remitter_allowed_currency** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the allowed remittance currencies. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RemitterAccountWhiteList.new(
  active: false,
  remitter_account_number: 9890098900,
  remitter_allowed_currency: null
)
```

