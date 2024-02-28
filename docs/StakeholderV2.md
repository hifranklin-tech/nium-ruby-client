# NiumClient::StakeholderV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_partner** | [**BusinessPartnerV2**](BusinessPartnerV2.md) |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **stakeholder_details** | [**StakeholderDetailsV2**](StakeholderDetailsV2.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::StakeholderV2.new(
  business_partner: null,
  reference_id: null,
  stakeholder_details: null
)
```

