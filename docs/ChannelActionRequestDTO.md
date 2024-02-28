# NiumClient::ChannelActionRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Block or unblock the channel at a card level. Valid values are BLOCK and UNBLOCK. One channel can be blocked at a time. |  |
| **channel** | **String** | Channel which needs to be restricted.The valid values are IN_STORE, ONLINE, ATM, CROSS_BORDER, MAG_STRIPE. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ChannelActionRequestDTO.new(
  action: BLOCK,
  channel: IN_STORE
)
```

