# NiumClient::PaymentIdRequestDTO2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | [**Array&lt;WalletPaymentIdsTagRequestDTO&gt;**](WalletPaymentIdsTagRequestDTO.md) | This object contains the user defined key-value pairs provided by the client. The maximum number of tags allowed is 15. | [optional] |
| **account_category** | **String** | This field accepts the account category while assigning a virtual account | [optional] |
| **bank_name** | **String** | This field accepts the bank name. |  |
| **currency_code** | **String** | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes). |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PaymentIdRequestDTO2.new(
  tags: null,
  account_category: null,
  bank_name: null,
  currency_code: null
)
```

