# NiumClient::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bban** | **String** | Basic Bank Account Number (BBAN) Identifier. This data elements is used for payment accounts which have no IBAN, for example: \&quot;BARC12345612345678\&quot;. | [optional] |
| **currency** | **String** | This field contains the [3-letter ISO-4217 currency code](doc:currency-and-country-codes). | [optional] |
| **iban** | **String** | International Bank Account Number (IBAN) of an account, for example: \&quot;FR7612345987650123456789014\&quot;. | [optional] |
| **masked_pan** | **String** | Primary Account Number (PAN) of a card in a masked form. This is used for card account in responses, for example \&quot; 1234\&quot;The maximum length: 35. | [optional] |
| **msisdn** | **String** | An alias to access a payment account via a registered mobile phone number. The maximum length: 35 | [optional] |
| **pan** | **String** | Primary Account Number (PAN) of a card, can be tokenized by the ASPSP due to PCI DSS requirements. This is used for card account in responses. The maximum length: 35. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Account.new(
  bban: null,
  currency: null,
  iban: null,
  masked_pan: null,
  msisdn: null,
  pan: null
)
```

