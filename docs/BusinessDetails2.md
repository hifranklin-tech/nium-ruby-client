# NiumClient::BusinessDetails2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_info** | **Hash&lt;String, String&gt;** | This object accepts additional information about the business. | [optional] |
| **addresses** | [**Addresses**](Addresses.md) |  | [optional] |
| **applicant_details** | [**ApplicantDetails2**](ApplicantDetails2.md) |  | [optional] |
| **association_details** | [**ProductAssociationDetails**](ProductAssociationDetails.md) |  | [optional] |
| **business_in_other_countries** | **Array&lt;Object&gt;** |  | [optional] |
| **business_name** | **String** | This field accepts the registered business name of the corporate entity. | [optional] |
| **business_registration_number** | **String** | This field accepts the business registration number of the corporate entity. | [optional] |
| **business_type** | **String** | This field accepts the legal entity type of the business. | [optional] |
| **description** | **String** |  | [optional] |
| **document_details** | [**ProductDocumentDetail**](ProductDocumentDetail.md) |  | [optional] |
| **legal_details** | [**LegalDetails**](LegalDetails.md) |  | [optional] |
| **onboarding_details** | [**OnboardingDetails**](OnboardingDetails.md) |  | [optional] |
| **partnership_details** | [**ProductPartnershipDetails**](ProductPartnershipDetails.md) |  | [optional] |
| **purpose_code** | **String** |  | [optional] |
| **reference_id** | **String** | This field accepts the reference Id of the business information for which the RFI is raised. | [optional] |
| **regulatory_details** | [**ProductRegulatoryDetails**](ProductRegulatoryDetails.md) |  | [optional] |
| **revenue_info** | [**RevenueInfo**](RevenueInfo.md) |  | [optional] |
| **settlor_name** | **String** | This field accepts the settlor name. | [optional] |
| **stakeholders** | [**Array&lt;Stakeholders2&gt;**](Stakeholders2.md) | This array accepts the stakeholders for the new corporate entity to be onboarded. For every stakeholder object, you need to send either the &#x60;stakeholderDetails&#x60; or the &#x60;businessPartner&#x60; objects. | [optional] |
| **tax_details** | [**Array&lt;ProductTaxDetails&gt;**](ProductTaxDetails.md) |  | [optional] |
| **ticker** | **String** |  | [optional] |
| **trade_name** | **String** | This field accepts the Trading Name also known as Doing Business As(DBA) name. | [optional] |
| **trustee_name** | **String** | This field accepts the full business name of the trustee in case the entity type is a trust. | [optional] |
| **website** | **String** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BusinessDetails2.new(
  additional_info: null,
  addresses: null,
  applicant_details: null,
  association_details: null,
  business_in_other_countries: null,
  business_name: updated business name,
  business_registration_number: null,
  business_type: Public Company,
  description: null,
  document_details: null,
  legal_details: null,
  onboarding_details: null,
  partnership_details: null,
  purpose_code: null,
  reference_id: 11e93365-d383-4eee-9686-7f06bcb8671e,
  regulatory_details: null,
  revenue_info: null,
  settlor_name: null,
  stakeholders: null,
  tax_details: null,
  ticker: null,
  trade_name: null,
  trustee_name: null,
  website: null
)
```

