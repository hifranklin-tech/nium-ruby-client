# NiumClient::CustomFeeResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | This field contains further details regarding the status of the fee. | [optional] |
| **status** | **String** | This field contains the status such as success if the fee is levied successfully. | [optional] |
| **system_reference_number** | **String** | This field contains the unique system reference number. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomFeeResponseDTO.new(
  message: null,
  status: null,
  system_reference_number: null
)
```

