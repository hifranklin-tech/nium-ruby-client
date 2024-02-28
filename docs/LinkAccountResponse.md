# NiumClient::LinkAccountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | This field accepts the [2-letter ISO-2 country code](doc:currency-and-country-codes) where the bank account resides. | [optional] |
| **created_at** | **Time** | This field contains the timestamp when the funding instrument was added. | [optional] |
| **currency** | **String** | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the account to be linked. | [optional] |
| **funding_channel** | **String** | The field shows the mode of funding the wallet. Only direct debit is supported when adding a new funding instrument. | [optional] |
| **funding_instrument_id** | **String** | The unique 36-character alphanumeric identifier of a funding instrument. The ID is a bank account identifier when the funding channel is direct debit. | [optional] |
| **return_url** | **String** | This field contains the URL where the customer is redirected. | [optional] |
| **status** | **String** | This field contains the status of the request. The possible values are:   PENDING   FAILED | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::LinkAccountResponse.new(
  country: US,
  created_at: null,
  currency: USD,
  funding_channel: null,
  funding_instrument_id: null,
  return_url: null,
  status: null
)
```

