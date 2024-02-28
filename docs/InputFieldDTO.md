# NiumClient::InputFieldDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_border_color** | **String** | This field accepts the client card widget style for text filed active border color. | [optional] |
| **error_border_color** | **String** | This field accepts the client card widget style for text filed error border color. | [optional] |
| **error_message_color** | **String** | This field accepts the client car d widget style for text filed error label color. | [optional] |
| **label_color** | **String** | This field accepts the client card widget style for text filed label color. | [optional] |
| **label_font_size** | **String** | This field accepts the client card widget style for text filed label size. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::InputFieldDTO.new(
  active_border_color: null,
  error_border_color: null,
  error_message_color: null,
  label_color: null,
  label_font_size: null
)
```

