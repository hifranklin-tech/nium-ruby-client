# NiumClient::ApiError2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | **Array&lt;String&gt;** | List of errors occurred. | [optional] |
| **message** | **String** | Error message descriptor. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ApiError2.new(
  errors: [&quot;field1 is not valid&quot;,&quot;field2 is not valid&quot;],
  message: Error message descriptor.
)
```

