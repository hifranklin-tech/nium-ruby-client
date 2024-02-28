# NiumClient::CorporateDocumentUploadStakeholdersDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_id** | **String** | This field accepts the unique reference ID for the stakeholder of the business entity. | [optional] |
| **stakeholder_details** | [**CorporateDocumentUploadStakeholderDetailsDTO**](CorporateDocumentUploadStakeholderDetailsDTO.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateDocumentUploadStakeholdersDTO.new(
  reference_id: null,
  stakeholder_details: null
)
```

