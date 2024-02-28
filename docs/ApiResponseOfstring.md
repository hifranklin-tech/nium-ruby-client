# NiumClient::ApiResponseOfstring

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | This field will return the response message from the server. | [optional] |
| **code** | **String** | This field will return the HTTP status code with its interpretation. | [optional] |
| **errors** | **Array&lt;String&gt;** | Error description if any. | [optional] |
| **message** | **String** | This field will return the response message. | [optional] |
| **status** | **String** | This field signifies if the request was successful or has an error. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ApiResponseOfstring.new(
  body: Success,
  code: 200 OK,
  errors: null,
  message: Success,
  status: OK
)
```

