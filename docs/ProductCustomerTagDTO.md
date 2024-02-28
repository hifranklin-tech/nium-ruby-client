# NiumClient::ProductCustomerTagDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | This object contains the user defined key-value pairs provided by the client. The maximum number of tags allowed is 15.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **value** | **String** | This field accepts the value of the tag. The maximum value length limit is 256 characters.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ProductCustomerTagDTO.new(
  key: null,
  value: null
)
```

