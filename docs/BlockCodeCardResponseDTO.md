# NiumClient::BlockCodeCardResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | This field will contain the status of the request after processing. It shall be success if the block/unblock is successful. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BlockCodeCardResponseDTO.new(
  status: Success
)
```

