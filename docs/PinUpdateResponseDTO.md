# NiumClient::PinUpdateResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | This field will contain the status of the request after processing. It shall be success if the pin set/change is successful. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PinUpdateResponseDTO.new(
  status: success
)
```

