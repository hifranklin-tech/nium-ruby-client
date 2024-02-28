# NiumClient::UpdateCustomerDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_info** | **Hash&lt;String, String&gt;** |  | [optional] |
| **authentication_code** | **String** | This field accepts the authentication code generated as part of SCA (Strong Customer Authentication). Note: : Authentication code must be passed if regulatory region of the program is UK or EU. This field does not accept a value for any other region. | [optional] |
| **billing_address1** | **String** | Billing address line one of a customer. | [optional] |
| **billing_address2** | **String** | Billing address line two of a customer. | [optional] |
| **billing_address_id** | **String** |  | [optional] |
| **billing_city** | **String** | Billing address city name. | [optional] |
| **billing_country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country of customer’s billing address. It is important to pass this field if the card to be issued is to be used for GooglePay or ApplePay provisioning. | [optional] |
| **billing_landmark** | **String** | Billing landmark address field. | [optional] |
| **billing_state** | **String** | Billing address state name. | [optional] |
| **billing_zip_code** | **String** | Billing address ZIP code. | [optional] |
| **block_type** | **String** |  | [optional] |
| **correspondence_address1** | **String** | Line one of the customer&#39;s correspondence address. | [optional] |
| **correspondence_address2** | **String** | Line two of the customer&#39;s correspondence address. | [optional] |
| **correspondence_address_id** | **String** |  | [optional] |
| **correspondence_city** | **String** | Correspondence address city name. | [optional] |
| **correspondence_country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country of customer’s correspondence address. | [optional] |
| **correspondence_landmark** | **String** | Correspondence landmark address field. | [optional] |
| **correspondence_state** | **String** | Correspondence address state name. | [optional] |
| **correspondence_zip_code** | **String** | Correspondence postal/ZIP code of a customer. | [optional] |
| **country_code** | **String** | This field contains the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) for identifying the country prefix to a mobile number. | [optional] |
| **country_ip** | **String** | The country IP for the device by the customer for initiating the request. | [optional] |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. | [optional] |
| **delivery_address1** | **String** | Line one of the address where the customer would like to receive a card. | [optional] |
| **delivery_address2** | **String** | Line two of the customer&#39;s delivery address. | [optional] |
| **delivery_address_id** | **String** |  | [optional] |
| **delivery_city** | **String** | Customer&#39;s city name. | [optional] |
| **delivery_country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country of customer&#39;s delivery address. | [optional] |
| **delivery_landmark** | **String** | delivery landmark address field. | [optional] |
| **delivery_state** | **String** | Customer&#39;s state name. | [optional] |
| **delivery_zip_code** | **String** | Customer&#39;s ZIP code. | [optional] |
| **device_info** | **String** | The OS of the device used by the customer for initiating the request. | [optional] |
| **email** | **String** | Customer&#39;s email address | [optional] |
| **employee_id** | **String** | This field accepts the employee Id for the customer, in case of a corporate program. | [optional] |
| **ip_address** | **String** | The IP address of the device used by the customer for initiating the request. | [optional] |
| **mobile** | **String** | Mobile number to be updated. | [optional] |
| **native_language_name** | **String** | This field contains the customer&#39;s name in native language. Maximum character limit: 40 | [optional] |
| **segment** | **String** | This is the fee segment associated with a client. Maximum character limit: 64 | [optional] |
| **session_id** | **String** | The session Id for the session of the customer for initiating the request. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::UpdateCustomerDTO.new(
  additional_info: null,
  authentication_code: authCode,
  billing_address1: #20-05, Hong Leong Building,
  billing_address2: 16 Raffles Quay,
  billing_address_id: null,
  billing_city: Singapore,
  billing_country: SG,
  billing_landmark: Near Marina Blvd,
  billing_state: Singapore,
  billing_zip_code: 048581,
  block_type: null,
  correspondence_address1: #20-05, Hong Leong Building,
  correspondence_address2: 16 Raffles Quay,
  correspondence_address_id: null,
  correspondence_city: Singapore,
  correspondence_country: SG,
  correspondence_landmark: Near Marina blvd,
  correspondence_state: Singapore,
  correspondence_zip_code: 048581,
  country_code: SG,
  country_ip: 2.2.2.2,
  customer_hash_id: null,
  delivery_address1: #20-05, Hong Leong Building,
  delivery_address2: 16 Raffles Quay,
  delivery_address_id: null,
  delivery_city: Singapore,
  delivery_country: SG,
  delivery_landmark: Near Marina Blvd,
  delivery_state: Singapore,
  delivery_zip_code: 048581,
  device_info: android,
  email: john@xyzmail.com,
  employee_id: null,
  ip_address: 1.1.1.1,
  mobile: 81334300,
  native_language_name: 界限,
  segment: gold,
  session_id: 1234
)
```

