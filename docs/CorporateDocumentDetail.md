# NiumClient::CorporateDocumentDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_number** | **String** | This field accepts the document number for the uploaded document. This field is required only if the documents are being uploaded  AU: Optional EU: Required UK: Optional SG: Optional | [optional] |
| **document_type** | **String** | This field accepts the type of the document. The acceptable types of the documents are:  Business Registration Document Trust Deed Partnership Deed Association Deed Register of Directors Register of Shareholders  AU: Optional EU: Required UK: Optional SG: Optional | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateDocumentDetail.new(
  document_number: 6565666,
  document_type: null
)
```

