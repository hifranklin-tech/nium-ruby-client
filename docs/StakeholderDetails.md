# NiumClient::StakeholderDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_info** | **Hash&lt;String, String&gt;** |  | [optional] |
| **address** | [**ProductAddress**](ProductAddress.md) |  | [optional] |
| **birth_country** | **String** | This field accepts the birth country name of the stakeholder.  AU: NA EU: Required UK: NA SG: NA | [optional] |
| **contact_details** | [**ContactDetails**](ContactDetails.md) |  | [optional] |
| **date_of_birth** | **String** | This field accepts the date of birth of the stakeholder in yyyy-MM-dd format.  AU: Optional EU: Required UK: Required SG: Required | [optional] |
| **document_details** | [**Array&lt;ProductDocumentDetail&gt;**](ProductDocumentDetail.md) | This array accepts the document details for the stakeholder. This field is required only if the documents are being uploaded.  AU: Optional EU: Conditional UK: Optional SG: Optional | [optional] |
| **first_name** | **String** | This field contains the first name of the stakeholder.  AU: Optional EU: Required UK: Required SG: Required | [optional] |
| **gender** | **String** | This field accepts the gender of the stakeholder. The acceptable values are: Male Female  AU: Optional EU: NA UK: NA SG: NA | [optional] |
| **kyc_mode** | **String** | This object accepts the desired mode to do the KYC of the individual stakeholder.  AU: Optional EU: Required UK: Required SG: Required | [optional] |
| **last_name** | **String** | This field contains the last name of the stakeholder.  AU: Optional EU: Required UK: Required SG: Required | [optional] |
| **middle_name** | **String** | This field contains the middle name of the stakeholder.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **nationality** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](https://nium-documents.s3-eu-west-1.amazonaws.com/spend-documents/Country+Code.pdf) for the nationality of the stakeholder.  AU: Optional EU: Required UK: Required SG: Required | [optional] |
| **professional_details** | [**Array&lt;ProductProfessionalDetails&gt;**](ProductProfessionalDetails.md) | This array accepts the professional details of the stakeholder.  AU: Optional EU: Required UK: Required SG: Required | [optional] |
| **tax_details** | [**Array&lt;ProductTaxDetails&gt;**](ProductTaxDetails.md) | This array accepts the tax details.  AU: NA EU: Required UK: NA SG: NA | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::StakeholderDetails.new(
  additional_info: null,
  address: null,
  birth_country: null,
  contact_details: null,
  date_of_birth: null,
  document_details: null,
  first_name: null,
  gender: null,
  kyc_mode: null,
  last_name: null,
  middle_name: null,
  nationality: null,
  professional_details: null,
  tax_details: null
)
```

