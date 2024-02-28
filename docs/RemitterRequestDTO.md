# NiumClient::RemitterRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | **String** | This field accepts the Remitter&#39;s account type as INDIVIDUAL or CORPORATE | [optional] |
| **address** | **String** | This field accepts address for Remitter&#39;s place of residence. | [optional] |
| **bank_account_number** | **String** | This field accepts the account number of the Remitter. | [optional] |
| **city** | **String** | This field accepts the city for Remitter&#39;s place of residence. | [optional] |
| **contact_number** | **String** | This field accepts the Remitter&#39;s contact number. | [optional] |
| **country_code** | **String** | This field accepts the country of residence for the remitter. | [optional] |
| **dob** | **String** | This field accepts Remitter&#39;s birth date. | [optional] |
| **identification_number** | **String** | ID number of the selected identificationType. | [optional] |
| **identification_type** | **String** | This field accepts the ID document type of the remitter e.g. Passport, National_ID etc.. | [optional] |
| **industry_type** | **String** | This field accepts industry type associated with the remitter. | [optional] |
| **name** | **String** | This field accepts the name of the remitter. | [optional] |
| **nationality** | **String** | This field accepts Remitter&#39;s nationality. | [optional] |
| **originating_fi_name** | **String** | This field accepts the name of the financial institution where the request was initiated. This is typically applicable for requests that did not originate at the financial institution who is a direct Nium customer. | [optional] |
| **place_of_birth** | **String** | This field accepts Remitter&#39;s place of birth. | [optional] |
| **postcode** | **String** | This field accepts the postcode  for Remitter&#39;s place of residence. | [optional] |
| **state** | **String** | This field accepts the state  for Remitter&#39;s place of residence. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RemitterRequestDTO.new(
  account_type: null,
  address: null,
  bank_account_number: null,
  city: null,
  contact_number: null,
  country_code: null,
  dob: null,
  identification_number: null,
  identification_type: null,
  industry_type: null,
  name: null,
  nationality: null,
  originating_fi_name: null,
  place_of_birth: null,
  postcode: null,
  state: null
)
```

