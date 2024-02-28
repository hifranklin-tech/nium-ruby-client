# NiumClient::AccountReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bban** | **String** | This field contains the Basic Bank Account Number (BBAN) Identifier. This data elements is used for payment accounts which have no IBAN, for example, \&quot;BARC12345612345678\&quot; | [optional] |
| **currency** | **String** | This field contains the debtor’s 3-letter [ISO-4217 currency code](doc:currency-and-country-codes). | [optional] |
| **iban** | **String** | This field contains the International Bank Account Number (IBAN) for the debtor’s account, for example, \&quot;FR7612345987650123456789014\&quot;. | [optional] |
| **masked_pan** | **String** | This field contains the masked Primary Account Number (PAN) of the debtor’s card. Masked data is represented by *. | [optional] |
| **msisdn** | **String** | This field contains an alias to access a payment account via a registered mobile phone number. | [optional] |
| **pan** | **String** | This field contains the Primary Account Number (PAN) of the debtor’s card, can be tokenized by the ASPSP due to PCI DSS requirements. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AccountReference.new(
  bban: null,
  currency: null,
  iban: null,
  masked_pan: null,
  msisdn: null,
  pan: null
)
```

