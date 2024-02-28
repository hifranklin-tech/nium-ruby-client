# NiumClient::Balance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance_amount** | [**BalanceAmount**](BalanceAmount.md) |  | [optional] |
| **balance_type** | **String** |  | [optional] |
| **bban** | **String** | Basic Bank Account Number (BBAN) Identifier. | [optional] |
| **currency** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes). | [optional] |
| **iban** | **String** | International Bank Account Number (IBAN) of an account balance, for example: \&quot;FR7612345987650123456789014\&quot;. | [optional] |
| **masked_pan** | **String** | Primary Account Number (PAN) of a card in a masked form. This is used for card account in responses, for example \&quot; 1234\&quot;. The maximum length: 35 | [optional] |
| **msisdn** | **String** | An alias to access a payment account via a registered mobile phone number. The maximum length: 35 | [optional] |
| **pan** | **String** | Primary Account Number (PAN) of a card, can be tokenized by the ASPSP due to PCI DSS requirements. This is used for card account in responses. The maximum length: 35 | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Balance.new(
  balance_amount: null,
  balance_type: null,
  bban: null,
  currency: null,
  iban: null,
  masked_pan: null,
  msisdn: null,
  pan: null
)
```

