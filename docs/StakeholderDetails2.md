# NiumClient::StakeholderDetails2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_info** | **Hash&lt;String, String&gt;** |  | [optional] |
| **address** | [**ProductAddress**](ProductAddress.md) |  | [optional] |
| **birth_country** | **String** |  | [optional] |
| **contact_details** | [**ContactDetails**](ContactDetails.md) |  | [optional] |
| **date_of_birth** | **String** | This field accepts the date of birth of the stakeholder. | [optional] |
| **document_details** | [**ProductDocumentDetail**](ProductDocumentDetail.md) |  | [optional] |
| **first_name** | **String** | This field accepts the first name of the stakeholder. | [optional] |
| **gender** | **String** | This field accepts the gender of the stakeholder. The acceptable values are: Male Female | [optional] |
| **is_primary_applicant** | **String** |  | [optional] |
| **last_name** | **String** | This field accepts the last name of the stakeholder. | [optional] |
| **middle_name** | **String** | This field accepts the middle name of the stakeholder. | [optional] |
| **nationality** | **String** | This field accepts the [2-letter ISO Alpha-2 country code](doc:currency-and-country-codes) for the nationality of the stakeholder. | [optional] |
| **professional_details** | [**Array&lt;ProductProfessionalDetails&gt;**](ProductProfessionalDetails.md) | This array accepts the professional details of the stakeholder. | [optional] |
| **source_of_funds** | **String** |  | [optional] |
| **tax_details** | [**Array&lt;ProductTaxDetails&gt;**](ProductTaxDetails.md) | This an array which accepts the tax details. | [optional] |
| **title** | **String** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::StakeholderDetails2.new(
  additional_info: null,
  address: null,
  birth_country: null,
  contact_details: null,
  date_of_birth: null,
  document_details: null,
  first_name: null,
  gender: null,
  is_primary_applicant: null,
  last_name: null,
  middle_name: null,
  nationality: null,
  professional_details: null,
  source_of_funds: null,
  tax_details: null,
  title: null
)
```

