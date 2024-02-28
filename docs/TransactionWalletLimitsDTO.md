# NiumClient::TransactionWalletLimitsDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_wallet_limits** | [**Array&lt;TransactionLimitsDTO&gt;**](TransactionLimitsDTO.md) | This array contains all the limits applicable for each card. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::TransactionWalletLimitsDTO.new(
  transaction_wallet_limits: null
)
```

