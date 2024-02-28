# NiumClient::CommonResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **error_details** | [**Array&lt;ErrorCodeMapping&gt;**](ErrorCodeMapping.md) |  | [optional] |
| **errors** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CommonResponse.new(
  status: null,
  message: null,
  error_details: null,
  errors: null
)
```

