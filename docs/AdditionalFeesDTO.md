# NiumClient::AdditionalFeesDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_type** | **String** | This field accepts the fee type as FIXED (flat) or PERCENTAGE | [optional] |
| **fee_value** | **Float** | This field accepts the client&#39;s fee value to be added on existing fee value | [optional] |
| **fx_markup** | **Float** | This field accepts the client&#39;s additional fx markup rate to be added on existing fx markup | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AdditionalFeesDTO.new(
  fee_type: FIXED,
  fee_value: 2,
  fx_markup: 0.2
)
```

