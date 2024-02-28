# NiumClient::P2PTransferDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | The amount to be transferred. |  |
| **authentication_code** | **String** | This field accepts the authentication code generated as part of SCA (Strong Customer Authentication). Note: Authentication code is expected if regulatory region is UK or EU. | [optional] |
| **country_ip** | **String** |  | [optional] |
| **currency_code** | **String** | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the amount. |  |
| **customer_comments** | **String** | This field accepts customer comments for the P2P transfer. Maximum character limit is 512 | [optional] |
| **destination_wallet_hash_id** | **String** | The wallet hash Id under the same client which will receive the funds. |  |
| **device_info** | **String** |  | [optional] |
| **exemption_code** | **String** | This field accepts the reason code for the exemption provided as part of SCA (Strong Customer Authentication), which can be one of the following values: 01 - Trusted Beneficiary 02 - Low Value Transaction 03 - Recurring Transactions 04 - Payment to Self  Note: Exemption code is expected if regulatory region is UK or EU | [optional] |
| **ip_address** | **String** |  | [optional] |
| **session_id** | **String** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::P2PTransferDTO.new(
  amount: 50,
  authentication_code: authCode,
  country_ip: null,
  currency_code: SGD,
  customer_comments: Paid for lunch,
  destination_wallet_hash_id: c69f684f-a306-4c4a-8daa-1e91ce7c85f8,
  device_info: null,
  exemption_code: 01,
  ip_address: null,
  session_id: null
)
```

