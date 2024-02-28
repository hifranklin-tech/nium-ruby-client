# NiumClient::WalletRfiResponseRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rfi_hash_id** | **String** | This field accepts the unique RFI hash ID. |  |
| **rfi_response_info** | [**RfiResponseInfo**](RfiResponseInfo.md) |  |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::WalletRfiResponseRequest.new(
  rfi_hash_id: null,
  rfi_response_info: null
)
```

