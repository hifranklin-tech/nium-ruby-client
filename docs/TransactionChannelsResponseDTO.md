# NiumClient::TransactionChannelsResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channels** | [**Array&lt;TransactionChannelResponseDTO&gt;**](TransactionChannelResponseDTO.md) | This is an array which contains the different spend channels available for a card and their restriction status. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::TransactionChannelsResponseDTO.new(
  channels: null
)
```

