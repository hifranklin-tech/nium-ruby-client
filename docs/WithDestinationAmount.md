# NiumClient::WithDestinationAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_amount** | **Float** | The amount needed in the destination currency. This value is for reference only and will not be used as the actual conversion amount. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::WithDestinationAmount.new(
  destination_amount: 13.42
)
```

