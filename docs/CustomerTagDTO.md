# NiumClient::CustomerTagDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | This field accepts the name of the tag. The maximum key length limit is 128 characters. | [optional] |
| **value** | **String** | This field accepts the value of the tag. The maximum value length limit is 256 characters. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomerTagDTO.new(
  key: null,
  value: null
)
```

