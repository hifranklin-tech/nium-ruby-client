# NiumClient::CorporateComplianceDocumentRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_details** | [**CorporateDocumentUploadBusinessDetailsDTO**](CorporateDocumentUploadBusinessDetailsDTO.md) |  | [optional] |
| **region** | **String** | This field accepts the regulatory region where the corporation is onboarded. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateComplianceDocumentRequestDTO.new(
  business_details: null,
  region: null
)
```

