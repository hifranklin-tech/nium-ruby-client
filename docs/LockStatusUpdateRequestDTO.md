# NiumClient::LockStatusUpdateRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | The field accepts the lock action to be applied on the card.The possible values are: lock unlock |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::LockStatusUpdateRequestDTO.new(
  action: lock
)
```

