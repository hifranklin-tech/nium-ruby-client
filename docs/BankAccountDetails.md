# NiumClient::BankAccountDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** | Name of the beneficiary for the bank account. | [optional] |
| **account_number** | **String** | The bank account number. | [optional] |
| **bank_name** | **String** | Name of the bank. | [optional] |
| **currency** | **String** | The currency in which the auto sweep has to occur. | [optional] |
| **routing_type** | **String** | The routing type of the bank account. | [optional] |
| **routing_value** | **String** | The routing value of the bank account. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BankAccountDetails.new(
  account_name: null,
  account_number: null,
  bank_name: null,
  currency: null,
  routing_type: null,
  routing_value: null
)
```

