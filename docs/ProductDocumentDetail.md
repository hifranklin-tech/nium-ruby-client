# NiumClient::ProductDocumentDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document** | [**Array&lt;ProductDocument&gt;**](ProductDocument.md) | This array accepts the document to be uploaded.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **document_color** | **String** | This field accepts the color for Medicare card.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **document_expiry_date** | **String** | This field accepts the date of the document expiry This field is required only if the documents are being uploaded  AU: Optional EU: Conditional UK: Optional SG: Optional | [optional] |
| **document_holder_name** | **String** | This field accepts the name of the document holder for the uploaded document.  AU: Optional EU: Required UK: Optional SG: Optional | [optional] |
| **document_issuance_country** | **String** | This field accepts the name of the document issuing country.  AU: Optional EU: Conditional UK: Optional SG: Optional | [optional] |
| **document_issuance_state** | **String** |  | [optional] |
| **document_issued_date** | **String** | This field accepts the date of the document issuance. This field should be sent when available on the document.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **document_issuing_authority** | **String** | This field accepts the name of the issuing authority of the document.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **document_number** | **String** | This field accepts the document number for the uploaded document. This field is required only if the documents are being uploaded  AU: Optional EU: Required UK: Optional SG: Optional | [optional] |
| **document_reference_number** | **String** | This field accepts the document reference number for the uploaded document.  AU: Conditional EU: Optional UK: Optional SG: Optional | [optional] |
| **document_type** | **String** | This field accepts the type of the document. The acceptable types of the documents are:  Business Registration Document Trust Deed Partnership Deed Association Deed Register of Directors Register of Shareholders  AU: Optional EU: Required UK: Optional SG: Optional | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ProductDocumentDetail.new(
  document: null,
  document_color: null,
  document_expiry_date: null,
  document_holder_name: null,
  document_issuance_country: null,
  document_issuance_state: null,
  document_issued_date: null,
  document_issuing_authority: null,
  document_number: 6565666,
  document_reference_number: null,
  document_type: null
)
```

