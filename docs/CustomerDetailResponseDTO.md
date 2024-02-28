# NiumClient::CustomerDetailResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **compliance_status** | **String** |  | [optional] |
| **customer_hash_id** | **String** | This field contains the unique client identifier generated and shared before API handshake | [optional] |
| **kyc_status** | **String** |  | [optional] |
| **payment_ids** | [**Array&lt;PaymentIdDTO&gt;**](PaymentIdDTO.md) | This is an array which contains the paymentIds assigned to the customer | [optional] |
| **redirect_url** | **String** |  | [optional] |
| **wallet_hash_id** | **String** | This field contains the unique wallet identifier generated simultaneously with customer creation. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomerDetailResponseDTO.new(
  compliance_status: null,
  customer_hash_id: 2992c5c6-823b-4fa9-a64b-add0ea88bb66,
  kyc_status: null,
  payment_ids: null,
  redirect_url: null,
  wallet_hash_id: b4c0d385-cd92-46a0-af6f-d8332268e6ed
)
```

