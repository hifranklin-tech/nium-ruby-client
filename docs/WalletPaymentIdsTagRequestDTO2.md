# NiumClient::WalletPaymentIdsTagRequestDTO2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | This field accepts the action which determines the type of operation that needs to be performed. The possible values are:  DELETE: When tag needs to be deleted. MAINTAIN: When tags need to be added or updated.  |  |
| **key** | **String** | This field accepts the name of the tag. The maximum key length limit is 128 characters.  |  |
| **value** | **String** | This field accepts the value of the tag. The maximum value length limit is 256 characters. Note: In case the tags.action is MAINTAIN and the value is not present for a tag, system will not allow the request. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::WalletPaymentIdsTagRequestDTO2.new(
  action: null,
  key: null,
  value: null
)
```

