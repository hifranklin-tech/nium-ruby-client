# NiumClient::WalletPaymentIdsResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | This is a map object containing user defined key-value pairs provided by the client for the wallet payment IDs. | [optional] |
| **account_category** | **String** |  | [optional] |
| **account_name** | **String** | This field contains the account name of the virtual account. | [optional] |
| **account_type** | **String** | This field contains the account type of the virtual account. | [optional] |
| **bank_address** | **String** | This field contains the bank address of the virtual account. | [optional] |
| **bank_name** | **String** | This field represents the bank name of the virtual account and the possible values are: * BOL_LT * MONOOVA_AU * DBS_HK * DBS_SG * JPM_AU * JPM_SG * CB_GB * CFSB_USINTL * JPM_UK | [optional] |
| **currency_code** | **String** | This field contains the 2-letter [ISO-2 country code](doc:currency-and-country-codes). | [optional] |
| **full_bank_name** | **String** | This field contains the complete name of the bank for the virtual account. | [optional] |
| **routing_code_type1** | **String** | This field contains the routing code type 1. | [optional] |
| **routing_code_type2** | **String** | This field contains the routing code type 2. | [optional] |
| **routing_code_value1** | **String** | This field contains the routing code value 1. Refer to the [Examples of Routing Codes](/apis/docs/routing-codes#examples-of-routing-codes). | [optional] |
| **routing_code_value2** | **String** | This field contains the routing code value 2. | [optional] |
| **status** | **String** |  | [optional] |
| **unique_payer_id** | **String** | This field contains the unique payer ID. | [optional] |
| **unique_payment_id** | **String** | This field contains the unique payment ID. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::WalletPaymentIdsResponseDTO.new(
  tags: null,
  account_category: null,
  account_name: null,
  account_type: null,
  bank_address: null,
  bank_name: null,
  currency_code: null,
  full_bank_name: null,
  routing_code_type1: null,
  routing_code_type2: null,
  routing_code_value1: null,
  routing_code_value2: null,
  status: null,
  unique_payer_id: null,
  unique_payment_id: null
)
```

