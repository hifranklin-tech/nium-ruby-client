# NiumClient::CustomerApiError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | **Array&lt;String&gt;** | This field will return an error message if any error occurs or blank if request is successfully executed. | [optional] |
| **message** | **String** | This field will return a message if a request is successfully executed or blank in case of an error. | [optional] |
| **status** | **String** | This field returns an HTTP status code according to the success and failure of the request. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomerApiError.new(
  errors: [&quot;field1 is not valid&quot;,&quot;field2 is not valid&quot;],
  message: Error message descriptor.,
  status: BAD_REQUEST
)
```

