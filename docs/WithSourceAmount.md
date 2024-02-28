# NiumClient::WithSourceAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_amount** | **Float** | The source amount to be converted to the destination currency. This value is for reference only and will not be used as the actual conversion amount. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::WithSourceAmount.new(
  source_amount: 13.42
)
```

