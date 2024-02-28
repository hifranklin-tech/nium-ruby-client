# NiumClient::CorporateDocumentUploadApplicantDetailsDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_details** | [**Array&lt;DocumentDetail&gt;**](DocumentDetail.md) |  | [optional] |
| **reference_id** | **String** | This field accepts the unique reference ID for the applicant of the business entity. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateDocumentUploadApplicantDetailsDTO.new(
  document_details: null,
  reference_id: null
)
```

