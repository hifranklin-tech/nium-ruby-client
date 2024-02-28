# NiumClient::Payment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creditor_account** | **String** |  | [optional] |
| **creditor_currency** | **String** |  | [optional] |
| **creditor_name** | **String** |  | [optional] |
| **debtor_account** | **String** |  | [optional] |
| **debtor_currency** | **String** |  | [optional] |
| **instructed_amount** | **String** |  | [optional] |
| **instructed_currency** | **String** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Payment.new(
  creditor_account: null,
  creditor_currency: null,
  creditor_name: null,
  debtor_account: null,
  debtor_currency: null,
  instructed_amount: null,
  instructed_currency: null
)
```

