# NiumClient::ExchangeRateV2ResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_amount** | **Float** | The credited amount. | [optional] |
| **destination_currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the destination amount. | [optional] |
| **ecb_fx_rate** | **Float** | The ecb exchange rate fetched for the conversion. This field is only applicable for EU and UK. | [optional] |
| **exchange_rate** | **Float** | The exchange rate fetched for the conversion. | [optional] |
| **expiry_date** | **String** | Timestamp till which the quoted rate is valid. The timezone is UTC +00. | [optional] |
| **markup_amount** | **Float** | In case source or destination amount is provided the markup amount will be calculated using markupRate. | [optional] |
| **markup_rate** | **Float** | This is the markup rate charged by NIUM. | [optional] |
| **net_exchange_rate** | **Float** | This is exchangeRate subtracted by the markupRate. | [optional] |
| **quote_id** | **String** | Unique quote Id for the exchange rate. | [optional] |
| **scaling_factor** | **Integer** | The netExchangeRate should be divided by the scaling factor to fetch the actual exchange rate. | [optional] |
| **source_amount** | **Float** | An amount to be converted. | [optional] |
| **source_currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the source amount. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ExchangeRateV2ResponseDto.new(
  destination_amount: 13.42,
  destination_currency_code: SGD,
  ecb_fx_rate: 1.349,
  exchange_rate: 1.349,
  expiry_date: 2021-03-09T06:46:03.000Z,
  markup_amount: 0.07,
  markup_rate: 0.006745,
  net_exchange_rate: 1.342255,
  quote_id: f3632302-1d41-4a40-b7a0-4c456dddbd9e,
  scaling_factor: 1,
  source_amount: 10,
  source_currency_code: USD
)
```

