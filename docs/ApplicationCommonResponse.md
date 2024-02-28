# NiumClient::ApplicationCommonResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_status** | **String** | application status of application | [optional] |
| **message** | **String** |  | [optional] |
| **error_details** | [**Array&lt;ErrorCodeMapping&gt;**](ErrorCodeMapping.md) |  | [optional] |
| **errors** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ApplicationCommonResponse.new(
  application_status: null,
  message: null,
  error_details: null,
  errors: null
)
```

