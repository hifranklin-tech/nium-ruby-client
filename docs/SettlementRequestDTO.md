# NiumClient::SettlementRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization_code** | **String** | This field contains the 6 digit authorization code | [optional] |
| **billing_amount** | **Float** | This field contains the billing amount | [optional] |
| **billing_currency** | **String** | This field contains the 3-letter ISO3 billing currency code | [optional] |
| **card_hash_id** | **String** | This field contains the unique card identifier | [optional] |
| **card_number** | **String** | This field contains the complete 16 digit card number | [optional] |
| **client_hash_id** | **String** | This field contains the unique client identifier | [optional] |
| **client_id** | **Integer** | This field contains the unique client ID | [optional] |
| **customer_hash_id** | **String** | This field contains the unique customer identifier  | [optional] |
| **exchange_rate** | **String** | This field contains the exchange rate from the source currency to the destination currency | [optional] |
| **labels** | [**Labels**](Labels.md) |  | [optional] |
| **logo_id** | **String** | This field accepts the pre-defined logo Id | [optional] |
| **logo_identifier** | **String** | This field accepts the pre-defined logo Identifier | [optional] |
| **mask_card_number** | **String** | This field contains the 16-digit masked card number | [optional] |
| **merchant_category_code** | **String** | This field contains the 4-digit mcc code | [optional] |
| **merchant_country_code** | **String** | This field contains the merchant country code | [optional] |
| **merchant_id** | **String** | This field contains the unique merchant identifier | [optional] |
| **merchant_name_location** | **String** | This field contains the full merchant name and location data | [optional] |
| **original_authorization_code** | **String** | This field contains the authorization code of the original transaction | [optional] |
| **pos_entry_mode** | **String** | This field contains the pos entry code that identifies the actual method used to capture the account number, expiration date, and the PIN | [optional] |
| **settlement_date** | **String** | This field contains the settlement date | [optional] |
| **settlement_id** | **Integer** | This field contains the settlement id | [optional] |
| **sub_bin** | **String** | This field is optional &amp; accepts the sub-bin | [optional] |
| **token_number** | **String** | This field contains the token number | [optional] |
| **token_requester_id** | **String** | This field contains the token requester id | [optional] |
| **transaction_amount** | **Float** | This field contains the transaction amount. | [optional] |
| **transaction_currency** | **String** | This field contains the 3-letter ISO3 transaction currency code. | [optional] |
| **transaction_type** | **String** | This field contains the type of transaction, it can be C or D | [optional] |
| **visa_transaction_id** | **String** | This field contains the Unique ID provided for transaction by VISA | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::SettlementRequestDTO.new(
  authorization_code: NUF5L7,
  billing_amount: 10,
  billing_currency: SGD,
  card_hash_id: 4b500a79-9386-4b50-a1e1-7299f6bfa131,
  card_number: 4611350100002726,
  client_hash_id: dcfe0a79-9bj6-f6bf-78e1-7ab9f89fa1fl,
  client_id: 1234,
  customer_hash_id: d9386a79-7n86-6750-b1c1-0299h4bfa196,
  exchange_rate: 1.32,
  labels: null,
  logo_id: 001,
  logo_identifier: 100,
  mask_card_number: 4573-75xx-xxxx-0149,
  merchant_category_code: 3799,
  merchant_country_code: AUS,
  merchant_id: 23995053,
  merchant_name_location: COCA-COLA AMATIL         BRISBANE AIRPSG,
  original_authorization_code: NUF5L7,
  pos_entry_mode: 1020,
  settlement_date: 20210419,
  settlement_id: 1234,
  sub_bin: NUC01020,
  token_number: 0004611350190078050,
  token_requester_id: 40010030273,
  transaction_amount: 10,
  transaction_currency: SGD,
  transaction_type: C,
  visa_transaction_id: 019164261950302
)
```

