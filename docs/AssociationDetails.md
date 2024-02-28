# NiumClient::AssociationDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_chair_person** | **String** | The full name of the association chair, secretary, or treasurer. | [optional] |
| **association_name** | **String** | The complete name of the association. | [optional] |
| **association_number** | **String** | The association number as issued by the applicable state or territory. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AssociationDetails.new(
  association_chair_person: null,
  association_name: null,
  association_number: null
)
```

