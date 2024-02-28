# NiumClient::ConversionCancelResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the conversion. | [optional] |
| **status** | [**ConversionStatus**](ConversionStatus.md) |  | [optional] |
| **system_reference_number** | **String** | Unique identifier for wallet financial activities used in all Nium reports and dashboards. Refer to [doc](https://docs.nium.com/apis/reference/clienttransactions) for details. | [optional] |
| **cancellation_fee** | **Float** | The fee charged when executing the cancellation. | [optional] |
| **cancellation_fee_currency_code** | **String** | 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the cancellation fee. | [optional] |
| **cancellation_comment** | **String** | Free text comment for clients to record and track cancellation of the conversion. | [optional] |
| **cancellation_fee_system_reference_number** | **String** | Unique identifier for wallet financial activities used in all Nium reports and dashboards. Refer to [doc](https://docs.nium.com/apis/reference/clienttransactions) for details. | [optional] |
| **cancellation_reason** | [**CancellationReason**](CancellationReason.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ConversionCancelResponse.new(
  id: conversion_1234567890abcdefABCDEF,
  status: null,
  system_reference_number: WFT1234567890,
  cancellation_fee: null,
  cancellation_fee_currency_code: null,
  cancellation_comment: Cancelling due to change of plans.,
  cancellation_fee_system_reference_number: 1234567890F,
  cancellation_reason: null
)
```

