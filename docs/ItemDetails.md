# NiumClient::ItemDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_price** | **String** | This field is unit price and it will always be positive whole number | [optional] |
| **unit_quantity** | **String** | This field is unit quantity and it will always be positive whole number | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ItemDetails.new(
  unit_price: 1,
  unit_quantity: 1
)
```

