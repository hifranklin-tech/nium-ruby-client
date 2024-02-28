# NiumClient::TransactionsBusinessDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_transaction** | **Boolean** | This flag is used to mark or unmark a transaction as a business transaction. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::TransactionsBusinessDTO.new(
  business_transaction: true
)
```

