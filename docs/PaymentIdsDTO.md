# NiumClient::PaymentIdsDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** | This field contains the name of the account. | [optional] |
| **account_type** | **String** | This field contains the type of an account. | [optional] |
| **bank_address** | **String** | This field contains the full address of the bank. | [optional] |
| **bank_name** | **String** | This field contains the bank name.The possible values are: | [optional] |
| **bank_name_full** | **String** | This field contains the full name of the bank. | [optional] |
| **currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes). | [optional] |
| **routing_code_type1** | **String** | This field contains the routing code type 1. | [optional] |
| **routing_code_type2** | **String** | This field contains the routing code type 2. | [optional] |
| **routing_code_value1** | **String** | This field contains the routing code type 1 value. | [optional] |
| **routing_code_value2** | **String** | This field contains the routing code type 2 value. | [optional] |
| **unique_payer_id** | **String** | This is a unique email Id provided to the customer in addition to uniquePaymentId for supported regions and configuration, or else it will be null, for example, abc12_ca@nium.com. | [optional] |
| **unique_payment_id** | **String** | This field is the virtual account number per currency provided to customers for supported regions and configuration, for example, IBAN in EU, virtual account number from Moonova in AU, or else, it will be null. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PaymentIdsDTO.new(
  account_name: John,
  account_type: LOCAL,
  bank_address: 108,MG Road,
  bank_name: DBS_SG,
  bank_name_full: DBS,
  currency_code: SGD,
  routing_code_type1: null,
  routing_code_type2: null,
  routing_code_value1: null,
  routing_code_value2: null,
  unique_payer_id: null,
  unique_payment_id: 8850932057194
)
```

