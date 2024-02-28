# NiumClient::ApiError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Http status code of the response. | [optional] |
| **message** | **String** | Response message. | [optional] |
| **errors** | **Array&lt;String&gt;** | Error description if any. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ApiError.new(
  status: 200 OK,
  message: Transaction business updated successfully.,
  errors: [&quot;field1 is not valid&quot;,&quot;field2 is not valid&quot;]
)
```

