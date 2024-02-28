# NiumClient::InvoiceDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | date of the trade | [optional] |
| **description** | **String** | string without special characters | [optional] |
| **items** | [**Array&lt;ItemDetails&gt;**](ItemDetails.md) | contains quantity and price information | [optional] |
| **name** | **String** | string without special characters | [optional] |
| **number** | **String** | alphanumeric value containing invoice number | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::InvoiceDetails.new(
  date: 2022-09-21,
  description: Card payment,
  items: Trade Details,
  name: Jack Stan,
  number: 45667090
)
```

