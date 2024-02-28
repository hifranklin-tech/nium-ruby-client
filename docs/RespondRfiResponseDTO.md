# NiumClient::RespondRfiResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | This field contains the compliance case Id of the customer. | [optional] |
| **client_id** | **String** | This field contains the NIUM client Id of the customer. | [optional] |
| **status** | **String** | This field contains the compliance status of the corporate customer after the RFI is responded. On successful response to RFI, possible value is RFI_RESPONDED. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RespondRfiResponseDTO.new(
  case_id: d838d937-9bf6-4948-a328-fc55188ddde4,
  client_id: NIM1630928573504,
  status: RFI_RESPONDED
)
```

