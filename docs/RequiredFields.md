# NiumClient::RequiredFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_label** | **String** | This field contains the label of the field for which the RFI is raised. | [optional] |
| **field_value** | **String** | This field contains the field value for which the RFI is raised. | [optional] |
| **type** | **String** | This field contains the type for which the RFI is raised. The possible values are: data document | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RequiredFields.new(
  field_label: Identity Document Type,
  field_value: documentType,
  type: data
)
```

