# NiumClient::TransactionsReceiptDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document** | **String** | This field contains the receipt as uploaded in Base64 encoded format. |  |
| **receipt_file_name** | **String** | This field contains the name of the file as uploaded. |  |
| **receipt_type** | **String** | This field contains the file type of the uploaded receipt. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::TransactionsReceiptDTO.new(
  document: iVBORw0KGgoAAAANSUhEU...&lt;Base64 Encoded Image or Document&gt;,
  receipt_file_name: receipt_1.png,
  receipt_type: image/png
)
```

