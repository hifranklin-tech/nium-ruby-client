# NiumClient::ActivateCardResponseV2DTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | This field contains the status of the activation request. | [optional] |
| **message** | **String** | This field contains the status description of the activation request. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ActivateCardResponseV2DTO.new(
  status: Active,
  message: Card Activated successfully
)
```

