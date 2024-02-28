# NiumClient::BusinessDetailsResponseV2DTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_details** | [**ApplicantDetailsV2**](ApplicantDetailsV2.md) |  | [optional] |
| **association_detail** | [**AssociationDetails**](AssociationDetails.md) |  | [optional] |
| **business_address** | [**AddressV2**](AddressV2.md) |  | [optional] |
| **business_extract_covered_stakeholder** | **String** | This field contains business extract covered stakeholder which specifies if the business extract document given covers the stakeholder details. The value for this field can be either Yes or No. | [optional] |
| **business_name** | **String** | This field contains the business name of the entity. | [optional] |
| **business_registration_number** | **String** | This field contains the business registration number of the entity. | [optional] |
| **business_type** | **String** | This field contains the legal entity type of the business. | [optional] |
| **description** | **String** | This field contains the  description of the business details | [optional] |
| **document_details** | [**Array&lt;CorporateDocumentDetails2DTO&gt;**](CorporateDocumentDetails2DTO.md) | This is an array which contains the document details. | [optional] |
| **former_name** | **String** | This field contains the former name. | [optional] |
| **legal_details** | [**LegalDetailsV2**](LegalDetailsV2.md) |  | [optional] |
| **partnership_details** | [**PartnershipDetails**](PartnershipDetails.md) |  | [optional] |
| **reference_id** | **String** | This field contains the  reference id of the entity | [optional] |
| **registered_address** | [**AddressV2**](AddressV2.md) |  | [optional] |
| **regulatory_details** | [**RegulatoryDetails**](RegulatoryDetails.md) |  | [optional] |
| **settlor_name** | **String** |  | [optional] |
| **stakeholders** | [**Array&lt;StakeholderV2&gt;**](StakeholderV2.md) |  | [optional] |
| **stock_symbol** | **String** |  | [optional] |
| **tax_details** | [**Array&lt;TaxDetailsResponseDTO&gt;**](TaxDetailsResponseDTO.md) | This array contains tax details provided during compliance onboarding for EU customers. Otherwise, it contains null. | [optional] |
| **trade_name** | **String** | This field contains the trading name which is also known as Doing Business As(DBA)(In case the entity is doing business with a different name than the registered business name). | [optional] |
| **trustee_name** | **String** |  | [optional] |
| **website** | **String** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BusinessDetailsResponseV2DTO.new(
  applicant_details: null,
  association_detail: null,
  business_address: null,
  business_extract_covered_stakeholder: null,
  business_name: ABCD XYZ LTD,
  business_registration_number: 10519001,
  business_type: Public Company,
  description: null,
  document_details: null,
  former_name: null,
  legal_details: null,
  partnership_details: null,
  reference_id: null,
  registered_address: null,
  regulatory_details: null,
  settlor_name: null,
  stakeholders: null,
  stock_symbol: null,
  tax_details: null,
  trade_name: ABCD XYZ,
  trustee_name: null,
  website: null
)
```

