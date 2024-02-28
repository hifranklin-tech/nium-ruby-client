# NiumClient::PaymentIdTagRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | [**Array&lt;WalletPaymentIdsTagRequestDTO2&gt;**](WalletPaymentIdsTagRequestDTO2.md) | This object accepts the user defined key-value pairs. The maximum number of tags allowed is 15. |  |
| **currency_code** | **String** | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes). |  |
| **unique_payment_id** | **String** | This field contains the unique virtual account assigned to customer. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PaymentIdTagRequestDTO.new(
  tags: null,
  currency_code: null,
  unique_payment_id: null
)
```

