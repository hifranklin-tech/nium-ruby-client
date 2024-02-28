# NiumClient::ExchangeRatesGetResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_currency_code** | **String** | 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the source amount. | [optional] |
| **destination_currency_code** | **String** | 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the destination amount. | [optional] |
| **start** | **Time** |  | [optional] |
| **_end** | **Time** |  | [optional] |
| **window** | [**Window**](Window.md) |  | [optional][default to &#39;1_day&#39;] |
| **exchange_rates** | [**Array&lt;ExchangeRateGetResponse&gt;**](ExchangeRateGetResponse.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ExchangeRatesGetResponse.new(
  source_currency_code: USD,
  destination_currency_code: SGD,
  start: null,
  _end: null,
  window: null,
  exchange_rates: null
)
```

