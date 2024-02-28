# NiumClient::Stakeholders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_partner** | [**BusinessPartner**](BusinessPartner.md) |  | [optional] |
| **reference_id** | **String** | This field accepts the unique reference ID for the Individual or Business Stakeholder provided by client.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **stakeholder_details** | [**StakeholderDetails**](StakeholderDetails.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Stakeholders.new(
  business_partner: null,
  reference_id: null,
  stakeholder_details: null
)
```

