# NiumClient::FetchConversionError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The detailed error code associated with HTTP status 400. * &#x60;fx_constraint_violated_input&#x60;: The input violates the model constraints.  |  |
| **description** | **String** |  |  |
| **field** | **Object** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::FetchConversionError.new(
  code: null,
  description: null,
  field: null
)
```

