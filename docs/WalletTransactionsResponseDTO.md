# NiumClient::WalletTransactionsResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | [**Array&lt;TransactionResponseDTO&gt;**](TransactionResponseDTO.md) |  | [optional] |
| **total_elements** | **Integer** |  | [optional] |
| **total_pages** | **Integer** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::WalletTransactionsResponseDTO.new(
  content: null,
  total_elements: null,
  total_pages: null
)
```

