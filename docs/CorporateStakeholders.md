# NiumClient::CorporateStakeholders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_partner** | [**CorporateBusinessPartner**](CorporateBusinessPartner.md) |  | [optional] |
| **entity_type** | **String** |  | [optional] |
| **stakeholder_details** | [**CorporateStakeholderDetails**](CorporateStakeholderDetails.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateStakeholders.new(
  business_partner: null,
  entity_type: null,
  stakeholder_details: null
)
```

