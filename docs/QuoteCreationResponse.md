# NiumClient::QuoteCreationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the quote. | [optional] |
| **net_exchange_rate** | **Float** | Exchange rate with markup to be used for the conversion. | [optional] |
| **expiry_time** | **Time** | Expiry time of the quote in UTC. | [optional] |
| **source_currency_code** | **String** | 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the source amount. | [optional] |
| **destination_currency_code** | **String** | 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the destination amount. | [optional] |
| **quote_type** | [**QuoteType**](QuoteType.md) |  | [optional] |
| **conversion_schedule** | [**ConversionSchedule**](ConversionSchedule.md) |  | [optional][default to &#39;immediate&#39;] |
| **lock_period** | [**LockPeriod**](LockPeriod.md) |  | [optional][default to &#39;5_mins&#39;] |
| **exchange_rate** | **Float** | Foreign exchange market rate for the currency pair, used as the benchmark for quote calculation. | [optional] |
| **markup_rate** | **Float** | Markup rate applied to the exchange rate for the conversion by Nium. | [optional] |
| **ecb_exchange_rate** | **Float** | Europe Central Bank&#39;s exchange rate for this currency pair, provided only for EU and UK. | [optional] |
| **rate_capture_time** | **Time** | Time in UTC at which exchange rate was obtained from the rate provider | [optional] |
| **source_amount** | **Float** | The source amount to be converted to the destination currency. This value is for reference only and will not be used as the actual conversion amount. | [optional] |
| **destination_amount** | **Float** | The amount needed in the destination currency. This value is for reference only and will not be used as the actual conversion amount. | [optional] |
| **destination_markup_amount** | **Float** | The amount charged in the destination currency as the markup for the conversion. | [optional] |
| **created_time** | **Time** | Time of creation in UTC. | [optional] |
| **is_rate_stale** | **Boolean** | Indicates whether the exchange rate provided is stale. A value of \&quot;true\&quot; suggests that the exchange rate information is no longer current. Clients can use this flag to make informed decisions based on the freshness of the exchange rate. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::QuoteCreationResponse.new(
  id: quote_1234567890abcdefABCDEF,
  net_exchange_rate: 1.342255231,
  expiry_time: 2021-03-09T06:46:03Z,
  source_currency_code: USD,
  destination_currency_code: SGD,
  quote_type: null,
  conversion_schedule: null,
  lock_period: null,
  exchange_rate: 1.349324513,
  markup_rate: 0.006745677,
  ecb_exchange_rate: 1.349324513,
  rate_capture_time: 2021-03-09T06:46:03Z,
  source_amount: 13.42,
  destination_amount: 13.42,
  destination_markup_amount: 0.07,
  created_time: 2021-03-09T06:46:03Z,
  is_rate_stale: null
)
```

