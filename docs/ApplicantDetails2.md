# NiumClient::ApplicantDetails2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_info** | **Hash&lt;String, String&gt;** |  | [optional] |
| **address** | [**ProductAddress**](ProductAddress.md) |  | [optional] |
| **birth_country** | **String** |  | [optional] |
| **contact_details** | [**ContactDetails**](ContactDetails.md) |  | [optional] |
| **date_of_birth** | **String** |  | [optional] |
| **document_details** | [**ProductDocumentDetail**](ProductDocumentDetail.md) |  | [optional] |
| **first_name** | **String** | This field accepts the first name of the applicant. | [optional] |
| **gender** | **String** | This field accepts the gender of the applicant. | [optional] |
| **is_resident** | **String** |  | [optional] |
| **kyc_mode** | **String** | This field accepts the registered business name of the business partner. | [optional] |
| **last_name** | **String** | This field accepts the last name of the applicant. | [optional] |
| **middle_name** | **String** | This field accepts the middle name of the applicant. | [optional] |
| **nationality** | **String** | This field accepts the [2-letter ISO Alpha-2 country code](doc:currency-and-country-codes) for the nationality of the applicant. | [optional] |
| **occupation** | **String** | This field accepts the customer&#39;s occupation. Refer to [Enum values](https://docs.nium.com/apis/docs/unified-add-customer-api) for the description.   Note: This field is mandatory for CA. | [optional] |
| **professional_details** | [**Array&lt;ProductProfessionalDetails&gt;**](ProductProfessionalDetails.md) | This array accepts the professional details of the applicant. | [optional] |
| **reference_id** | **String** | This field accepts the reference ID of the applicant for which the RFI is raised. | [optional] |
| **tax_details** | [**Array&lt;ProductTaxDetails&gt;**](ProductTaxDetails.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ApplicantDetails2.new(
  additional_info: null,
  address: null,
  birth_country: null,
  contact_details: null,
  date_of_birth: null,
  document_details: null,
  first_name: null,
  gender: null,
  is_resident: null,
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

