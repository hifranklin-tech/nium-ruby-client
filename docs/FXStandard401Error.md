# NiumClient::FXStandard401Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional][default to &#39;unauthorized&#39;] |
| **description** | **String** |  | [optional][default to &#39;Access Denied&#39;] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::FXStandard401Error.new(
  code: null,
  description: null
)
```

