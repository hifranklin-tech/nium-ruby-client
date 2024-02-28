# NiumClient::Stakeholders2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_partner** | [**BusinessPartner2**](BusinessPartner2.md) |  | [optional] |
| **entity_type** | **String** |  | [optional] |
| **reference_id** | **String** | This is the reference Id of the stakeholder for which the RFI is raised. | [optional] |
| **stakeholder_details** | [**StakeholderDetails2**](StakeholderDetails2.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Stakeholders2.new(
  business_partner: null,
  entity_type: null,
  reference_id: 137889fb-8569-4e34-b50b-1a71c787dc61,
  stakeholder_details: null
)
```

