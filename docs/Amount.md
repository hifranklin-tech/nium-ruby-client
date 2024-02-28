# NiumClient::Amount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | This field contains the amount of the transaction | [optional] |
| **currency** | **String** | This field contains the [3-letterISO-4217 currency code](doc:currency-and-country-codes) of the transaction | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Amount.new(
  amount: null,
  currency: null
)
```

