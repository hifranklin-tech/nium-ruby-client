# NiumClient::Labels

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acquirer_exemption_reason** | **String** |  | [optional] |
| **acs_outcome** | **String** |  | [optional] |
| **ecommerce_indicator** | **String** |  | [optional] |
| **multi_clearing_sequence_ind** | **String** |  | [optional] |
| **recurring_transaction_indicator** | **String** |  | [optional] |
| **sca_indicator** | **String** |  | [optional] |
| **sca_reason_indicator** | **String** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Labels.new(
  acquirer_exemption_reason: null,
  acs_outcome: null,
  ecommerce_indicator: null,
  multi_clearing_sequence_ind: null,
  recurring_transaction_indicator: null,
  sca_indicator: null,
  sca_reason_indicator: null
)
```

