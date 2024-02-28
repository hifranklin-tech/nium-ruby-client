# NiumClient::LockStatusUpdateResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | This field will contain the status of the request after processing. It shall be success if the lock/unlock is successful. | [optional] |
| **message** | **String** | This field will return a success message if the request processes successfully else this will return an error message. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::LockStatusUpdateResponseDTO.new(
  status: Success,
  message: null
)
```

