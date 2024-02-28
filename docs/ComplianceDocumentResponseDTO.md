# NiumClient::ComplianceDocumentResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | This field contains the status and following are the valid values for compliance status: • IN_PROGRESS • ACTION_REQUIRED • RFI_REQUESTED • RFI_RESPONDED • COMPLETED • REJECT • ERROR | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ComplianceDocumentResponseDTO.new(
  status: null
)
```

