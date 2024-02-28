# NiumClient::EVerifyCustomerRegistrationRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_address1** | **String** | This field accepts the line 1 of customer’s billing address. Maximum character limit: 40 |  |
| **billing_address2** | **String** | This field accepts the line 2 of customer’s billing address. Maximum character limit: 40 | [optional] |
| **billing_city** | **String** | This field accepts the city of customer’s billing address. Maximum character limit: 20 |  |
| **billing_country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country of customer’s billing address. |  |
| **billing_state** | **String** | This field accepts the state of customer’s billing address. Maximum character limit: 30 | [optional] |
| **billing_zip_code** | **String** | This field accepts the zipcode of customer’s billing address. Maximum character limit: 10 |  |
| **country_code** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country prefix code to the customer’s mobile number. |  |
| **country_ip** | **String** | This field accepts the country IP for the device by the customer for initiating the request. | [optional] |
| **country_of_birth** | **String** | This field accepts the 2-letter [ISO country code](doc:currency-and-country-codes) denoting the customer’s country of birth. Note: This field is mandatory for EU and UK. | [optional] |
| **customer_hash_id** | **String** | This field accepts previously generated unique customer identifier of customer. |  |
| **date_of_birth** | **String** | This field accepts the date of birth of the customer in YYYY-MM-DD format. Minimum customer age should be 18 years. Discuss with your NIUM account manager for any special use-cases. |  |
| **device_info** | **String** | This field accepts the OS of the device used by the customer for initiating the request. | [optional] |
| **email** | **String** | This field accepts the unique email address of the customer. Maximum character limit: 60 |  |
| **estimated_monthly_funding** | **String** | This field accepts the estimated monthly funding amount expected in the wallet. This field is required when estimatedMonthlyFundingCurrency field is provided in the request. The possible values are: • &lt;1000 • 1000-5000 • 5001-10000 • 10001-20000 • &gt;20000 Note: This field is mandatory for EU and UK. | [optional] |
| **estimated_monthly_funding_currency** | **String** | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) in which estimated monthly funding is expected in the wallet, for example, SGD. Note: This field is mandatory for EU and UK. | [optional] |
| **expected_countries_to_send_receive_from** | **Array&lt;String&gt;** | This is an array of 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) to allow the client to capture the expected countries to send/receive international payments from. This field is required when internationalPaymentsSupported field is true, for example, [“FR”, “DE”]. Note: This field is mandatory for EU and UK. | [optional] |
| **first_name** | **String** | This field accepts the first name of the customer. Maximum character limit: 40 |  |
| **gender** | **String** | This field accepts the gender of the customer. | [optional] |
| **intended_use_of_account** | **String** | **Conditional** This field accepts the customer’s intended use of account.  Note: This field is mandatory for EU and UK. | [optional] |
| **international_payments_supported** | **Boolean** | This field specifies if the customer will be doing International send/receive payments. The default value will be false. Note: This field is mandatory for EU and UK. | [optional] |
| **ip_address** | **String** | This field accepts the IP address of the device used by the customer for initiating the request. | [optional] |
| **last_name** | **String** | This field accepts the last name of the customer. Maximum character limit: 40 |  |
| **middle_name** | **String** | This field accepts the middle name of the customer. Maximum character limit: 40 | [optional] |
| **mobile** | **String** | This field accepts the mobile number of the customer without the country prefix code. Maximum character limit: 20 |  |
| **nationality** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the customer’s citizenship. |  |
| **native_language_name** | **String** | This field accepts the customer&#39;s name in native language. Maximum character limit: 40 | [optional] |
| **pep** | **Boolean** | This field specifies if the customer is a Politically Exposed Person (PEP) or not. Note: This field is mandatory for EU and UK. | [optional] |
| **preferred_name** | **String** | This field accepts the common name or preferred name of the customer. It is also acceptable to pass the first name in this field. Maximum character limit: 40 | [optional] |
| **segment** | **String** | This field accepts the fee segment associated with a client. Maximum character limit: 64 | [optional] |
| **session_id** | **String** | This field accepts the session ID for the session of the customer for initiating the request. | [optional] |
| **tax_details** | [**Array&lt;CustomerTaxDetailDTO&gt;**](CustomerTaxDetailDTO.md) | This is an array of tax details provided for compliance onboarding for EU customers. Note: This field is mandatory for EU and UK. | [optional] |
| **upgrade_request** | **Boolean** |  | [optional] |
| **verification_consent** | **Boolean** | This field specifies if the electronic verification consent to process customer data for compliance or not. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::EVerifyCustomerRegistrationRequestDTO.new(
  billing_address1: null,
  billing_address2: null,
  billing_city: null,
  billing_country: null,
  billing_state: null,
  billing_zip_code: null,
  country_code: null,
  country_ip: null,
  country_of_birth: null,
  customer_hash_id: null,
  date_of_birth: null,
  device_info: null,
  email: null,
  estimated_monthly_funding: null,
  estimated_monthly_funding_currency: null,
  expected_countries_to_send_receive_from: null,
  first_name: null,
  gender: null,
  intended_use_of_account: null,
  international_payments_supported: null,
  ip_address: null,
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
  upgrade_request: null,
  verification_consent: null
)
```

