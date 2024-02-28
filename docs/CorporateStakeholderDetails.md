# NiumClient::CorporateStakeholderDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**CorporateAddress**](CorporateAddress.md) |  | [optional] |
| **contact_details** | [**CorporateContactDetails**](CorporateContactDetails.md) |  | [optional] |
| **date_of_birth** | **String** | This field accepts the date of birth of the stakeholder in yyyy-MM-dd format. | [optional] |
| **document_details** | [**Array&lt;CorporateDocumentDetail&gt;**](CorporateDocumentDetail.md) | This array accepts the document details for the stakeholder. This field is required only if the documents are being uploaded. | [optional] |
| **first_name** | **String** | This field contains the first name of the stakeholder. | [optional] |
| **last_name** | **String** | This field contains the last name of the stakeholder. | [optional] |
| **middle_name** | **String** | This field contains the middle name of the stakeholder. | [optional] |
| **nationality** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) for the nationality of the stakeholder. | [optional] |
| **professional_details** | [**Array&lt;CorporateProfessionalDetails&gt;**](CorporateProfessionalDetails.md) | This array accepts the professional details of the stakeholder. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateStakeholderDetails.new(
  address: null,
  contact_details: null,
  date_of_birth: null,
  document_details: null,
  first_name: null,
  last_name: null,
  middle_name: null,
  nationality: null,
  professional_details: null
)
```

