# NiumClient::PrefundRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | This field accepts the amount transferred to account |  |
| **bank_reference_number** | **String** | This field accepts the reference number provided by the bank during fund transfer | [optional] |
| **bene_account_number** | **String** | This field accepts the virtual account number | [optional] |
| **client_account_number** | **String** | This field accepts the client&#39;s bank account number for reference from which the client has transferred money. | [optional] |
| **comments** | **String** | This field accepts the comments which need to be passed, if any. | [optional] |
| **currency_code** | **String** | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes). |  |
| **date_of_transfer** | **String** | This field accepts the date of the client&#39;s prefund transfer to the NIUM bank account. This request can be raised for a transfer within 30 days. | [optional] |
| **nium_account_number** | **String** | This field accepts the NIUM account number to which the client has transferred the money. | [optional] |
| **requester_id** | **String** | This field accepts the client&#39;s unique requester ID. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PrefundRequestDTO.new(
  amount: 1000,
  bank_reference_number: 712347512376,
  bene_account_number: 800207849,
  client_account_number: 615234671328,
  comments: Client Prefund,
  currency_code: SGD,
  date_of_transfer: 2019-11-24,
  nium_account_number: 133876812367,
  requester_id: 8123768123
)
```

