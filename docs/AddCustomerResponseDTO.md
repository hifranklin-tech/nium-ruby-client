# NiumClient::AddCustomerResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **compliance_status** | **String** | This field contains the compliance status of the customer. Possible values are: • INITIATED • IN_PROGRESS • ACTION_REQUIRED • RFI_REQUESTED • COMPLETED • REJECT • ERROR • EXPIRED • CLOSED | [optional] |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation | [optional] |
| **kyc_status** | **String** | This field contains the kyc status and this shall be available only in applicable cases. Call the [Customer Details](ref:customerdetailsv2) API to fetch the updated kyc status. | [optional] |
| **payment_ids** | [**Array&lt;PaymentIdDTO&gt;**](PaymentIdDTO.md) | This is an array which contains the paymentIds assigned to the customer. | [optional] |
| **redirect_url** | **String** | This field contains the redirect URL where the customer should be redirected for verification. | [optional] |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AddCustomerResponseDTO.new(
  compliance_status: null,
  customer_hash_id: null,
  kyc_status: null,
  payment_ids: null,
  redirect_url: null,
  wallet_hash_id: null
)
```

