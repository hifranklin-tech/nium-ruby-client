# NiumClient::RespondRfiRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | This field accepts the compliance case Id of the customer. | [optional] |
| **client_id** | **String** | This field accepts the NIUM client Id of the customer. | [optional] |
| **customer_hash_id** | **String** | This field contains the unique customer identifier generated at the time of customer creation. | [optional] |
| **region** | **String** | This field accepts the region code for which onboarding has been triggered. | [optional] |
| **rfi_response_request** | [**Array&lt;ProductRfiResponseRequest&gt;**](ProductRfiResponseRequest.md) | This is an array which accepts the requests for information, depending upon documents required to raise RFI. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RespondRfiRequestDTO.new(
  case_id: 02ffd56a-1eff-400f-bd43-16c575412c07,
  client_id: NIM1655797457637,
  customer_hash_id: null,
  region: EU,
  rfi_response_request: null
)
```

