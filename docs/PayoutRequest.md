# NiumClient::PayoutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** | This field accepts an account number as a payout detail. | [optional] |
| **account_type** | **String** | This field accepts the type of account. This field is conditional in case of WALLET payout. | [optional] |
| **bank_code** | **String** | This field accepts the bank code of the payout. | [optional] |
| **bank_name** | **String** | This field contains the beneficiary bank name. | [optional] |
| **country_code** | **String** | This field accepts the [ISO-2 country code](doc:currency-and-country-codes) for the payout bank. | [optional] |
| **destination_currency** | **String** | This field accepts the 3-letter [ISO-4217 destination currency code](doc:currency-and-country-codes) of the payout as per the destination country from supported corridors. |  |
| **identification_type** | **String** | This field accepts the type of identification document name for a beneficiary. | [optional] |
| **identification_value** | **String** | This field accepts an identification document number for the beneficiary. | [optional] |
| **payout_method** | **String** | This field accepts the payout method for the remittance payout. |  |
| **proxy_type** | **String** | This field indicates the proxy type sent in the payment request.  For SGD-PayNow: The proxy type can be MOBILE, UEN, NRIC, or VPA.  For INR-UPI: The proxy type should be VPA. For BRL-PIX: The proxy type can be MOBILE, ID, EMAIL, or RANDOM_KEY For AUD-PayID: The proxy type can be MOBILE, EMAIL, ABN, or ORGANISATION_ID(only domestic payouts are allowed) For MYR-DuitNow: The proxy type can be NRIC, PASSPORT, CORPORATE_REGISTRATION_NUMBER, MOBILE, or ARMY_ID. Note: This field is mandatory when the payout_method type is PROXY | [optional] |
| **proxy_value** | **String** | This field indicates the proxy value such as VPA, UEN, or mobile number etc. Note: This field is mandatory when the payout_method type is PROXY The mobile number should include country code. | [optional] |
| **routing_code_type_1** | **String** | This field accepts the routing code type 1, for example, SWIFT for all countries, IFSC for India, SORT CODE for UK, ACH CODE for USA, BRANCH CODE for Brazil and Bangladesh, BSB CODE for Australia, BANK CODE for HongKong. | [optional] |
| **routing_code_type_2** | **String** | This field accepts the routing code type 2, for example, SWIFT for all countries, IFSC for India, SORT CODE for UK, ACH CODE for USA, BRANCH CODE for Brazil and Bangladesh, BSB CODE for Australia, BANK CODE for HongKong. | [optional] |
| **routing_code_value_1** | **String** | This field accepts the routing code value 1, for example, ADCBINBB or ADCBINBB123 for SWIFT, SBIN0000058 for IFSC, 100000 for SORT CODE, 111000025 for ACH CODE, 012515 for BSB CODE, 151 for BANK CODE. | [optional] |
| **routing_code_value_2** | **String** | This field accepts the routing code value 2, for example, ADCBINBB or ADCBINBB123 for SWIFT, SBIN0000058 for IFSC, 100000 for SORT CODE, 111000025 for ACH CODE, 012515 for BSB CODE, 151 for BANK CODE. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PayoutRequest.new(
  account_number: null,
  account_type: null,
  bank_code: null,
  bank_name: null,
  country_code: null,
  destination_currency: null,
  identification_type: null,
  identification_value: null,
  payout_method: null,
  proxy_type: null,
  proxy_value: null,
  routing_code_type_1: null,
  routing_code_type_2: null,
  routing_code_value_1: null,
  routing_code_value_2: null
)
```

