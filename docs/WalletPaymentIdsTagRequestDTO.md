# NiumClient::WalletPaymentIdsTagRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | This field accepts the name of the tag. The maximum key length limit is 128 characters. |  |
| **value** | **String** | This field accepts the value of the tag. The maximum value length limit is 256 characters. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::WalletPaymentIdsTagRequestDTO.new(
  key: null,
  value: null
)
```

