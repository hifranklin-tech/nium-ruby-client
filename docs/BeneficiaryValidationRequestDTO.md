# NiumClient::BeneficiaryValidationRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **beneficiary_account_number** | **String** | This field accepts the beneficiary account number. | [optional] |
| **beneficiary_account_type** | **String** | This field accepts the bank account type of the beneficiary. The account type can be either Individual or Corporate. | [optional] |
| **beneficiary_bank_code** | **String** | This field accepts the bank code of a beneficiary, for example, bank code for Pakistan will be BHK. Note: This field is mandatory when the destination country is Pakistan (PK). | [optional] |
| **beneficiary_contact_number** | **String** | This field accepts the mobile number of the beneficiary--digits only--without the country code. | [optional] |
| **beneficiary_country_code** | **String** | This field accepts the 2-letter [ISO-2 country code](doc:currency-and-country-codes) of the beneficiary/bank. | [optional] |
| **beneficiary_name** | **String** | This field accepts the name of a beneficiary. | [optional] |
| **destination_country** | **String** | This field accepts the 2-letter [ISO-2 country code](doc:currency-and-country-codes) of the destination country. |  |
| **destination_currency** | **String** |  | [optional] |
| **payout_method** | **String** | This field can accept the different modes of payout. This field can accept one of the following values: LOCAL PROXY  |  |
| **proxy_type** | **String** | This field indicates the proxy type sent in the payment request.  For SGD-PayNow: The proxy type can be MOBILE, UEN , or NRIC For INR-UPI: The proxy type should be VPA  For MYR-DuitNow: The proxy type can be NRIC, PASSPORT, CORPORATE_REGISTRATION_NUMBER, MOBILE, or ARMY_ID Note : This field is mandatory when the payoutMethod type is PROXY. | [optional] |
| **proxy_value** | **String** | This field indicates the proxy value such as VPA, UEN, or mobile number etc. Note: This field is mandatory when the payoutMethod type is PROXY The mobile number should include country code. | [optional] |
| **routing_code_type1** | **String** | This field accepts the routing code type 1, for example, SWIFT for all countries, IFSC for India, SORT CODE for UK, ACH CODE for USA, BRANCH CODE for Brazil and Bangladesh, BSB CODE for Australia, BANK CODE for HongKong. This field is Required if the payoutMethod is LOCAL. | [optional] |
| **routing_code_value1** | **String** | This field accepts the routing code value 1, for example, ADCBINBB or ADCBINBB123 for SWIFT, SBIN0000058 for IFSC, 100000 for SORT CODE, 111000025 for ACH CODE, 012515 for BSB CODE, 151 for BANK CODE. This field is Required if the payoutMethod is LOCAL. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BeneficiaryValidationRequestDTO.new(
  beneficiary_account_number: null,
  beneficiary_account_type: null,
  beneficiary_bank_code: null,
  beneficiary_contact_number: null,
  beneficiary_country_code: null,
  beneficiary_name: null,
  destination_country: null,
  destination_currency: null,
  payout_method: null,
  proxy_type: null,
  proxy_value: null,
  routing_code_type1: null,
  routing_code_value1: null
)
```

