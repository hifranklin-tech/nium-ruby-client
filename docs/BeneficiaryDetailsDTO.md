# NiumClient::BeneficiaryDetailsDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_name** | **String** | In some corridors, we will provide the beneficiary name registered with the bank. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BeneficiaryDetailsDTO.new(
  bank_account_name: null
)
```

