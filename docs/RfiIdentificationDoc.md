# NiumClient::RfiIdentificationDoc

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identification_doc_color** | **String** | This field accepts the color of the medicare card which may be one of three values - G, B, Y. It is mandatory for medicare card. | [optional] |
| **identification_doc_expiry** | **String** | This field accepts the document expiry date. | [optional] |
| **identification_doc_holder_name** | **String** | This field accepts the name of the document holder exactly according to the document uploaded. | [optional] |
| **identification_doc_issuance_country** | **String** | This field accepts the document issuance country. | [optional] |
| **identification_doc_reference_number** | **String** | This field accepts the reference number for the document being uploaded. | [optional] |
| **identification_document** | [**Array&lt;IdentificationDocumentDTO&gt;**](IdentificationDocumentDTO.md) | It is an array of actual Base-64 documents as required. The maximum allowed size of this payload is 10MB. A separate object is needed for each document image. | [optional] |
| **identification_issuing_authority** | **String** | This field accepts the name of the authorized issuer of the document such as the name of the government agency issuing the document. | [optional] |
| **identification_issuing_date** | **String** | This field accepts the document issuance date. | [optional] |
| **identification_type** | **String** | This field accepts the identification type for the document being uploaded. Refer the details of the RFI raised and respond accordingly. | [optional] |
| **identification_value** | **String** | The field accepts the document number (value) for the document such as passport number, driving licence number, etc. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RfiIdentificationDoc.new(
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

