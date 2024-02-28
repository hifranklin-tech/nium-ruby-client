# NiumClient::PaginatedCustomerDetailsResponseV2DTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | [**Array&lt;CustomerDetailResponse&gt;**](CustomerDetailResponse.md) |  | [optional] |
| **total_elements** | **Integer** |  | [optional] |
| **total_pages** | **Integer** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PaginatedCustomerDetailsResponseV2DTO.new(
  content: null,
  total_elements: null,
  total_pages: null
)
```

