# NiumClient::AutoSweepBankDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_details** | [**BankAccountDetails**](BankAccountDetails.md) |  | [optional] |
| **client_registered_address** | [**RegisteredAddress**](RegisteredAddress.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AutoSweepBankDetails.new(
  bank_account_details: null,
  client_registered_address: null
)
```

