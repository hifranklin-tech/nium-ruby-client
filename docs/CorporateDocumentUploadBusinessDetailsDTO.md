# NiumClient::CorporateDocumentUploadBusinessDetailsDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_details** | [**CorporateDocumentUploadApplicantDetailsDTO**](CorporateDocumentUploadApplicantDetailsDTO.md) |  | [optional] |
| **document_details** | [**Array&lt;CorporateBusinessDetailsDocumentDetailDTO&gt;**](CorporateBusinessDetailsDocumentDetailDTO.md) |  | [optional] |
| **reference_id** | **String** | This field accepts the unique reference ID for the business entity. | [optional] |
| **stakeholders** | [**Array&lt;CorporateDocumentUploadStakeholdersDTO&gt;**](CorporateDocumentUploadStakeholdersDTO.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateDocumentUploadBusinessDetailsDTO.new(
  applicant_details: null,
  document_details: null,
  reference_id: null,
  stakeholders: null
)
```

