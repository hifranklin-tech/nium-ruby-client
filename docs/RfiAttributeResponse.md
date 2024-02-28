# NiumClient::RfiAttributeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | This field contains the field label for the RFI. | [optional] |
| **type** | **String** | This field contains the field type. The possible values are data or document. | [optional] |
| **value** | **String** | This field contains the field value for the RFI. This will be used while responding to transaction RFI. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RfiAttributeResponse.new(
  label: Date Of Birth,
  type: data,
  value: dateOfBirth
)
```

