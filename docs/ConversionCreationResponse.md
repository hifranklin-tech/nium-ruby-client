# NiumClient::ConversionCreationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the conversion. | [optional] |
| **status** | [**ConversionStatus**](ConversionStatus.md) |  | [optional] |
| **conversion_time** | **Time** | Scheduled settlement time in UTC. This is significant for future-dated conversions (e.g., nextDay, 2days). Ensure sufficient funds in the customer&#39;s wallet before this time to avoid cancellation and related charges. | [optional] |
| **source_currency_code** | **String** | 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the source amount. | [optional] |
| **destination_currency_code** | **String** | 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the destination amount. | [optional] |
| **source_amount** | **Float** | The source amount to be converted to the destination currency. | [optional] |
| **destination_amount** | **Float** | The amount needed in the destination currency. | [optional] |
| **quote_id** | **String** | Unique identifier of the quote. | [optional] |
| **net_exchange_rate** | **Float** | Exchange rate with markup to be used for the conversion. | [optional] |
| **exchange_rate** | **Float** | Foreign exchange market rate for the currency pair, used as the benchmark for quote calculation. | [optional] |
| **markup_rate** | **Float** | Markup rate applied to the exchange rate for the conversion by Nium. | [optional] |
| **destination_markup_amount** | **Float** | The amount charged in the destination currency as the markup for the conversion. | [optional] |
| **system_reference_number** | **String** | Unique identifier for wallet financial activities used in all Nium reports and dashboards. Refer to [doc](https://docs.nium.com/apis/reference/clienttransactions) for details. | [optional] |
| **customer_comment** | **String** | Free text comment for clients to record and track the conversion. | [optional] |
| **cancellation_fee** | **Float** | The fee charged when executing the cancellation. | [optional] |
| **cancellation_fee_currency_code** | **String** | 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the cancellation fee. | [optional] |
| **cancellation_reason** | [**CancellationReason**](CancellationReason.md) |  | [optional] |
| **cancellation_comment** | **String** | Free text comment for clients to record and track cancellation of the conversion. | [optional] |
| **cancellation_fee_system_reference_number** | **String** | Unique identifier for wallet financial activities used in all Nium reports and dashboards. Refer to [doc](https://docs.nium.com/apis/reference/clienttransactions) for details. | [optional] |
| **created_time** | **Time** | Time of creation in UTC. | [optional] |
| **updated_time** | **Time** | Time of update in UTC. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ConversionCreationResponse.new(
  id: conversion_1234567890abcdefABCDEF,
  status: null,
  conversion_time: 2021-03-09T06:46:03Z,
  source_currency_code: USD,
  destination_currency_code: SGD,
  source_amount: 13.42,
  destination_amount: 13.42,
  quote_id: quote_1234567890abcdefABCDEF,
  net_exchange_rate: 1.342255231,
  exchange_rate: 1.349324513,
  markup_rate: 0.006745677,
  destination_markup_amount: 0.07,
  system_reference_number: WFT1234567890,
  customer_comment: Converting SGD to INR during Travel.,
  cancellation_fee: null,
  cancellation_fee_currency_code: null,
  cancellation_reason: null,
  cancellation_comment: Cancelling due to change of plans.,
  cancellation_fee_system_reference_number: 1234567890F,
  created_time: 2021-03-09T06:46:03Z,
  updated_time: 2021-03-09T06:46:03Z
)
```

