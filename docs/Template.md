# NiumClient::Template

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_type** | **String** | This field contains the RFI document type. The possible values are: POA POI | [optional] |
| **name** | **String** | This field contains name of the RFI template. | [optional] |
| **required_fields** | [**Array&lt;RequiredFields&gt;**](RequiredFields.md) | This is an array which contains the list of fields for the RFI template. | [optional] |
| **rfi_type** | **String** | This field contains the entity type for which the RFI is raised. The possible values are: corporate applicant stakeholder | [optional] |
| **type** | **String** | This field contains the RFI template type. It can be either Data RFI or Document RFI. The possible values are: data document | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Template.new(
  document_type: POI,
  name: businessName,
  required_fields: null,
  rfi_type: applicant,
  type: document
)
```

