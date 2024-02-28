# NiumClient::BlockCodeDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** | This field accepts the reason for card block. It is required only in case of a permanent block [blockAction &#x3D; permanentBlock]. Otherwise, it is not necessary.The possible values are: fraud cardLost cardStolen damaged | [optional] |
| **block_action** | **String** | The field accepts the block action to be applied on the card.The possible values are: permanentBlock temporaryBlock unblock |  |
| **remarks** | **String** |  | [optional] |
| **comments** | **String** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BlockCodeDTO.new(
  reason: fraud,
  block_action: permanentBlock,
  remarks: null,
  comments: null
)
```

