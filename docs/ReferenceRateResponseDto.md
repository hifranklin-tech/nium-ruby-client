# NiumClient::ReferenceRateResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **as_of_date** | **String** | This field contains the date on which fx rate has to be calculated. The timezone is UTC +00. | [optional] |
| **card_scheme** | **String** | This field contains the card scheme provider name. | [optional] |
| **card_scheme_fx_rate** | **Float** | This is the fx rate from cards scheme. | [optional] |
| **card_scheme_fx_rate_last_updated_at** | **String** | Last updated timestamp of card scheme fx rate. The timezone is UTC +00. | [optional] |
| **card_scheme_fx_rate_with_fx_markup** | **Float** | This is the cards scheme fx rate with fx markup. | [optional] |
| **card_scheme_markup_over_ecb** | **Float** | The markup rate over ecb rate. Available for currencies listed in [Euro foreign exchange reference rates](https://www.ecb.europa.eu/stats/policy_and_exchange_rates/euro_reference_exchange_rates/html/index.en.html) | [optional] |
| **ecb_rate** | **Float** | The ecb exchange rate fetched for the conversion. Available for currencies listed in [Euro foreign exchange reference rates](https://www.ecb.europa.eu/stats/policy_and_exchange_rates/euro_reference_exchange_rates/html/index.en.html) | [optional] |
| **ecb_rate_last_updated_at** | **String** | Last updated timestamp of ecb rate. The timezone is UTC +00. Available for currencies listed in [Euro foreign exchange reference rates](https://www.ecb.europa.eu/stats/policy_and_exchange_rates/euro_reference_exchange_rates/html/index.en.html) | [optional] |
| **from_amount** | **Float** | An amount to be converted. | [optional] |
| **from_currency** | **String** | This field contains the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the source amount. | [optional] |
| **fx_markup** | **Float** | This is the fx markup rate. | [optional][default to 0] |
| **to_amount_with_ecb_rate** | **Float** | The ecb exchange rate with to amount. | [optional] |
| **to_amount_with_transaction_fee_and_fx_markup** | **Float** | The amount with transaction fee and fx markup rate. | [optional] |
| **to_currency** | **String** | This field contains the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the destination amount. | [optional] |
| **transaction_fee** | **Float** | This is the transaction fee. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ReferenceRateResponseDto.new(
  as_of_date: 2022-03-15T06:46:03.000Z,
  card_scheme: VISA,
  card_scheme_fx_rate: 1,
  card_scheme_fx_rate_last_updated_at: 2022-03-15T06:46:03.000Z,
  card_scheme_fx_rate_with_fx_markup: 1,
  card_scheme_markup_over_ecb: 0.349,
  ecb_rate: 1.349,
  ecb_rate_last_updated_at: 2022-03-15T06:46:03.000Z,
  from_amount: 1,
  from_currency: SGD,
  fx_markup: 1,
  to_amount_with_ecb_rate: 2.349,
  to_amount_with_transaction_fee_and_fx_markup: 1,
  to_currency: USD,
  transaction_fee: 0.1
)
```

