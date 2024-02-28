# NiumClient::Addresses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_address** | [**BusinessAddress**](BusinessAddress.md) |  | [optional] |
| **registered_address** | [**RegisteredAddress**](RegisteredAddress.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Addresses.new(
  business_address: null,
  registered_address: null
)
```

