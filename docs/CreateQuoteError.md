# NiumClient::CreateQuoteError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The detailed error code associated with HTTP status 400.  * &#x60;fx_constraint_violated_input&#x60;: The input violates the model constraints. * &#x60;fx_invalid_format_input&#x60;: The input format is invalid. * &#x60;fx_invalid_currency_code&#x60;: The input currency code is invalid.  |  |
| **description** | **String** |  |  |
| **field** | **Object** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CreateQuoteError.new(
  code: null,
  description: null,
  field: null
)
```

