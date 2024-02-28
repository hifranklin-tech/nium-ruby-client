# NiumClient::OpenBankingPaymentResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comments** | **String** | This field contains the system-generated comments for the transaction. | [optional] |
| **creditor_account** | [**AccountReference**](AccountReference.md) |  | [optional] |
| **creditor_name** | **String** | This field contains the name of the receiver for this flow. | [optional] |
| **debtor_account** | [**AccountReference**](AccountReference.md) |  | [optional] |
| **instructed_amount** | [**Amount**](Amount.md) |  | [optional] |
| **routing_code_value** | **String** | This field contains the BIC routing code for the transaction. | [optional] |
| **statement_narrative** | **String** | This field contains the narrative for the transaction. | [optional] |
| **status** | **String** | This field contains the status of the transaction. The possible values are: INITIATED, PENDING, REJECTED, SENT_TO_BANK, PAID, RETURN | [optional] |
| **system_reference_number** | **String** | This field contains the unique, system generated reference number for the transaction. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::OpenBankingPaymentResponseDTO.new(
  comments: null,
  creditor_account: null,
  creditor_name: null,
  debtor_account: null,
  instructed_amount: null,
  routing_code_value: null,
  statement_narrative: null,
  status: null,
  system_reference_number: 308a4d01-8549-4cbb-b83f-05cd768d606f
)
```

