# NiumClient::WalletTransferResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_amount** | **Float** | Destination amount is the actual amount credited after deducting Fx and markup. | [optional] |
| **destination_currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the destination amount. | [optional] |
| **exchange_rate** | **Float** | Exchange rate between source and destination currencies. | [optional] |
| **markup_amount** | **Float** | Markup amount calculated on the transaction. | [optional] |
| **markup_rate** | **Float** | Cross-currency markup percentage levied by NIUM. | [optional] |
| **net_exchange_rate** | **Float** | Exchange rate between source and destination currencies derived after accounting for markup. The netExchangeRate should be divided by the scaling factor to fetch the actual exchange rate. | [optional] |
| **scaling_factor** | **Integer** | The netExchangeRate should be divided by the scaling factor to fetch the actual exchange rate. | [optional] |
| **source_amount** | **Float** | Source amount is the amount transferred by the customer. | [optional] |
| **source_currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the source amount. | [optional] |
| **system_reference_number** | **String** | Unique auth code generated for the transaction by the card issuance platform. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::WalletTransferResponseDto.new(
  destination_amount: 549.07,
  destination_currency_code: INR,
  exchange_rate: 54.934,
  markup_amount: 0.27,
  markup_rate: 0.027467,
  net_exchange_rate: 54.906533,
  scaling_factor: 1,
  source_amount: 10,
  source_currency_code: SGD,
  system_reference_number: CP2919853847
)
```

