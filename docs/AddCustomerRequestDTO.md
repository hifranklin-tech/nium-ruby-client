# NiumClient::AddCustomerRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | [**Array&lt;CustomerTagDTO&gt;**](CustomerTagDTO.md) | This object contains the user defined key-value pairs provided by the client. The maximum number of tags allowed is 15 | [optional] |
| **additional_info** | **Hash&lt;String, String&gt;** | This array accepts additional information. | [optional] |
| **billing_address1** | **String** | This field accepts line 1 of the customer’s billing address. In the case of eKYC[GreenId], this field is used to verify the address with the document chosen. Maximum character limit: 40 The format for GreenId is: StreetNumber | StreetName | Suburb. | [optional] |
| **billing_address2** | **String** | This field accepts the line 2 of customer&#39;s billing address. Maximum character limit: 40 | [optional] |
| **billing_city** | **String** | This field accepts the city of customer’s billing address. Maximum character limit: 20 | [optional] |
| **billing_country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country of customer&#39;s billing address. | [optional] |
| **billing_landmark** | **String** | This field accepts the landmark for customer’s billing address. Maximum character limit: 40 | [optional] |
| **billing_state** | **String** | This field accepts the state of customer&#39;s billing address. Maximum character limit: 30 | [optional] |
| **billing_zip_code** | **String** | This field accepts the zipcode of customer’s billing address. Maximum character limit: 10 | [optional] |
| **compliance_level** | **String** | This field accepts the compliance level for the customer. It is useful when the client has multiple compliance setup. For example, customer may be onboarded with SCREENING and upgrade to SCREENING_KYC later. | [optional] |
| **correspondence_address1** | **String** | This field accepts the line 1 of customer&#39;s correspondence address. Maximum character limit: 40 | [optional] |
| **correspondence_address2** | **String** | This field accepts the line 2 of customer&#39;s correspondence address. Maximum character limit: 40 | [optional] |
| **correspondence_city** | **String** | This field accepts the city of customer&#39;s correspondence address. Maximum character limit: 20 | [optional] |
| **correspondence_country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country of customer&#39;s correspondence address. | [optional] |
| **correspondence_landmark** | **String** | This field accepts the landmark for customer&#39;s correspondence address. Maximum character limit: 40 | [optional] |
| **correspondence_state** | **String** | This field accepts the state of customer&#39;s correspondence address. Maximum character limit: 30 | [optional] |
| **correspondence_zip_code** | **String** | This field accepts the zipcode of customer&#39;s correspondence address. Maximum character limit: 10 | [optional] |
| **country_code** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country prefix code to the customer&#39;s mobile number. | [optional] |
| **country_ip** | **String** | This field accepts the country IP for the device by the customer for initiating the request. | [optional] |
| **country_of_birth** | **String** | This field accepts the 2-letter [ISO country code](doc:currency-and-country-codes) denoting the customer’s country of birth. Note: This field is mandatory for EU. | [optional] |
| **customer_hash_id** | **String** | This field accepts the previously generated unique customer identifier of customer. | [optional] |
| **date_of_birth** | **String** | This field accepts the date of birth of the customer in YYYY-MM-DD format. Minimum customer age should be 18 years. Discuss with your NIUM account manager for any special use-cases. | [optional] |
| **delivery_address1** | **String** | This field accepts the line 1 of customer’s delivery address. Maximum character limit: 40 | [optional] |
| **delivery_address2** | **String** | This field accepts the line 2 of customer&#39;s delivery address. Maximum character limit: 40 | [optional] |
| **delivery_city** | **String** | This field accepts the city of customer&#39;s delivery address. Maximum character limit: 20 | [optional] |
| **delivery_country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country of customer&#39;s delivery address. | [optional] |
| **delivery_landmark** | **String** | This field accepts the landmark for customer&#39;s delivery address. Maximum character limit: 40 | [optional] |
| **delivery_state** | **String** | This field accepts the state of customer&#39;s delivery address. Maximum character limit: 30 | [optional] |
| **delivery_zip_code** | **String** | This field accepts the zipcode of customer&#39;s delivery address. Maximum character limit: 10 | [optional] |
| **designation** | **String** | This field accepts the designation of the customer for certain shipping industry use-cases. This field can accept only one of the following values: • CAPTAIN • SEAFARER • SMC • VESSEL | [optional] |
| **device_info** | **String** | This field accepts the OS of the device used by the customer for initiating the request. | [optional] |
| **email** | **String** | This field accepts the unique email address of the customer. Maximum character limit: 60 | [optional] |
| **employee_id** | **String** | This field accepts the employee ID of the customer, if applicable. | [optional] |
| **estimated_monthly_funding** | **String** | This field accepts the estimated monthly funding amount expected in the wallet. This field is required when estimatedMonthlyFundingCurrency field is provided in the request. The possible values are: • MF001: &lt;1000 • MF002: 1000-5000 • MF003: 5001-10000 • MF004: 10001-20000 • MF005: &gt;20000 See [enum value descriptions](doc:unified-add-customer-api#estimatedmonthlyfunding) Note: This field is mandatory for EU and UK. | [optional] |
| **estimated_monthly_funding_currency** | **String** | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) in which estimated monthly funding is expected in the wallet, for example, SGD. Note: This field is mandatory for EU and UK. | [optional] |
| **expected_countries_to_send_receive_from** | **Array&lt;String&gt;** | This is an array of 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) to allow the client to capture the expected countries to send/receive international payments from. This field is required when internationalPaymentsSupported field is true, for example, [“FR”, “DE”]. Note: This field is mandatory for EU and UK. | [optional] |
| **first_name** | **String** | This field accepts the first name of the customer. Maximum character limit: 40 | [optional] |
| **gender** | **String** | This field can accept only one of the following values: • Male • Female • Others | [optional] |
| **identification_doc** | [**Array&lt;ComplianceIdentificationDocDTO&gt;**](ComplianceIdentificationDocDTO.md) | This is an array of actual Base-64 documents as required. The maximum allowed size of this payload is 10 MB. A separate object is needed for each document image. | [optional] |
| **intended_use_of_account** | **String** | This field accepts the customer’s intended use of account.  See [enum value descriptions](doc:unified-add-customer-api#intendeduseofaccount) for more information. | [optional] |
| **international_payments_supported** | **Boolean** | This field specifies if the customer will be doing International send/receive payments. The default value will be false. Note: This field is mandatory for EU and UK. | [optional] |
| **ip_address** | **String** | This field accepts the IP address of the device used by the customer for initiating the request. | [optional] |
| **is_tnc_accepted** | **Boolean** | This flag specifies if the customer has accepted or rejected the Terms and Conditions. | [optional] |
| **last_name** | **String** | This field accepts the last name of the customer. Maximum character limit: 40 | [optional] |
| **middle_name** | **String** | This field accepts the middle name of the customer. Maximum character limit: 40 | [optional] |
| **mobile** | **String** | This field accepts the mobile number of the customer--digits only--without the country code. Maximum character limit: 20 | [optional] |
| **nationality** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the customer&#39;s citizenship. | [optional] |
| **native_language_name** | **String** | This field accepts the customer&#39;s name in native language. Maximum character limit: 40 | [optional] |
| **pep** | **Boolean** | This field specifies if the customer is a Politically Exposed Person (PEP) or not. Note: This field is mandatory for EU. | [optional] |
| **preferred_name** | **String** | This field accepts the common name or preferred name of the customer. It is also acceptable to pass the first name in this field. Maximum character limit: 20 | [optional] |
| **segment** | **String** | This field accepts the fee segment associated with a client. Maximum character limit: 64 | [optional] |
| **session_id** | **String** | This field accepts the session ID for the session of the customer for initiating the request. | [optional] |
| **tax_details** | [**Array&lt;CustomerTaxDetailDTO&gt;**](CustomerTaxDetailDTO.md) |  | [optional] |
| **verification_consent** | **Boolean** | This field specifies if the electronic verification consent to process customer data for compliance is required or not. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AddCustomerRequestDTO.new(
  tags: null,
  additional_info: null,
  billing_address1: null,
  billing_address2: null,
  billing_city: null,
  billing_country: null,
  billing_landmark: null,
  billing_state: null,
  billing_zip_code: null,
  compliance_level: null,
  correspondence_address1: null,
  correspondence_address2: null,
  correspondence_city: null,
  correspondence_country: null,
  correspondence_landmark: null,
  correspondence_state: null,
  correspondence_zip_code: null,
  country_code: null,
  country_ip: null,
  country_of_birth: null,
  customer_hash_id: null,
  date_of_birth: null,
  delivery_address1: null,
  delivery_address2: null,
  delivery_city: null,
  delivery_country: null,
  delivery_landmark: null,
  delivery_state: null,
  delivery_zip_code: null,
  designation: null,
  device_info: null,
  email: null,
  employee_id: null,
  estimated_monthly_funding: null,
  estimated_monthly_funding_currency: null,
  expected_countries_to_send_receive_from: null,
  first_name: null,
  gender: null,
  identification_doc: null,
  intended_use_of_account: null,
  international_payments_supported: null,
  ip_address: null,
  is_tnc_accepted: null,
  last_name: null,
  middle_name: null,
  mobile: null,
  nationality: null,
  native_language_name: null,
  pep: null,
  preferred_name: null,
  segment: null,
  session_id: null,
  tax_details: null,
  verification_consent: null
)
```

