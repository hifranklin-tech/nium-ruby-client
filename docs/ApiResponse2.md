# NiumClient::ApiResponse2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | This flag indicates the success of the request. | [optional] |
| **message** | **String** | This field will return the success message if the limit updated successfully. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ApiResponse2.new(
  success: true,
  message: Limits updated successfully
)
```

