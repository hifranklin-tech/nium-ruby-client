# NiumClient::CustomFeeRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | [**Array&lt;ClientCustomTagDTO&gt;**](ClientCustomTagDTO.md) | This is an array which accepts Client&#39;s custom tags &amp; values. Maximum 15 key-value pairs can be sent in tags. | [optional] |
| **amount** | **Float** | This field accepts the amount to be debited from the Customer&#39;s wallet. |  |
| **comments** | **String** | This field accepts any comments for the custom fee to be levied. The maximum character limit is 255. | [optional] |
| **currency** | **String** | This field accepts the 3-letter ISO-4217 currency code for the currency of the fee to be charged (supported for any currencies enabled in the Customer&#39;s wallet) |  |
| **fee_name** | **String** | This field accepts the name of the fee. Number of characters supported: 3 to 50. Note: This field only accepts alphanumeric characters with -_.(hyphen, underscore, dot, and space) |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomFeeRequestDTO.new(
  tags: null,
  amount: 50,
  comments: Custom fee comments,
  currency: SGD,
  fee_name: monthlyCharge_May-2022
)
```

