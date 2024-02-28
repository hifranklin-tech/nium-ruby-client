# NiumClient::BusinessDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_info** | **Hash&lt;String, String&gt;** | This object accepts additional information about the business.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **addresses** | [**Addresses**](Addresses.md) |  | [optional] |
| **applicant_details** | [**ApplicantDetails**](ApplicantDetails.md) |  | [optional] |
| **association_details** | [**ProductAssociationDetails**](ProductAssociationDetails.md) |  | [optional] |
| **bank_account_details** | [**BankAccountDetails**](BankAccountDetails.md) |  | [optional] |
| **business_name** | **String** | This field contains the name of a business.  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **business_registration_number** | **String** | This field accepts the business registration number of the new corporate entity to be onboarded.  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **business_type** | **String** | This field accepts the legal entity type of the business. The supported entity types are: Sole Trader  Private Limited Company Public Company Partnership Limited Liability Partnership Firm Government Body Associations Trust Regulated Trust Unregulated Trust  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **description** | **String** |  | [optional] |
| **document_details** | [**Array&lt;ProductDocumentDetail&gt;**](ProductDocumentDetail.md) | This is an array which accepts the document details for KYB. This field is required only if the documents are being uploaded  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **former_name** | **String** | This field accepts the former name of the new corporate entity to be onboarded.  AU: NA EU: NA UK: NA SG: Optional | [optional] |
| **legal_details** | [**LegalDetails**](LegalDetails.md) |  | [optional] |
| **partnership_details** | [**ProductPartnershipDetails**](ProductPartnershipDetails.md) |  | [optional] |
| **reference_id** | **String** | This field accepts the unique reference ID for the Business Entity provided by client.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **regulatory_details** | [**ProductRegulatoryDetails**](ProductRegulatoryDetails.md) |  | [optional] |
| **settlor_name** | **String** | This field accepts the settlor name.  AU: Optional EU: NA UK: NA SG: NA | [optional] |
| **stakeholders** | [**Array&lt;Stakeholders&gt;**](Stakeholders.md) | This array accepts the stakeholder details for the new corporate entity to be onboarded. This field is required in case the region is AU and entity type [refer businessDetails.businessType] is one of the following: Sole Trader Unregulated Trust Partnerships Government Body Association  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **stock_symbol** | **String** |  | [optional] |
| **tax_details** | [**Array&lt;ProductTaxDetails&gt;**](ProductTaxDetails.md) | This array accepts the tax details for the new corporate entity to be onboarded.  AU: NA EU: Required UK: NA SG: NA | [optional] |
| **trade_name** | **String** | This field accepts the Trading Name also known as Doing Business As(DBA) name. This field is needed in case the new corporate entity to be onboarded. is doing business with a name other than the registered business name.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **trustee_name** | **String** | This field accepts the full business name of the trustee in case the entity type is a trust. This field is required in case the region is AU and entity type [refer businessDetails.businessType] is a Regulated Trust or an Unregulated Trust.  AU: Optional EU: NA UK: NA SG: Optional | [optional] |
| **website** | **String** | This field accepts the business website link of the new corporate entity to be onboarded.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BusinessDetails.new(
  additional_info: null,
  addresses: null,
  applicant_details: null,
  association_details: null,
  bank_account_details: null,
  business_name: null,
  business_registration_number: null,
  business_type: null,
  description: null,
  document_details: null,
  former_name: null,
  legal_details: null,
  partnership_details: null,
  reference_id: null,
  regulatory_details: null,
  settlor_name: null,
  stakeholders: null,
  stock_symbol: null,
  tax_details: null,
  trade_name: null,
  trustee_name: null,
  website: null
)
```

