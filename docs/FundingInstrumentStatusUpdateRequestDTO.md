# NiumClient::FundingInstrumentStatusUpdateRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | The action value to simulate the status of the funding instrument. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::FundingInstrumentStatusUpdateRequestDTO.new(
  action: MICRODEPOSIT_REVERSED
)
```

