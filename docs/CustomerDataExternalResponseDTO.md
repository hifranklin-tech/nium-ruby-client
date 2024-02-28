# NiumClient::CustomerDataExternalResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **compliance_status** | **String** | This field contains the detailed compliance status of the customer. While initiating MyInfo, this field would usually be INITIATED. List of all possible values of complianceStatus field are: • INITIATED • IN_PROGRESS • ACTION_REQUIRED • RFI_REQUESTED • COMPLETED • REJECT • ERROR • EXPIRED • CLOSED | [optional] |
| **customer_hash_id** | **String** | This field contains the unique customer identifier generated on customer creation. | [optional] |
| **kyc_status** | **String** | This field contains the overall KYC status of the customer. While initiating MyInfo, this field would usually be Pending. The possible values of kycStatus are: • Pending • Clear • Failed | [optional] |
| **payment_ids** | [**Array&lt;PaymentIdDTO&gt;**](PaymentIdDTO.md) | This is an array which contains the paymentIds assigned to the customer. | [optional] |
| **redirect_url** | **String** | This field contains the URL returned for myinfo details. | [optional] |
| **wallet_hash_id** | **String** | This field contains the unique wallet identifier generated simultaneously with customer creation. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomerDataExternalResponseDTO.new(
  compliance_status: null,
  customer_hash_id: null,
  kyc_status: null,
  payment_ids: null,
  redirect_url: null,
  wallet_hash_id: null
)
```

