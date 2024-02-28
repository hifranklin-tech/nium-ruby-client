# NiumClient::IdentificationDocDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identification_doc_color** | **String** | This field accepts the color of the document being uploaded. | [optional] |
| **identification_doc_expiry** | **String** | This field accepts the expiry date of the document being uploaded. | [optional] |
| **identification_doc_holder_name** | **String** | This field accepts the name of the customer as per the document being uploaded. | [optional] |
| **identification_doc_issuance_country** | **String** | This field accepts the issuing country of the document being uploaded. | [optional] |
| **identification_doc_reference_number** | **String** | This field accepts the reference number of the document being uploaded. | [optional] |
| **identification_document** | [**Array&lt;PayoutIdentificationDocumentDTO&gt;**](PayoutIdentificationDocumentDTO.md) | It is an array of actual documents for the data provided in previous fields. We support a maximum of 4 files in the array, and the total max size should be less than 10 MB. A separate object is needed for each document image. | [optional] |
| **identification_issuing_authority** | **String** | This field accepts the authority issuing the document being uploaded. | [optional] |
| **identification_issuing_date** | **String** | This field accepts the date of issuance of the document being uploaded. The format should be yyyy-mm-dd. Example, 2010-10-10. | [optional] |
| **identification_type** | **String** | This field accepts the type of document being uploaded. | [optional] |
| **identification_value** | **String** | This field accepts the unique document id being uploaded. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::IdentificationDocDTO.new(
  identification_doc_color: null,
  identification_doc_expiry: null,
  identification_doc_holder_name: null,
  identification_doc_issuance_country: null,
  identification_doc_reference_number: null,
  identification_document: null,
  identification_issuing_authority: null,
  identification_issuing_date: null,
  identification_type: null,
  identification_value: null
)
```

