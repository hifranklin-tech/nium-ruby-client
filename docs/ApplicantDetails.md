# NiumClient::ApplicantDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_info** | **Hash&lt;String, String&gt;** | This object accepts the applicant&#39;s additional information.  AU: NA EU: Required UK: NA SG: NA | [optional] |
| **address** | [**ProductAddress**](ProductAddress.md) |  | [optional] |
| **birth_country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](https://nium-documents.s3-eu-west-1.amazonaws.com/spend-documents/Country+Code.pdf) as an applicant&#39;s birth country.  AU: NA EU: Required UK: NA SG: NA | [optional] |
| **contact_details** | [**ContactDetails**](ContactDetails.md) |  | [optional] |
| **date_of_birth** | **String** | This field accepts the date of birth of the applicant in yyyy-MM-dd format.  AU: Required EU: Required UK: Required SG: Optional | [optional] |
| **document_details** | [**Array&lt;ProductDocumentDetail&gt;**](ProductDocumentDetail.md) | This array accepts the applicant document details. This field is required only if the documents are being uploaded.  AU: Optional EU: Required UK: Optional SG: Optional | [optional] |
| **first_name** | **String** | This field accepts the first name of the applicant. Maximum character limit: 40  AU: Required EU: Required UK: Required SG: Optional | [optional] |
| **gender** | **String** | This field accepts the gender of the applicant. The acceptable values are: Male Female  AU: Required EU: NA UK: NA SG: NA | [optional] |
| **kyc_mode** | **String** | This object accepts the desired mode to do the KYC of the individual applicant.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **last_name** | **String** | This field accepts the last name of the applicant. Maximum character limit: 40  AU: Required EU: Required UK: Required SG: Optional | [optional] |
| **middle_name** | **String** | This field accepts the middle name of the applicant. Maximum character limit: 40  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **nationality** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](https://nium-documents.s3-eu-west-1.amazonaws.com/spend-documents/Country+Code.pdf) for the nationality of the applicant.  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **occupation** | **String** | This field accepts the customer&#39;s occupation. Refer to [Enum values](https://docs.nium.com/apis/docs/unified-add-customer-api) for the description.   Note: This field is mandatory for CA. | [optional] |
| **professional_details** | [**Array&lt;ProductProfessionalDetails&gt;**](ProductProfessionalDetails.md) | This array accepts the professional details of the applicant.  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **reference_id** | **String** | This field accepts the unique reference ID for the Applicant provided by client.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **tax_details** | [**Array&lt;ProductTaxDetails&gt;**](ProductTaxDetails.md) | This array accepts the applicant&#39;s tax details.  AU: NA EU: Optional UK: NA SG: NA | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ApplicantDetails.new(
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
  occupation: OC0001,
  professional_details: null,
  reference_id: null,
  tax_details: null
)
```

