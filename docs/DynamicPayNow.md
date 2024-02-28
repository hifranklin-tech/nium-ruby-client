# NiumClient::DynamicPayNow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uen** | **String** | This field contains the UEN number associated with NIUM PayNow account. | [optional] |
| **type** | **String** | This field contains the type of payment method such as staticPayNow, dynamicPayNow, or bankTransfer. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::DynamicPayNow.new(
  uen: null,
  type: null
)
```

