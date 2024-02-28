# NiumClient::CustomerLinkAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** | This field accepts the customer account number or IBAN. | [optional] |
| **country** | **String** | This field accepts the [2-letter ISO-2 country code](doc:currency-and-country-codes) where the bank account resides. |  |
| **currency** | **String** | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the linked account. |  |
| **funding_channel** | **String** | This field indicates the mode of funding a wallet. Adding a new funding instrument is only supported for direct debit. |  |
| **routing_codes** | [**Array&lt;RoutingInfo&gt;**](RoutingInfo.md) | This field accepts the List of routing code type and value. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomerLinkAccountRequest.new(
  account_number: 55779911,
  country: US,
  currency: USD,
  funding_channel: DIRECT_DEBIT,
  routing_codes: null
)
```

