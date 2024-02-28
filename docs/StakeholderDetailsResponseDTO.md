# NiumClient::StakeholderDetailsResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**CorporateAddressDTO**](CorporateAddressDTO.md) |  | [optional] |
| **birth_country** | **String** |  | [optional] |
| **date_of_birth** | **String** | This field contains the date of birth of the stakeholder. | [optional] |
| **designation** | **String** | This field contains the designation of the stakeholder. | [optional] |
| **document_details** | [**Array&lt;CorporateDocumentDetailsDTO&gt;**](CorporateDocumentDetailsDTO.md) |  | [optional] |
| **email** | **String** | This field contains the email address of the stakeholder | [optional] |
| **first_name** | **String** | This field contains the first name of the stakeholder. | [optional] |
| **gender** | **String** | This field contains the gender of the stakeholder. | [optional] |
| **last_name** | **String** | This field contains the last name of the stakeholder. | [optional] |
| **middle_name** | **String** | This field contains the middle name of the stakeholder. | [optional] |
| **mobile** | **String** | This field contains the mobile number of the stakeholder | [optional] |
| **nationality** | **String** | This field contains the nationality of the stakeholder. | [optional] |
| **professional_details** | [**Array&lt;ProfessionalDetails&gt;**](ProfessionalDetails.md) |  | [optional] |
| **reference_id** | **String** | This field contains the reference id of the stakeholder | [optional] |
| **resident** | **Boolean** |  | [optional] |
| **tax_details** | [**Array&lt;TaxDetails&gt;**](TaxDetails.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::StakeholderDetailsResponseDTO.new(
  address: null,
  birth_country: null,
  date_of_birth: 1947-02-15,
  designation: null,
  document_details: null,
  email: john@qwe.com,
  first_name: John,
  gender: Male,
  last_name: Cary,
  middle_name: Lucius Arthur,
  mobile: 9876543210,
  nationality: AU,
  professional_details: null,
  reference_id: null,
  resident: null,
  tax_details: null
)
```

