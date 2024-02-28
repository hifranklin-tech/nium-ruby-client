# NiumClient::ApplicantDetailsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**AddressV2**](AddressV2.md) |  | [optional] |
| **birth_country** | **String** |  | [optional] |
| **contact_details** | [**ContactDetailsResponseDTO**](ContactDetailsResponseDTO.md) |  | [optional] |
| **date_of_birth** | **String** |  | [optional] |
| **document_details** | [**Array&lt;CorporateDocumentDetails2DTO&gt;**](CorporateDocumentDetails2DTO.md) |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **is_pep** | **Boolean** |  | [optional] |
| **is_resident** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **middle_name** | **String** |  | [optional] |
| **nationality** | **String** |  | [optional] |
| **occupation** | **String** | This field accepts the customer’s occupation. Refer to [Enum values](https://docs.nium.com/apis/docs/unified-add-customer-api) for the description.   Note: This field is mandatory for CA. | [optional] |
| **professional_details** | [**Array&lt;ProfessionalDetailsResponseDTO&gt;**](ProfessionalDetailsResponseDTO.md) |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **tax_details** | [**Array&lt;TaxDetailsResponseDTO&gt;**](TaxDetailsResponseDTO.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ApplicantDetailsV2.new(
  address: null,
  birth_country: null,
  contact_details: null,
  date_of_birth: null,
  document_details: null,
  first_name: null,
  gender: null,
  is_pep: null,
  is_resident: null,
  last_name: null,
  middle_name: null,
  nationality: null,
  occupation: OC0001,
  professional_details: null,
  reference_id: null,
  tax_details: null
)
```

