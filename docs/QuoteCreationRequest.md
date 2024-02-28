# NiumClient::QuoteCreationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_amount** | **Float** | The source amount to be converted to the destination currency. This value is for reference only and will not be used as the actual conversion amount. | [optional] |
| **destination_amount** | **Float** | The amount needed in the destination currency. This value is for reference only and will not be used as the actual conversion amount. | [optional] |
| **source_currency_code** | **String** | 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the source amount. |  |
| **destination_currency_code** | **String** | 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the destination amount. |  |
| **quote_type** | [**QuoteType**](QuoteType.md) |  |  |
| **conversion_schedule** | [**ConversionSchedule**](ConversionSchedule.md) |  | [optional][default to &#39;immediate&#39;] |
| **lock_period** | [**LockPeriod**](LockPeriod.md) |  | [optional][default to &#39;5_mins&#39;] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::QuoteCreationRequest.new(
  source_amount: 13.42,
  destination_amount: 13.42,
  source_currency_code: USD,
  destination_currency_code: SGD,
  quote_type: null,
  conversion_schedule: null,
  lock_period: null
)
```

