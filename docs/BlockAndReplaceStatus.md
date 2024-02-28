# NiumClient::BlockAndReplaceStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **block_reason** | **String** | This field contains the card block reason. | [optional] |
| **replaced_on** | **String** | This field contains the card replacement date | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BlockAndReplaceStatus.new(
  block_reason: cardLost,
  replaced_on: 2022-01-01
)
```

