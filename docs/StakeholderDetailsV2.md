# NiumClient::StakeholderDetailsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**AddressV2**](AddressV2.md) |  | [optional] |
| **birth_country** | **String** |  | [optional] |
| **contact_details** | [**StakeholderContactDetailsResponseDTO**](StakeholderContactDetailsResponseDTO.md) |  | [optional] |
| **date_of_birth** | **String** |  | [optional] |
| **document_details** | [**Array&lt;CorporateDocumentDetails2DTO&gt;**](CorporateDocumentDetails2DTO.md) |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **is_pep** | **Boolean** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **middle_name** | **String** |  | [optional] |
| **nationality** | **String** |  | [optional] |
| **professional_details** | [**Array&lt;ProfessionalDetailsResponseDTO&gt;**](ProfessionalDetailsResponseDTO.md) |  | [optional] |
| **tax_details** | [**Array&lt;TaxDetailsResponseDTO&gt;**](TaxDetailsResponseDTO.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::StakeholderDetailsV2.new(
  address: null,
  birth_country: null,
  contact_details: null,
  date_of_birth: null,
  document_details: null,
  first_name: null,
  gender: null,
  is_pep: null,
  last_name: null,
  middle_name: null,
  nationality: null,
  professional_details: null,
  tax_details: null
)
```

