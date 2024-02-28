# NiumClient::Payout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audit_id** | **Integer** | The audit Id must be taken from [Exchange Rate Lock and Hold](ref:exchangeratelockandhold) API. | [optional] |
| **destination_amount** | **Float** | This field accepts the destination amount for remittance. Either the source or the destination amount is mandatory.  Allowed decimal limit is 2. | [optional] |
| **pre_screening** | **Boolean** | This field indicates if compliance checks are to be done at the time of payout creation. This field is applicable only for scheduled and Post-Funded payouts. | [optional] |
| **scheduled_payout_date** | **String** | This field accepts scheduled payout date in yyyy-MM-dd format | [optional] |
| **service_time** | **String** | This field should denote the date of providing of service/export in yyyy-MM-dd format | [optional] |
| **source_amount** | **Float** | This field accepts the source amount for remittance. Either the source or the destination amount is mandatory.  Allowed decimal limit is 2. | [optional] |
| **source_currency** | **String** | This field accepts the source currency for remittance. | [optional] |
| **swift_fee_type** | **String** | This field accepts the swift fee type and defines who will bear the SWIFT charges for the given transaction. Clients can send any of the below values basis which, they will be charged for the SWIFT transaction. In case this field is absent SHA will be applied by default.  SHA - SWIFT charges shared by the customer and beneficiary OUR - SWIFT charges borne by the customer  Note: Clients should make sure that fee template is configured for each of the swift fee type. To know if the template is configured, clients should call [Fee Details](/apis/reference/feedetails) API | [optional] |
| **trade_order_id** | **String** | This field should denote the invoice number relevant to the transaction | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Payout.new(
  audit_id: 112,
  destination_amount: 0,
  pre_screening: false,
  scheduled_payout_date: 2022-11-29,
  service_time: 2022-11-29,
  source_amount: 100,
  source_currency: INR,
  swift_fee_type: BEN,
  trade_order_id: TR012345
)
```

