# NiumClient::DocumentDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document** | [**Array&lt;Document&gt;**](Document.md) | An object that contains the document copy. | [optional] |
| **document_color** | **String** |  | [optional] |
| **document_expiry_date** | **String** | The date the document expires in the &#x60;YYYY-MM-DD&#x60; format. This is required if &#x60;documentType&#x60; is &#x60;PASSPORT&#x60; or &#x60;DRIVERS_LICENSE&#x60;. | [optional] |
| **document_holder_name** | **String** |  | [optional] |
| **document_issuance_country** | **String** | The country that issued the business document. Use [Fetch corporate constants](ref:fetchcorporateconstants) API  for a valid set of values. | [optional] |
| **document_issuance_state** | **String** |  | [optional] |
| **document_issued_date** | **String** |  | [optional] |
| **document_issuing_authority** | **String** |  | [optional] |
| **document_number** | **String** | ID number for the given &#x60;documentType&#x60;. | [optional] |
| **document_reference_number** | **String** |  | [optional] |
| **document_type** | **String** | The type of the document. Use [Fetch corporate constants](ref:fetchcorporateconstants) API for a valid set of values. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::DocumentDetail.new(
  document: null,
  document_color: null,
  document_expiry_date: null,
  document_holder_name: null,
  document_issuance_country: null,
  document_issuance_state: null,
  document_issued_date: null,
  document_issuing_authority: null,
  document_number: null,
  document_reference_number: null,
  document_type: null
)
```

