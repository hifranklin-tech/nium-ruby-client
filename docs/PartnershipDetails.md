# NiumClient::PartnershipDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **partner_country** | **String** | The country where the partnership is established. | [optional] |
| **partner_name** | **String** | The complete name of the partner. | [optional] |
| **partner_state** | **String** | The state where the partnership is established. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PartnershipDetails.new(
  partner_country: null,
  partner_name: null,
  partner_state: null
)
```

