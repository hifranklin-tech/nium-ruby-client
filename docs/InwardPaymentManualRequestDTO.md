# NiumClient::InwardPaymentManualRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_info** | **Hash&lt;String, String&gt;** | This object accepts the additional information | [optional] |
| **amount** | **Float** | This field contains the amount. | [optional] |
| **bank_reference_number** | **String** | This field contains the bank reference number | [optional] |
| **bank_source** | **String** | This field contains the source of payment/fund. | [optional] |
| **country** | **String** | This field contains the country. | [optional] |
| **currency** | **String** | This field contains the 3-letter currency code. | [optional] |
| **icc_expiry** | **String** | This field contains the expiry time for ICC. | [optional] |
| **instruction_type** | **String** | This field contains the payment instruction type | [optional] |
| **narrative** | **String** | This field contains the narrative. | [optional] |
| **remitter_account_number** | **String** | This field contains the remitter account number. | [optional] |
| **remitter_bank_code** | **String** | This field contains the remitter bank code. | [optional] |
| **remitter_bank_name** | **String** | This field contains the remitter bank name. | [optional] |
| **remitter_name** | **String** | This field contains the remitter name. | [optional] |
| **remitter_name_local_language** | **String** | This field contains the remitter name local language. | [optional] |
| **transaction_id** | **String** | This field contains the transaction reference number/ID. | [optional] |
| **transaction_source** | **String** | This field contains the ICC transaction source. | [optional] |
| **type** | **String** | This field contains the ICC entry type. | [optional] |
| **virtual_account_number** | **String** | This field contains the virtual account number. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::InwardPaymentManualRequestDTO.new(
  additional_info: null,
  amount: 10,
  bank_reference_number: 712347512376,
  bank_source: DBS_SG,
  country: SG,
  currency: SGD,
  icc_expiry: 2023-07-05 07:26:38.026,
  instruction_type: PROCESS,
  narrative: FROM NIUM,
  remitter_account_number: HLFX11029100808072,
  remitter_bank_code: BYLADEM1KUB,
  remitter_bank_name: DBS_SG,
  remitter_name: John K,
  remitter_name_local_language: エム・エス・シャーマー,
  transaction_id: FW242141,
  transaction_source: ACH,
  type: CREDIT or DEBIT,
  virtual_account_number: 907654315445678
)
```

