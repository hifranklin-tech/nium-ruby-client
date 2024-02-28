# NiumClient::IndividualCustomerResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_address1** | **String** |  | [optional] |
| **billing_address2** | **String** | This field contains the line 2 of individual customer’s billing address, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **billing_city** | **String** | This field contains the city of individual customer’s billing address. | [optional] |
| **billing_country** | **String** | This field contains the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) of customer’s [INDIVIDUAL] or applicant’s [CORPORATE] billing address, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **billing_landmark** | **String** | This field contains the landmark for individual customer’s billing address, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **billing_state** | **String** | This field contains the state of individual customer’s billing address, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **billing_zip_code** | **String** | This field contains the zip code of individual customer’s  billing address. | [optional] |
| **country_code** | **String** | This field contains the 2-letter [ISO-2 country code](doc:currency-and-country-codes) for identifying the country prefix to the customer’s mobile number. | [optional] |
| **country_of_birth** | **String** | This field contains the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the customer’s country of birth. | [optional] |
| **date_of_birth** | **String** | This field contains the date of birth of the customer [INDIVIDUAL] or applicant [CORPORATE] in YYYY-MM-DD format. | [optional] |
| **designation** | **String** | This field contains the designation of an employee, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **email** | **String** | This field contains the unique email address of the customer. | [optional] |
| **employee_id** | **String** | This field contains the employee ID of an employee, if provided during customer onboarding. Otherwise, it contains null. | [optional] |
| **estimated_monthly_funding** | **String** | This field contains the estimated monthly funding amount expected in the wallet. This field is required when estimatedMonthlyFundingCurrency field is provided in the request. | [optional] |
| **estimated_monthly_funding_currency** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) in which estimated monthly funding is expected in the wallet, for example, SGD. | [optional] |
| **expected_countries_to_send_receive_from** | **Array&lt;String&gt;** | This is an array of 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) to allow the client to capture the expected countries to send/receive international payments from. This field is required when internationalPaymentsSupported field is true, for example, [“FR”, “DE”]. | [optional] |
| **first_name** | **String** | This field contains the first name of the individual customer. | [optional] |
| **gender** | **String** | This field contains the gender of the individual customer, if provided during customer onboarding. The possible values are - Male, Female, or Others. Otherwise, it contains null. | [optional] |
| **identification_data** | **Array&lt;Hash&gt;** | This array contains objects consisting of type and value of each uploaded document. | [optional] |
| **international_payments_supported** | **Boolean** | This field indicates if the customer will be doing International send/receive payments. The default value will be false. | [optional] |
| **last_name** | **String** | This field contains the last name of the individual customer. | [optional] |
| **middle_name** | **String** | This field contains the middle name of the individual customer, if provided. Otherwise, it contains null. | [optional] |
| **mobile** | **String** | This field contains the mobile number of the customer without the country code. | [optional] |
| **nationality** | **String** | This field contains the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the customer [INDIVIDUAL] or applicant [CORPORATE] citizenship. | [optional] |
| **native_language_name** | **String** | This field contains the name of the customer in native language, if provided during customer onboarding. Otherwise, it contains null | [optional] |
| **occupation** | **String** | This field accepts the customer’s occupation. Refer to [Enum values](https://docs.nium.com/apis/docs/unified-add-customer-api) for the description.   Note: This field is mandatory for CA. | [optional] |
| **parent_customer_hash_id** | **String** | This field contains the unique identifier of the corporate parent customer to whom the individual customer is tagged. | [optional] |
| **pep** | **Boolean** | This flag indicates if a customer is a Politically Exposed Person (PEP) or not. | [optional] |
| **preferred_name** | **String** | This field contains the preferred name of the individual customer | [optional] |
| **tax_details** | [**Array&lt;TaxDetailsResponseDTO&gt;**](TaxDetailsResponseDTO.md) | This array contains tax details provided during compliance onboarding for EU customers. Otherwise, it contains null. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::IndividualCustomerResponseDTO.new(
  billing_address1: null,
  billing_address2: Johnson Square,
  billing_city: Sydney,
  billing_country: AU,
  billing_landmark: null,
  billing_state: New South Wales,
  billing_zip_code: 2001,
  country_code: AU,
  country_of_birth: null,
  date_of_birth: 1992-08-09,
  designation: null,
  email: xyzabc@abcmail.com,
  employee_id: null,
  estimated_monthly_funding: 1000-5000,
  estimated_monthly_funding_currency: EUR,
  expected_countries_to_send_receive_from: [&quot;FR&quot;],
  first_name: ABCD XYZ,
  gender: Male,
  identification_data: null,
  international_payments_supported: true,
  last_name: PVT LTD,
  middle_name: null,
  mobile: 950030024,
  nationality: AU,
  native_language_name: null,
  occupation: OC0001,
  parent_customer_hash_id: 190dddbe-fdbc-48fe-a7c2-d55266e9acf5,
  pep: false,
  preferred_name: ABCD XYZ LT,
  tax_details: null
)
```

