# NiumClient::UploadRfiDetailsResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **compliance_id** | **String** | This field contains the unique compliance ID for the customer. | [optional] |
| **rfi_id** | **String** | This field contains the unique RFI ID. This is for future use. Currently, the value shall be null. | [optional] |
| **status** | **String** | This field contains the status and following are the valid values for compliance status: • IN_PROGRESS • ACTION_REQUIRED • RFI_REQUESTED • RFI_RESPONDED • COMPLETED • REJECT • ERROR In case of successful response to RFI, expected status is RFI_RESPONDED. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::UploadRfiDetailsResponseDto.new(
  compliance_id: null,
  rfi_id: null,
  status: null
)
```

