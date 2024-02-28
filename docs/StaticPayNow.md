# NiumClient::StaticPayNow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **qr_code** | **String** | This field contains the codec-base64 encoded QRCode image data. This will provide the QRCode image on decoding. This image can be read by devices such as smartphone or camera. | [optional] |
| **type** | **String** | This field contains the type of payment method such as staticPayNow, dynamicPayNow or bankTransfer |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::StaticPayNow.new(
  qr_code: null,
  type: null
)
```

