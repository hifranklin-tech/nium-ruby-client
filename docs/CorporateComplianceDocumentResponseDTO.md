# NiumClient::CorporateComplianceDocumentResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | This field contains the case ID of the corporate customer. | [optional] |
| **client_id** | **String** | This field contains the client ID of the corporate customer. | [optional] |
| **remarks** | **String** | This field contains the uploaded document remarks of the corporate customer. | [optional] |
| **status** | **String** | This field contains the uploaded document status of the corporate customer. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateComplianceDocumentResponseDTO.new(
  case_id: e18577fa-837b-43d1-a7c6-852404ed86e7,
  client_id: NIM1651497934275,
  remarks: upload success,
  status: Success
)
```

