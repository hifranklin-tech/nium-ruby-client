# NiumClient::ConversionCancelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cancellation_comment** | **String** | Free text comment for clients to record and track cancellation of the conversion. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ConversionCancelRequest.new(
  cancellation_comment: Cancelling due to change of plans.
)
```

