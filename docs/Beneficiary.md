# NiumClient::Beneficiary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | This is an unique beneficiary ID which depends upon the destination currency and payout method. The beneficiary Id and payout ID can be obtained using [Beneficiary List  API](ref:beneficiarylistv2). |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Beneficiary.new(
  id: 5f7ddd6a56b63400178319c5
)
```

