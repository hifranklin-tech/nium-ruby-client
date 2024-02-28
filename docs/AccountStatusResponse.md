# NiumClient::AccountStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_name** | **String** | This field contains the name of the bank which has issued the account linked to this funding instrument. | [optional] |
| **client_hash_id** | **String** | This field contains the unique 36-character client identifier generated and shared before API handshake. | [optional] |
| **country** | **String** | This field contains the [2-letter ISO-2 country code](doc:currency-and-country-codes) where the bank account resides. | [optional] |
| **created_at** | **Time** | This field contains the timestamp when the funding instrument was added. | [optional] |
| **currency** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the account to be linked. | [optional] |
| **customer_hash_id** | **String** | This field contains the unique 36-character customer identifier generated and shared before API handshake. | [optional] |
| **funding_channel** | **String** | The field shows the mode of funding the wallet. | [optional] |
| **funding_instrument_id** | **String** | This field contains the unique 36-character funding instrument identifier. | [optional] |
| **masked_account_number** | **String** | This field contains the masked bank account number in the format XXXXXXXXXXXX1111. | [optional] |
| **redirect_url** | **String** | This field contains the URL where the customer is redirected. | [optional] |
| **routing_type** | **String** | This field contains the routing code type, for example, &#39;ACH CODE&#39; for US. | [optional] |
| **routing_value** | **String** | This field contains the routing code value. | [optional] |
| **saved** | **Boolean** | This flag returns true when the funding instrument is saved. This can return false when funding instrument status is not yet approved. | [optional] |
| **status** | **String** | This field contains the current status of the funding instrument. | [optional] |
| **status_description** | **String** | This field contains the additional information of the status response. | [optional] |
| **updated_at** | **Time** | This field contains the timestamp when the funding instrument was last updated. | [optional] |
| **wallet_hash_id** | **String** | This field contains the unique 36-character wallet identifier generated and shared before API handshake. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AccountStatusResponse.new(
  bank_name: null,
  client_hash_id: null,
  country: null,
  created_at: null,
  currency: USD,
  customer_hash_id: null,
  funding_channel: DIRECT_DEBIT,
  funding_instrument_id: null,
  masked_account_number: null,
  redirect_url: null,
  routing_type: null,
  routing_value: 011401533,
  saved: null,
  status: null,
  status_description: null,
  updated_at: null,
  wallet_hash_id: null
)
```

