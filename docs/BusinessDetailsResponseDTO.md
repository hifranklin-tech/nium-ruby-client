# NiumClient::BusinessDetailsResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_detail** | [**AssociationDetails**](AssociationDetails.md) |  | [optional] |
| **business_address** | [**CorporateAddressDTO**](CorporateAddressDTO.md) |  | [optional] |
| **business_extract_covered_stakeholder** | **String** | This field contains business extract covered stakeholder which specifies if the business extract document given covers the stakeholder details. The value for this field can be either Yes or No. | [optional] |
| **business_name** | **String** | This field contains the business name of the entity. | [optional] |
| **business_registration_number** | **String** | This field contains the business registration number of the entity. | [optional] |
| **business_registration_type** | **String** | This field contains the business registration number type. | [optional] |
| **business_type** | **String** | This field contains the legal entity type of the business. | [optional] |
| **case_id** | **String** | This field contains the case ID of the corporate customer. | [optional] |
| **client_id** | **String** | This field contains the client ID of the corporate customer. | [optional] |
| **compliance_region** | **String** | This field contains the compliance region of the customer. | [optional] |
| **description** | **String** | This field accepts the description of the business for the corporate customer. | [optional] |
| **document_details** | [**Array&lt;CorporateDocumentDetailsDTO&gt;**](CorporateDocumentDetailsDTO.md) | This is an array which contains the document details. | [optional] |
| **former_name** | **String** | This field contains the former name. | [optional] |
| **legislation_name** | **String** | This field contains the name of the legislation under which the corporate entity being onboarded was formed. | [optional] |
| **legislation_type** | **String** | This field contains the type of the legislation under which the corporate entity being onboarded was formed. The possible values are:  Established under Commonwealth legislation Established under State Territory legislation Other | [optional] |
| **listed_exchange** | **String** | This field contains the exchange where the company got listed. | [optional] |
| **partnership_details** | [**PartnershipDetails**](PartnershipDetails.md) |  | [optional] |
| **reference_id** | **String** | This field contains the reference ID of the entity | [optional] |
| **registered_address** | [**CorporateAddressDTO**](CorporateAddressDTO.md) |  | [optional] |
| **registered_country** | **String** | This field contains the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) where business is registered. | [optional] |
| **registered_date** | **String** | This field contains the business registration date. | [optional] |
| **regulatory_details** | [**RegulatoryDetails**](RegulatoryDetails.md) |  | [optional] |
| **settlor_name** | **String** |  | [optional] |
| **stock_symbol** | **String** |  | [optional] |
| **tax_details** | [**Array&lt;TaxDetails&gt;**](TaxDetails.md) | This array contains tax details provided during compliance onboarding for EU customers. Otherwise, it contains null. | [optional] |
| **trade_name** | **String** | This field contains the trading name which is also known as Doing Business As(DBA)(In case the entity is doing business with a different name than the registered business name). | [optional] |
| **trustee_name** | **String** |  | [optional] |
| **website** | **String** | This field contains the website of the company. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BusinessDetailsResponseDTO.new(
  association_detail: null,
  business_address: null,
  business_extract_covered_stakeholder: null,
  business_name: ABCD XYZ LTD,
  business_registration_number: 10519001,
  business_registration_type: null,
  business_type: Public Company,
  case_id: null,
  client_id: null,
  compliance_region: SG,
  description: null,
  document_details: null,
  former_name: null,
  legislation_name: null,
  legislation_type: null,
  listed_exchange: internationalExchange,
  partnership_details: null,
  reference_id: null,
  registered_address: null,
  registered_country: AU,
  registered_date: 2021-08-10,
  regulatory_details: null,
  settlor_name: null,
  stock_symbol: null,
  tax_details: null,
  trade_name: ABCD XYZ,
  trustee_name: null,
  website: www.abcxyz.com
)
```

