# NiumClient::ClientCustomTagDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | This field accepts the Client&#39;s custom key of the tag. The maximum key length limit is 128 characters. | [optional] |
| **value** | **String** | This field accepts the Client&#39;s custom value of the tag. The maximum value length limit is 256 characters. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ClientCustomTagDTO.new(
  key: null,
  value: null
)
```

