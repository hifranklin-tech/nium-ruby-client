# NiumClient::ProductApiError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | **Array&lt;String&gt;** | List of errors occurred. | [optional] |
| **message** | **String** | Error message descriptor. | [optional] |
| **status** | **String** | HttpStatus of the request : BAD_REQUEST, INTERNAL_SERVER_ERROR. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ProductApiError.new(
  errors: [&quot;field1 is not valid&quot;,&quot;field2 is not valid&quot;],
  message: Error message descriptor.,
  status: BAD_REQUEST
)
```

