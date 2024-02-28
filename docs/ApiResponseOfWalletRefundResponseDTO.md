# NiumClient::ApiResponseOfWalletRefundResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**WalletRefundResponseDTO**](WalletRefundResponseDTO.md) |  | [optional] |
| **code** | **String** | This field will return the HTTP status code with its interpretation. | [optional] |
| **message** | **String** | This field will return the response message. | [optional] |
| **status** | **String** | This field signifies if the request was successful or has an error. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ApiResponseOfWalletRefundResponseDTO.new(
  body: null,
  code: 200 OK,
  message: Success,
  status: OK
)
```

