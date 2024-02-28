# NiumClient::VirtualAccountResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | [**Array&lt;WalletPaymentIdsResponseDTO&gt;**](WalletPaymentIdsResponseDTO.md) |  | [optional] |
| **total_elements** | **Integer** | This field contains the total number of items in response. | [optional] |
| **total_pages** | **Integer** | This field contains the number of pages in response body. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::VirtualAccountResponseDTO.new(
  content: null,
  total_elements: null,
  total_pages: null
)
```

