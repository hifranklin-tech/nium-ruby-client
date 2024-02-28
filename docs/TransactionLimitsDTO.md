# NiumClient::TransactionLimitsDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. | [optional] |
| **transaction_limits** | [**Array&lt;TransactionLimitDTO&gt;**](TransactionLimitDTO.md) | This array contains an object for each card limit parameter. This object contains the below data elements. Refer to the example for exact structure. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::TransactionLimitsDTO.new(
  card_hash_id: null,
  transaction_limits: null
)
```

