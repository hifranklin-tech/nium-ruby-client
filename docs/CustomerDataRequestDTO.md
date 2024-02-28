# NiumClient::CustomerDataRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_info** | **Hash&lt;String, String&gt;** | This is key/value pair object which accepts additional info. Expected keys are identificationType and identificationValue   identificationType  : This field accepts the name of the identification type, for example, Passport.  Note: This field is mandatory for certain clients with certain KYC modes pre-approved by NIUM&#39;s compliance or when the KYC mode is Screening. If you have plans to offer the Payout/Send feature, reach out to your NIUM&#39;s representative to discuss on the requirement of this field.   identificationValue : This field accepts the identification value provided by the customer. Note: This field is mandatory for certain clients with KYC modes pre-approved by NIUM&#39;s compliance or when the KYC mode is Screening.  Example : { \&quot;identificationType\&quot;: \&quot;Passport\&quot;,  \&quot;identificationValue\&quot; : \&quot;P123456A\&quot; } | [optional] |
| **billing_address1** | **String** | This field accepts the line 1 of customer’s billing address. Maximum character limit: 40 |  |
| **billing_address2** | **String** | This field accepts the line 2 of customer’s billing address. Maximum character limit: 40 | [optional] |
| **billing_city** | **String** | This field accepts the city of customer’s billing address. Maximum character limit: 20 |  |
| **billing_country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country of customer’s billing address. |  |
| **billing_landmark** | **String** | This field accepts the landmark for customer’s billing address. Maximum character limit: 40 | [optional] |
| **billing_state** | **String** | This field accepts the state of customer’s billing address. Maximum character limit: 30 | [optional] |
| **billing_zip_code** | **String** | This field accepts the zipcode of customer’s billing address. Maximum character limit: 10 |  |
| **birth_country** | **String** |  | [optional] |
| **correspondence_address1** | **String** | This field accepts the line 1 of customer&#39;s correspondence address. Maximum character limit: 40 | [optional] |
| **correspondence_address2** | **String** | This field accepts the line 2 of customer&#39;s correspondence address. Maximum character limit: 40 | [optional] |
| **correspondence_city** | **String** | This field accepts the city of customer&#39;s correspondence address. Maximum character limit: 20 | [optional] |
| **correspondence_country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country of customer&#39;s correspondence address. | [optional] |
| **correspondence_landmark** | **String** | This field accepts the landmark for customer&#39;s correspondence address. Maximum character limit: 40 | [optional] |
| **correspondence_state** | **String** | This field accepts the state of customer’s correspondence address. Maximum character limit: 30 | [optional] |
| **correspondence_zip_code** | **String** | This field accepts the zipcode of customer&#39;s correspondence address. Maximum character limit: 10 | [optional] |
| **country_code** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country prefix code to the customer’s mobile number. |  |
| **country_ip** | **String** | The country IP for the device by the customer for initiating the request. | [optional] |
| **country_of_birth** | **String** | This field accepts the 2-letter [ISO country code](doc:currency-and-country-codes) denoting the customer’s country of birth. Note:This field is mandatory for EU and UK. | [optional] |
| **customer_hash_id** | **String** | This field accepts previously generated unique customer identifier of customer. |  |
| **date_of_birth** | **String** | This field accepts the date of birth of the customer in YYYY-MM-DD format. Minimum customer age should be 18 years. Discuss with your NIUM account manager for any special use-cases. |  |
| **delivery_address1** | **String** | This field accepts the line 1 of customer’s delivery address. Maximum character limit: 40 |  |
| **delivery_address2** | **String** | This field accepts the line 2 of customer&#39;s delivery address. Maximum character limit: 40 | [optional] |
| **delivery_city** | **String** | This field accepts the city of customer’s delivery address. Maximum character limit: 20 |  |
| **delivery_country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country of customer’s billing address. |  |
| **delivery_landmark** | **String** | This field accepts the landmark for customer&#39;s delivery address. Maximum character limit: 40 | [optional] |
| **delivery_state** | **String** | This field accepts the state of customer&#39;s delivery address. Maximum character limit: 30 | [optional] |
| **delivery_zip_code** | **String** | This field accepts the zipcode of customer&#39;s delivery address. Maximum character limit: 10 |  |
| **device_info** | **String** | The OS of the device used by the customer for initiating the request. | [optional] |
| **email** | **String** | This field accepts the unique email address of the customer.  Maximum character limit: 60 |  |
| **enable_doc_upload** | **Boolean** |  | [optional] |
| **estimated_monthly_funding** | **String** | This field accepts the estimated monthly funding amount expected in the wallet. This field is required when estimatedMonthlyFundingCurrency field is provided in the request. Note:This field is mandatory for EU and UK. | [optional] |
| **estimated_monthly_funding_currency** | **String** | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) in which estimated monthly funding is expected in the wallet, for example, SGD. Note:This field is mandatory for EU and UK. | [optional] |
| **expected_countries_to_send_receive_from** | **Array&lt;String&gt;** | This is an array of 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) to allow the client to capture the expected countries to send/receive international payments from. This field is required when internationalPaymentsSupported field is true, for example, [“FR”, “DE”]. Note:This field is mandatory for EU and UK. | [optional] |
| **first_name** | **String** | This field accepts the first name of the customer.  Maximum character limit: 40 |  |
| **gender** | **String** | This field accepts the gender of the customer. | [optional] |
| **identification_doc** | [**Array&lt;ComplianceIdentificationDocDTO&gt;**](ComplianceIdentificationDocDTO.md) |  | [optional] |
| **intended_use_of_account** | **String** | This field accepts customer’s intended use of account. Note:This field is mandatory for EU and UK. | [optional] |
| **international_payments_supported** | **Boolean** | This field indicates if the customer will be doing International send/receive payments. The default value will be false. Note:This field is mandatory for EU and UK. | [optional] |
| **ip_address** | **String** | The IP address of the device used by the customer for initiating the request. | [optional] |
| **kyc** | **Boolean** |  | [optional] |
| **last_name** | **String** | This field accepts the last name of the customer. Maximum character limit: 40 |  |
| **middle_name** | **String** | This field accepts the middle name of the customer.  Maximum character limit: 40 | [optional] |
| **mobile** | **String** | This field accepts the mobile number of the customer--digits only--without the country code. Maximum character limit: 20 |  |
| **nationality** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the customer’s citizenship. |  |
| **native_language_name** | **String** | This field contains the customer&#39;s name in native language.  Maximum character limit: 40 | [optional] |
| **occupation** | **String** | This field accepts the customer’s occupation. Refer to [Enum values](https://docs.nium.com/apis/docs/unified-add-customer-api) for the description.   Note: This field is mandatory for CA. | [optional] |
| **pep** | **Boolean** | This field will ensure either a customer is a Politically Exposed Person (PEP) or not. Note:This field is mandatory for EU and UK. |  |
| **preferred_name** | **String** | This field accepts the common name or preferred name of the customer. It is also acceptable to pass the first name in this field. Maximum character limit: 40 | [optional] |
| **segment** | **String** | This is the fee segment associated with a client. Maximum character limit: 64 | [optional] |
| **session_id** | **String** | The session Id for the session of the customer for initiating the request. | [optional] |
| **tax_details** | [**Array&lt;CustomerTaxDetailDTO&gt;**](CustomerTaxDetailDTO.md) | This is an array of tax details provided for compliance onboarding for EU customers. Note:This field is mandatory for EU and UK. |  |
| **upgrade_request** | **Boolean** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomerDataRequestDTO.new(
  additional_info: {&quot;identificationType&quot;:&quot;Passport&quot;,&quot;identificationValue&quot;:&quot;P123456A&quot;},
  billing_address1: 72 James Buildin,
  billing_address2: Springfield Road,
  billing_city: Paris,
  billing_country: FR,
  billing_landmark: near Post Office,
  billing_state: Ile-de-France,
  billing_zip_code: 048581,
  birth_country: null,
  correspondence_address1: 472 James Building,
  correspondence_address2: Springfield Road,
  correspondence_city: Paris,
  correspondence_country: FR,
  correspondence_landmark: near Post Office,
  correspondence_state: Ile-de-France,
  correspondence_zip_code: 048581,
  country_code: SG,
  country_ip: 2.2.2.2,
  country_of_birth: FR,
  customer_hash_id: 2992c5c6-823b-4fa9-a64b-add0ea88bb66,
  date_of_birth: 1995-01-13,
  delivery_address1: 472 James Building,
  delivery_address2: Springfield Road,
  delivery_city: Paris,
  delivery_country: FR,
  delivery_landmark: near Post Office,
  delivery_state: Ile-de-France,
  delivery_zip_code: 048581,
  device_info: android,
  email: arnav42@xyzmail.com,
  enable_doc_upload: null,
  estimated_monthly_funding: null,
  estimated_monthly_funding_currency: EUR,
  expected_countries_to_send_receive_from: [&quot;FR&quot;,&quot;DE&quot;],
  first_name: Arnav,
  gender: Male,
  identification_doc: null,
  intended_use_of_account: Receiving from/Transfers to friends or family,
  international_payments_supported: true,
  ip_address: 1.1.1.1,
  kyc: null,
  last_name: Paul,
  middle_name: Kumar,
  mobile: 991122142,
  nationality: SG,
  native_language_name: 界限,
  occupation: null,
  pep: false,
  preferred_name: Arnav,
  segment: gold,
  session_id: 1234,
  tax_details: null,
  upgrade_request: null
)
```

