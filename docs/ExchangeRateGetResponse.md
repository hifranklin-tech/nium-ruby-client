# NiumClient::ExchangeRateGetResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **average** | **Float** |  | [optional] |
| **min** | **Float** |  | [optional] |
| **max** | **Float** |  | [optional] |
| **time** | **Time** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ExchangeRateGetResponse.new(
  average: 1.634793477,
  min: 1.625575716,
  max: 1.689794369,
  time: 2022-03-15T06:00Z
)
```

