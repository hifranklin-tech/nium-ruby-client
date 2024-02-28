# NiumClient::BankTransfer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** | This field contains the name of NIUM bank account. | [optional] |
| **account_number** | **String** | This field contains the physical bank account number of NIUM. | [optional] |
| **bank_name** | **String** | This field contains the bank name to which money has to be transferred. | [optional] |
| **iban** | **String** | This field contains the IBAN that is International Bank Account Number. It is a combination of country code, check digits, bank code, sort code and account number. | [optional] |
| **sort_code** | **String** | UEN number associated with NIUM PayNow account. | [optional] |
| **type** | **String** | This field contains the type of payment method such as staticPayNow, dynamicPayNow or bankTransfer |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BankTransfer.new(
  account_name: null,
  account_number: null,
  bank_name: null,
  iban: null,
  sort_code: null,
  type: null
)
```

