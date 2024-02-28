# NiumClient::PayinApiResponse2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | This field will return the success message if the limit updated successfully. | [optional] |
| **success** | **Boolean** | This flag indicates the success of the request. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PayinApiResponse2.new(
  message: Limits updated successfully,
  success: true
)
```

