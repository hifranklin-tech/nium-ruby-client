# NiumClient::BeneficiaryDetailRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | **String** | This field accepts the bank account type of the beneficiary. The account_type can be either Individual or Company. |  |
| **address** | **String** | This field accepts an address of the beneficiary. | [optional] |
| **autosweep_payout_account** | **Boolean** | This field accepts the boolean value for the autosweepPayoutAccount. | [optional] |
| **beneficiary_contact_name** | **String** | This field accepts the contact name of the beneficiary. | [optional] |
| **beneficiary_dob** | **String** | This field accepts the date of birth of the beneficiary in the format YYYY-MM-DD, for example, 2023-07-08 | [optional] |
| **beneficiary_entity_type** | **String** | This field accepts the entity type of the beneficiary. | [optional] |
| **beneficiary_establishment_date** | **String** | This field accepts the date of establishment of the beneficiary in the format YYYY-MM-DD, for example, 2023-07-08 | [optional] |
| **city** | **String** | This field accepts the city of the beneficiary. Maximum character limit: 50. | [optional] |
| **contact_country_code** | **String** | This field accepts the ISO-2 country code for the mobile number of beneficiary. | [optional] |
| **contact_number** | **String** | This field accepts the mobile number of the beneficiary--digits only--without the country code. | [optional] |
| **country_code** | **String** | This field accepts the [ISO-2 country code](doc:currency-and-country-codes) for the mobile number of beneficiary. |  |
| **default_autosweep_payout_account** | **Boolean** | This field accepts the boolean value for the defaultAutosweepPayoutAccount. | [optional] |
| **email** | **String** | This field accepts an email of the beneficiary. | [optional] |
| **name** | **String** | This field accepts the name of the beneficiary.The beneficiary_group_name is required.Name can contain alphabets, numbers, and special characters that is (. , () &#39; / -). Maximum character limit: 150. |  |
| **postcode** | **String** | This field accepts the postal code of the beneficiary. | [optional] |
| **relationship** | **String** | This field accepts the relationship of the beneficiary with the remitter. | [optional] |
| **state** | **String** | This field accepts the state of the beneficiary. Maximum character limit: 50. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BeneficiaryDetailRequest.new(
  account_type: null,
  address: null,
  autosweep_payout_account: null,
  beneficiary_contact_name: null,
  beneficiary_dob: 2023-07-08,
  beneficiary_entity_type: null,
  beneficiary_establishment_date: 2023-07-08,
  city: null,
  contact_country_code: null,
  contact_number: null,
  country_code: null,
  default_autosweep_payout_account: null,
  email: null,
  name: null,
  postcode: null,
  relationship: null,
  state: null
)
```

