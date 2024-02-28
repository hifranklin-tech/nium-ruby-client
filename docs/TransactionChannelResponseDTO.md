# NiumClient::TransactionChannelResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel** | **String** | This field contains the individual channel name. | [optional] |
| **status** | **String** | This field contains the status of the individual channel. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::TransactionChannelResponseDTO.new(
  channel: IN_STORE,
  status: Inactive
)
```

