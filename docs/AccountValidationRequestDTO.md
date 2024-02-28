# NiumClient::AccountValidationRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** | This field accepts an account number which is to be verified. | [optional] |
| **bank_account_type** | **String** | This field accepts the type of account. |  |
| **bank_code** | **String** | This field accepts the bank code of a beneficiary, for example, bank code for Pakistan will be BHK. Note: This field is mandatory when the destination country is Pakistan (PK). | [optional] |
| **beneficiary** | [**BeneficiaryAccountDetailsDTO**](BeneficiaryAccountDetailsDTO.md) |  | [optional] |
| **destination_country** | **String** | This field accepts the 2-letter [ISO-2 country code](https://docs.nium.com/apis/docs/currency-and-country-codes) of the destination country. | [optional] |
| **destination_currency** | **String** | This field accepts the 3-letter ISO-3 currency code of the bank account. |  |
| **payout_method** | **String** | This field can accept the different modes of payout. |  |
| **proxy_type** | **String** | This field indicates the proxy type sent in the payment request.  For SGD-PayNow: The proxy type can be MOBILE, UEN , or NRIC For INR-UPI: The proxy type should be VPA  For MYR-DuitNow: The proxy type can be NRIC, PASSPORT, CORPORATE_REGISTRATION_NUMBER, MOBILE, or ARMY_ID Note : This field is mandatory when the payoutMethod type is PROXY. | [optional] |
| **proxy_value** | **String** | This field indicates the proxy value such as VPA, UEN, or mobile number etc. Note: This field is mandatory when the payoutMethod type is PROXY The mobile number should include country code. | [optional] |
| **routing_info** | [**Array&lt;BankRoutingInfo&gt;**](BankRoutingInfo.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AccountValidationRequestDTO.new(
  account_number: null,
  bank_account_type: null,
  bank_code: null,
  beneficiary: null,
  destination_country: null,
  destination_currency: null,
  payout_method: null,
  proxy_type: null,
  proxy_value: null,
  routing_info: null
)
```

