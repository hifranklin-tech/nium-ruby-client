# NiumClient::ClientTransactionsResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | [**Array&lt;TransactionResponseDTO&gt;**](TransactionResponseDTO.md) | This field contains an array that holds additional data. | [optional] |
| **total_elements** | **Integer** | This field contains the number of elements in the response body. | [optional] |
| **total_pages** | **Integer** | This field contains the number of pages in response body. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ClientTransactionsResponseDTO.new(
  content: null,
  total_elements: null,
  total_pages: null
)
```

