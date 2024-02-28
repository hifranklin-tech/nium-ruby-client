# NiumClient::RfiResponseInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_info** | **Hash&lt;String, String&gt;** | This object accepts RFI raised for additional information fields. | [optional] |
| **address** | [**AddressDTO**](AddressDTO.md) |  | [optional] |
| **bank_account_number** | **String** | This field accepts the bank account number. | [optional] |
| **bank_name** | **String** | This field accepts the bank name. | [optional] |
| **company_name** | **String** | This field accepts the company name of the customer. | [optional] |
| **date_of_birth** | **String** | This field accepts the date of birth of the customer. The format is yyyy-mm-dd. | [optional] |
| **first_name** | **String** | This field accepts the first name of the customer. Maximum character limit: 50. | [optional] |
| **identification_doc** | [**IdentificationDocDTO**](IdentificationDocDTO.md) |  | [optional] |
| **last_name** | **String** | This field accepts the last name of the customer. Maximum character limit: 50. | [optional] |
| **middle_name** | **String** | This field accepts the middle name of the customer. Maximum character limit: 50. | [optional] |
| **nationality** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the customer’s citizenship. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RfiResponseInfo.new(
  additional_info: null,
  address: null,
  bank_account_number: null,
  bank_name: null,
  company_name: null,
  date_of_birth: null,
  first_name: null,
  identification_doc: null,
  last_name: null,
  middle_name: null,
  nationality: null
)
```

