# NiumClient::Transaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bban** | **String** | Basic Bank Account Number (BBAN) Identifier. | [optional] |
| **booking_date** | **Time** |  | [optional] |
| **card_acceptor_address** | [**CardAcceptorAddress**](CardAcceptorAddress.md) |  | [optional] |
| **card_acceptor_id** | **String** |  | [optional] |
| **card_transaction_id** | **String** |  | [optional] |
| **currency** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes). | [optional] |
| **iban** | **String** | International Bank Account Number (IBAN) of an account, for example: \&quot;FR7612345987650123456789014. | [optional] |
| **masked_pan** | **String** |  | [optional] |
| **masked_pan** | **String** | Primary Account Number (PAN) of a card in a masked form. This is used for card account in responses, for example \&quot;1234\&quot;. The maximum length: 35 | [optional] |
| **msisdn** | **String** | An alias to access a payment account via a registered mobile phone number. The maximum length: 35 | [optional] |
| **original_amount** | [**TransactionAmount**](TransactionAmount.md) |  | [optional] |
| **pan** | **String** | Primary Account Number (PAN) of a card, can be tokenized by the ASPSP due to PCI DSS requirements. This is used for card account in responses. The maximum length: 35 | [optional] |
| **transaction_amount** | [**TransactionAmount**](TransactionAmount.md) |  | [optional] |
| **transaction_date** | **Time** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Transaction.new(
  bban: null,
  booking_date: null,
  card_acceptor_address: null,
  card_acceptor_id: null,
  card_transaction_id: null,
  currency: null,
  iban: null,
  masked_pan: null,
  masked_pan: null,
  msisdn: null,
  original_amount: null,
  pan: null,
  transaction_amount: null,
  transaction_date: null
)
```

