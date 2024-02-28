# NiumClient::ProductAssociationDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_chair_person** | **String** | This field accepts the full name of the association chair, secretary, treasurer.  AU: Optional EU: NA UK: NA SG: Optional | [optional] |
| **association_name** | **String** | This field accepts the full name of the association.  AU: Optional EU: NA UK: NA SG: Optional | [optional] |
| **association_number** | **String** | This field accepts an association number as issued by the applicable state/territory.  AU: Optional EU: NA UK: NA SG: Optional | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ProductAssociationDetails.new(
  association_chair_person: null,
  association_name: null,
  association_number: null
)
```

