# NiumClient::WalletRefundRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** | This field is needed in case of BANK_TRANSFER to specify the account holder name. | [optional] |
| **account_number** | **String** | This field is needed in case of BANK_TRANSFER to specify the account number of the receiver. | [optional] |
| **amount** | **Float** | An amount to be transferred. |  |
| **bank_code** | **String** | This field is needed in case of BANK_TRANSFER to specify the bank code for the receiver. | [optional] |
| **bank_name** | **String** | This field is needed in case of BANK_TRANSFER to specify the bank name for the receiver. | [optional] |
| **comments** | **String** | This field is for an instruction or a message to support personnel. | [optional] |
| **currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the amount |  |
| **pocket_name** | **String** | This is the name of the pocket defined under base currency. | [optional] |
| **refund_mode** | **String** | The mode of refund. CASH is the only allowed mode of refund for this request. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::WalletRefundRequestDTO.new(
  account_name: null,
  account_number: null,
  amount: 10,
  bank_code: null,
  bank_name: null,
  comments: An instruction/message to support personnel,
  currency_code: SGD,
  pocket_name: MEAL,
  refund_mode: CASH
)
```

