# NiumClient::WalletFundingInstrumentsResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_name** | **String** | This field contains the name of the bank which has issued the account linked to this funding instrument. | [optional] |
| **card_bank_name** | **String** | This field contains the name of the bank which has issued the funding instrument. | [optional] |
| **card_network** | **String** | This field contains the card network details. We currently support Visa and MasterCard. It can contain one of the following - visa OR mastercard. | [optional] |
| **card_type** | **String** | This field contains the type of funding card. It can contain one of the following - credit OR debit. | [optional] |
| **client_hash_id** | **String** | This field contains the unique 36-character client identifier generated and shared before API handshake. | [optional] |
| **country** | **String** | This field contains the Country. | [optional] |
| **created_at** | **Time** | This field contains the timestamp of adding funding instrument in YYYY-MM-DD hh:mm:ss format. | [optional] |
| **currency** | **String** | This field contains the currency. | [optional] |
| **customer_hash_id** | **String** | This field contains the unique 36-character customer identifier generated and shared before API handshake. | [optional] |
| **funding_channel** | **String** | This field contains the funding channel of the funding instrument. | [optional] |
| **funding_instrument_id** | **String** | This field contains the unique 36-character funding instrument identifier. | [optional] |
| **mask_card_number** | **String** | This field contains the 16-digit masked card number in format 1234-56xx-xxxx-3456. | [optional] |
| **masked_account_number** | **String** | This field contains the masked account number in the format where only last 4 digits are visible. | [optional] |
| **routing_type** | **String** | This field contains the routing type. | [optional] |
| **routing_value** | **String** | This field contains the routing value. | [optional] |
| **saved** | **Boolean** | This flag indicates whether the funding instrument is saved or not. | [optional] |
| **status** | **String** | This field contains the status of the funding instrument. | [optional] |
| **three_d_secure_usage** | **Boolean** | This flag indicates whether 3DS verification is supported on the card. | [optional] |
| **updated_at** | **Time** | This field contains the timestamp of last update to the funding instrument in YYYY-MM-DD hh:mm:ss format | [optional] |
| **wallet_hash_id** | **String** | This field contains the unique 36-character wallet identifier generated and shared before API handshake. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::WalletFundingInstrumentsResponseDTO.new(
  bank_name: null,
  card_bank_name: THE CHASE MANHATTAN BANK,
  card_network: visa,
  card_type: credit,
  client_hash_id: c9364508-bd8e-4f6c-a481-8b0cd9a0a7b3,
  country: US,
  created_at: null,
  currency: USD,
  customer_hash_id: 39396524-6f07-4abf-a957-9cc4f7f927cd,
  funding_channel: DIRECT_DEBIT,
  funding_instrument_id: e5bc0d30-6455-4942-b65e-3a195fc5fbd8,
  mask_card_number: 4000-00xx-xxxx-0446,
  masked_account_number: XXXXXXXXXXXX1111,
  routing_type: ACH CODE,
  routing_value: 011401533,
  saved: true,
  status: APPROVED,
  three_d_secure_usage: true,
  updated_at: null,
  wallet_hash_id: f898c437-21b6-4050-8457-c70cc035644c
)
```

