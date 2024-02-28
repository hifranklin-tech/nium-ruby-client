# NiumClient::CvvResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cvv** | **String** | This field contains the 3-digit Base64 encoded CVV for the card. | [optional] |
| **expiry** | **String** | This field contains the Base64 encoded expiry date of the card in YYMM format. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CvvResponseDTO.new(
  cvv: MzIx,
  expiry: MjYwNg&#x3D;&#x3D;
)
```

