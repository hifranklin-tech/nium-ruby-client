# NiumClient::ProductCorporateCustomerResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | This field contains the compliance case Id of the customer. | [optional] |
| **client_id** | **String** | This field contains the NIUM client Id of the customer. | [optional] |
| **customer_hash_id** | **String** | This field contains the unique customer identifier generated at the time of customer creation. | [optional] |
| **errors** | **Array&lt;Object&gt;** | This field contains the list of error code and description from compliance service. | [optional] |
| **redirect_url** | **String** | This field contains the redirect URL to be used for applicant KYC verification. | [optional] |
| **remarks** | **String** | This field contains the remarks auto-generated during the compliance process. | [optional] |
| **status** | **String** | This field contains the compliance status. As a response of this API, the only possible value of status is IN_PROGRESS. | [optional] |
| **wallet_hash_id** | **String** | This field contains the unique wallet identifier generated simultaneously with customer creation. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ProductCorporateCustomerResponseDTO.new(
  case_id: null,
  client_id: null,
  customer_hash_id: null,
  errors: null,
  redirect_url: null,
  remarks: null,
  status: null,
  wallet_hash_id: null
)
```

