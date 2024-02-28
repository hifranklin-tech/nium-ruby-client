# NiumClient::RoutingInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | This field accepts the routing code type. | [optional] |
| **value** | **String** | This field accepts the routing code value. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RoutingInfo.new(
  type: SORT_CODE,
  value: 200000
)
```

