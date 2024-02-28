# NiumClient::BeneficiaryAccountDetailsDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | **String** | This field accepts the bank account type of the beneficiary. | [optional] |
| **address** | **String** | This field accepts an address of the beneficiary. | [optional] |
| **_alias** | **String** |  | [optional] |
| **city** | **String** | This field accepts the city of the beneficiary. | [optional] |
| **contact_number** | **String** | This field accepts the mobile number of the beneficiary. | [optional] |
| **country_code** | **String** | This field accepts the [ISO-2 country code](https://docs.nium.com/apis/docs/currency-and-country-codes) for the mobile number of beneficiary. | [optional] |
| **email** | **String** | This field accepts an email of the beneficiary. | [optional] |
| **name** | **String** | This field accepts the name of a beneficiary. | [optional] |
| **postcode** | **String** | This field accepts an postcode of the beneficiary. | [optional] |
| **remitter_beneficiary_relationship** | **String** | This field accepts the relationship of the beneficiary with the remitter. | [optional] |
| **state** | **String** | This field accepts the state of the beneficiary. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BeneficiaryAccountDetailsDTO.new(
  account_type: null,
  address: null,
  _alias: null,
  city: null,
  contact_number: null,
  country_code: null,
  email: null,
  name: null,
  postcode: null,
  remitter_beneficiary_relationship: null,
  state: null
)
```

