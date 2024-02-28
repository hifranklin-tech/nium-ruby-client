# NiumClient::FundTransferRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | [**Array&lt;ClientCustomTagDTO&gt;**](ClientCustomTagDTO.md) |  | [optional] |
| **authentication_code** | **String** | This field accepts the authentication code generated as part of SCA (Strong Customer Authentication). Note: Authentication code is expected if regulatory region is UK or EU. | [optional] |
| **customer_comments** | **String** | This field accepts customer comments for the wallet to wallet transfer. | [optional] |
| **destination_amount** | **Float** | The amount to be transferred. |  |
| **destination_currency_code** | **String** | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the amount. |  |
| **destination_wallet_hash_id** | **String** | The walletHashId of Nium’s customer who is the recepient of the funds. |  |
| **device_details** | [**DeviceDetailsDTO**](DeviceDetailsDTO.md) |  | [optional] |
| **exemption_code** | **String** | This field accepts the reason code for the exemption provided as part of SCA (Strong Customer Authentication). Allowed values: 01 - Trusted Beneficiary 02 - Low Value Transaction 03 - Recurring Transactions 04 - Payment to Self  Note: Exemption code is required if regulatory region is UK or EU | [optional] |
| **purpose_code** | **String** | This field accepts the purpose code for the payment. Refer to the [Glossary of Purpose Codes](doc:purpose-of-transfer-codes) to identify the correct value to be provided. |  |
| **source_amount** | **Float** | The amount to be transferred. |  |
| **source_currency_code** | **String** | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the amount. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::FundTransferRequestDTO.new(
  tags: null,
  authentication_code: authCode,
  customer_comments: Paid for lunch,
  destination_amount: 50,
  destination_currency_code: SGD,
  destination_wallet_hash_id: c69f684f-a306-4c4a-8daa-1e91ce7c85f8,
  device_details: null,
  exemption_code: 01,
  purpose_code: IR01802,
  source_amount: 50,
  source_currency_code: SGD
)
```

