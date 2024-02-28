# NiumClient::BlockAndReplaceCardResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **new_card_hash_id** | **String** |  | [optional] |
| **masked_card_number** | **String** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BlockAndReplaceCardResponseDTO.new(
  status: null,
  message: null,
  new_card_hash_id: null,
  masked_card_number: null
)
```

