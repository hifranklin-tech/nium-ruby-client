# NiumClient::TransactionsLocationDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_latitude** | **String** | This field accepts the merchant location latitude. |  |
| **merchant_longitude** | **String** | This field accepts the merchant location longitude. |  |
| **merchant_tagged_name** | **String** | This field accepts the merchant tagged name. |  |
| **merchant_zoom_index** | **String** | This field accepts the merchant map zoom index. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::TransactionsLocationDTO.new(
  merchant_latitude: 28.532094,
  merchant_longitude: 77.01632,
  merchant_tagged_name: STARBUCKS,
  merchant_zoom_index: 4
)
```

