# NiumClient::CustomerCardWidgetTokenRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_type** | **String** |  |  |
| **client_domain** | **String** | This field contains the domain name where the widget needs to be embedded | [optional] |
| **css_attributes** | [**CSSAttributeDTO**](CSSAttributeDTO.md) |  | [optional] |
| **destination_country** | **String** | This field contains the 2-letter [ISO-2 country code](https://nium-documents.s3-eu-west-1.amazonaws.com/spend-documents/Country+Code.pdf) of the destination country. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomerCardWidgetTokenRequestDTO.new(
  card_type: null,
  client_domain: null,
  css_attributes: null,
  destination_country: null
)
```

