# NiumClient::RfiTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_id** | **String** | This field contains the reference ID of the the entity for which the RFI is raised. | [optional] |
| **remarks** | **String** | This field contains the remarks entered by compliance while raising RFI. | [optional] |
| **status** | **String** | This field contains the status of the RFI. The possible values are: RFI_REQUESTED RFI_RESPONDED | [optional] |
| **template** | [**Template**](Template.md) |  | [optional] |
| **template_id** | **String** | This field contains the ID of the RFI template. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RfiTemplate.new(
  reference_id: 5fe45995-b529-44fd-8af9-0042fd020942,
  remarks: test,
  status: RFI_RESPONDED,
  template: null,
  template_id: ccb58d50-5dad-4bff-a418-3c2d5426e4c2
)
```

