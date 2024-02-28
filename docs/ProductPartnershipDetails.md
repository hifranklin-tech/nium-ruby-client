# NiumClient::ProductPartnershipDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **partner_country** | **String** | This field accepts the country where partnership was established.  AU: Optional EU: NA UK: NA SG: Optional | [optional] |
| **partner_name** | **String** | This field accepts the partner name.  AU: Optional EU: NA UK: NA SG: Optional | [optional] |
| **partner_state** | **String** | This field accepts the state where partnership was established.  AU: Optional EU: NA UK: NA SG: Optional | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ProductPartnershipDetails.new(
  partner_country: null,
  partner_name: null,
  partner_state: null
)
```

