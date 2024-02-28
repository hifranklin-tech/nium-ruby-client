# NiumClient::CreateConversionError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The detailed error code associated with HTTP status 400. * &#x60;fx_constraint_violated_input&#x60;: The input violates the model constraints. * &#x60;fx_invalid_format_input&#x60;: The input format is invalid. * &#x60;fx_invalid_currency_code&#x60;: The input currency code is invalid. * &#x60;fx_quote_expired&#x60;: The provided quote is expired. * &#x60;fx_insufficient_funds&#x60;: The balance in the account is insufficient to complete/schedule the transfer.  |  |
| **description** | **String** |  |  |
| **field** | **Object** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CreateConversionError.new(
  code: null,
  description: null,
  field: null
)
```

