# NiumClient::CustomerDetailResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | This object contains the user defined key-value pairs provided by the client. | [optional] |
| **billing_address1** | **String** | This field contains the line 1 of customer’s [INDIVIDUAL] or applicant’s [CORPORATE] billing address, which is used for KYC. | [optional] |
| **billing_address2** | **String** | This field contains the line 2 of customer’s [INDIVIDUAL] or applicant’s [CORPORATE] billing address, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **billing_city** | **String** | This field contains the city of customer’s [INDIVIDUAL] or applicant’s [CORPORATE] billing address. | [optional] |
| **billing_country** | **String** | This field contains the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) of customer’s [INDIVIDUAL] or applicant’s [CORPORATE] billing address, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **billing_landmark** | **String** | This field contains the landmark for customer’s [INDIVIDUAL] or applicant’s [CORPORATE] billing address, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **billing_state** | **String** | This field contains the state of customer’s [INDIVIDUAL] or applicant’s [CORPORATE] billing address, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **billing_zip_code** | **String** | This field contains the zip code of customer’s [INDIVIDUAL] or applicant’s [CORPORATE] billing address. | [optional] |
| **block_comment** | **String** | This field contains the comment entered while blocking the customer, if applicable. Otherwise, it contains null. | [optional] |
| **block_reason** | **String** | This field contains the reason for blocking the customer, if applicable. Otherwise, it contains null. | [optional] |
| **block_updated_by** | **String** | This field contains the details of the entity updating a customer block/unblock, if applicable. Otherwise, it contains null. The possible values are CLIENT or NIUM. | [optional] |
| **business_details** | [**BusinessDetailsResponseDTO**](BusinessDetailsResponseDTO.md) |  | [optional] |
| **business_partner** | [**Array&lt;BusinessPartnerDetailsResponseDTO&gt;**](BusinessPartnerDetailsResponseDTO.md) |  | [optional] |
| **compliance_level** | **String** | This field contains the compliance level for the customer. The possible values for customer type INDIVIDUAL are: SCREENING_KYC, SCREENING, SCREENING_KYB. The possible values for customer type CORPORATE is SCREENING_KYB. | [optional] |
| **compliance_remarks** | **String** | This field contains the compliance remarks from Compliance officer, if applicable. | [optional] |
| **compliance_status** | **String** | This field contains the overall compliance status of the customer. | [optional] |
| **country_code** | **String** | This field contains the 2-letter [ISO-2 country code](doc:currency-and-country-codes) for identifying the country prefix to the customer’s mobile number. | [optional] |
| **country_of_birth** | **String** | This field contains the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the customer’s country of birth. | [optional] |
| **created_at** | **Time** | This field contains the timestamp of customer creation in the format YYY-MM-DD hh:mm:ss, for example, 2021-07-29 06:11:43. | [optional] |
| **customer_hash_id** | **String** | This field contains the unique customer identifier generated at the time of customer creation. | [optional] |
| **customer_id** | **Integer** | This field contains an internal NIUM customer identifier. This field shall be deprecated in future. | [optional] |
| **customer_type** | **String** | This field contains the customer type which is either &lt;B&gt;INDIVIDUAL&lt;/B&gt; or &lt;B&gt;CORPORATE&lt;/B&gt; and this depends on customer onboarding flows. | [optional] |
| **date_of_birth** | **String** | This field contains the date of birth of the customer [INDIVIDUAL] or applicant [CORPORATE] in YYYY-MM-DD format. | [optional] |
| **delivery_address1** | **String** | This field contains the line 1 of customer [INDIVIDUAL] or applicant [CORPORATE] delivery address. It is used for card delivery. | [optional] |
| **delivery_address2** | **String** | This field contains the line 2 of customer’s [INDIVIDUAL] or applicant’s [CORPORATE] delivery address, if provided during customer onboarding. It is used for card delivery. Otherwise, it contains null. | [optional] |
| **delivery_city** | **String** | This field contains the city of customer’s [INDIVIDUAL] or applicant’s [CORPORATE] delivery address. | [optional] |
| **delivery_country** | **String** | This field contains the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) of customer’s [INDIVIDUAL] or applicant’s [CORPORATE] delivery address, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **delivery_landmark** | **String** | This field contains the landmark for customer’s [INDIVIDUAL] or applicant’s [CORPORATE] delivery address, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **delivery_state** | **String** | This field contains the state of customer’s [INDIVIDUAL] or applicant’s [CORPORATE] delivery address, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **delivery_zip_code** | **String** | This field contains the zip code of customer’s [INDIVIDUAL] or applicant’s [CORPORATE] delivery address. | [optional] |
| **designation** | **String** | This field contains the designation of an employee, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **email** | **String** | This field contains the unique email address of the customer. | [optional] |
| **employee_id** | **String** | This field contains the employee ID of an employee, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **estimated_monthly_funding** | **String** | This field contains the estimated monthly funding amount expected in the wallet. This field is required when estimatedMonthlyFundingCurrency field is provided in the request. | [optional] |
| **estimated_monthly_funding_currency** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) in which estimated monthly funding is expected in the wallet, for example, SGD. | [optional] |
| **expected_countries_to_send_receive_from** | **Array&lt;String&gt;** | This is an array of 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) to allow the client to capture the expected countries to send/receive international payments from. This field is required when internationalPaymentsSupported field is true, for example, [“FR”, “DE”]. | [optional] |
| **first_name** | **String** | This field contains the first name of the customer [INDIVIDUAL] or applicant [CORPORATE]. | [optional] |
| **gender** | **String** | This field contains the gender of the customer [INDIVIDUAL] or applicant [CORPORATE], if provided during customer onboarding. The possible values are - Male, Female, or Others. Otherwise, it contains null. | [optional] |
| **identification_data** | **Array&lt;Hash&gt;** | This array contains objects consisting of type and value of each uploaded document. | [optional] |
| **identification_types** | **Array&lt;String&gt;** | This array contains the list of identification used during KYC. Otherwise, it contains null. | [optional] |
| **intended_use_of_account** | **String** | This flag contains the customer’s intended use of account. | [optional] |
| **international_payments_supported** | **Boolean** | This field indicates if the customer will be doing International send/receive payments. The default value will be false. | [optional] |
| **kyc_mode** | **String** | This field contains the kyc mode  The possible values for customer type INDIVIDUAL are: E_KYC, MANUAL_KYC, SCREENING, EVERIFY_KYC, or NONE.  The possible values for customer type CORPORATE are: KYB or NONE. | [optional] |
| **last_name** | **String** | This field contains the last name of the customer [INDIVIDUAL] or applicant [CORPORATE]. | [optional] |
| **middle_name** | **String** | This field contains the middle name of the customer [INDIVIDUAL] or applicant [CORPORATE], if provided. Otherwise, it contains null. | [optional] |
| **mobile** | **String** | This field contains the mobile number of the customer--digits only--without the country code. | [optional] |
| **nationality** | **String** | This field contains the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the customer [INDIVIDUAL] or applicant [CORPORATE] citizenship. | [optional] |
| **native_language_name** | **String** | This field contains the name of the customer in native language, if provided during customer onboarding. Otherwise, it contains null | [optional] |
| **payment_ids** | [**Array&lt;PaymentIdDTO&gt;**](PaymentIdDTO.md) | This field contains the unique payment Ids assigned to the customer. | [optional] |
| **pep** | **Boolean** | This flag indicates if a customer is a Politically Exposed Person (PEP) or not. | [optional] |
| **preferred_name** | **String** | This field contains the preferred name of the customer[INDIVIDUAL] or business name [CORPORATE]. | [optional] |
| **professional_details** | [**Array&lt;ProfessionalDetails&gt;**](ProfessionalDetails.md) | This array contains the applicant&#39;s professional details information | [optional] |
| **reference_id** | **String** | This field contains the  applicant&#39;s reference id | [optional] |
| **regulatory_region** | **String** | This field contains the regulatory region of the customer. | [optional] |
| **remarks** | **String** | This field contains any system-generated compliance comments, if applicable. | [optional] |
| **rfi_details** | [**Array&lt;CustomerRfiDetailsResponse&gt;**](CustomerRfiDetailsResponse.md) | This array contains the details of RFI, if raised. Otherwise, it contains null. | [optional] |
| **risk_assessment_info** | [**RiskAssessmentInfoResponseDTO**](RiskAssessmentInfoResponseDTO.md) |  | [optional] |
| **segment** | **String** | This field contains the fee segment applicable to the customer. Otherwise, it contains null. | [optional] |
| **stakeholder_details** | [**Array&lt;StakeholderDetailsResponseDTO&gt;**](StakeholderDetailsResponseDTO.md) | This is an array object may contain the stakeholder details in certain client onboarding flows. It is null for individual customer onboarding flows. | [optional] |
| **status** | **String** | This field contains the overall KYC status of the customer | [optional] |
| **tax_details** | [**Array&lt;CustomerTaxDetailDTO&gt;**](CustomerTaxDetailDTO.md) | This array contains tax details provided during compliance onboarding for EU customers. Otherwise, it contains null. | [optional] |
| **terms_and_condition_acceptance_flag** | **Boolean** | This flag denotes that the customer has accepted the Terms and Conditions. | [optional] |
| **terms_and_condition_name** | **String** | This name that the customer has accepted the Terms and Conditions. | [optional] |
| **terms_and_condition_version_id** | **String** | This version that the customer has accepted the Terms and Conditions. | [optional] |
| **updated_at** | **Time** | This field contains the timestamp of last customer updation in the format YYY-MM-DD hh:mm:ss, for example, 2021-07-29 06:11:43. | [optional] |
| **verification_consent** | **Boolean** | This flag contain the customer consent to proceed in case e-Document verification flow is initiated. | [optional] |
| **wallet_hash_id** | **String** | This field contains the unique wallet identifier generated simultaneously with customer creation. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomerDetailResponse.new(
  tags: null,
  billing_address1: 221 Mulford Drive,
  billing_address2: Johnson Square,
  billing_city: Sydney,
  billing_country: AU,
  billing_landmark: null,
  billing_state: New South Wales,
  billing_zip_code: 2001,
  block_comment: null,
  block_reason: CUSTOMER_REQUEST,
  block_updated_by: NIUM,
  business_details: null,
  business_partner: null,
  compliance_level: SCREENING_KY,
  compliance_remarks: APPLICANT -&gt; VERIFIED|DIRECTOR -&gt; VERIFIED,
  compliance_status: IN_PROGRESS,
  country_code: AU,
  country_of_birth: null,
  created_at: null,
  customer_hash_id: 190dddbe-fdbc-48fe-a7c2-d55266e9acf5,
  customer_id: 62654,
  customer_type: CORPORATE,
  date_of_birth: 1992-08-09,
  delivery_address1: 221 Mulford Drive,
  delivery_address2: ohnson Squar,
  delivery_city: Sydney,
  delivery_country: AU,
  delivery_landmark: null,
  delivery_state: New South Wale,
  delivery_zip_code: 2001,
  designation: null,
  email: xyzabc@abcmail.com,
  employee_id: null,
  estimated_monthly_funding: 1000-5000,
  estimated_monthly_funding_currency: EUR,
  expected_countries_to_send_receive_from: [&quot;FR&quot;],
  first_name: ABCD XYZ,
  gender: Male,
  identification_data: null,
  identification_types: null,
  intended_use_of_account: null,
  international_payments_supported: true,
  kyc_mode: MANUAL_KYC,
  last_name: PVT LTD,
  middle_name: null,
  mobile: 950030024,
  nationality: AU,
  native_language_name: null,
  payment_ids: null,
  pep: false,
  preferred_name: ABCD XYZ LT,
  professional_details: null,
  reference_id: null,
  regulatory_region: SG,
  remarks: VERIFIED,
  rfi_details: null,
  risk_assessment_info: null,
  segment: null,
  stakeholder_details: null,
  status: Clear,
  tax_details: null,
  terms_and_condition_acceptance_flag: false,
  terms_and_condition_name: B2BGENERIC,
  terms_and_condition_version_id: 1.0,
  updated_at: null,
  verification_consent: false,
  wallet_hash_id: 836db275-cb97-4a16-a1fb-f1d25fd732aa
)
```

