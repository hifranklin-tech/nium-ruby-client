# NiumClient::CorporateAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | This field accepts the address line 1 of the stakeholder’s residential address.  AU: Required EU: Required UK: Required SG: Optional | [optional] |
| **address_line2** | **String** | This field accepts the address line 2 of the stakeholder’s residential address.  AU: Required EU: Optional UK: Optional SG: Optional | [optional] |
| **city** | **String** | This field accepts the stakeholder’s residential city.  AU: Required EU: Required UK: Required SG: Optional | [optional] |
| **country** | **String** | This field accepts the [2-letter ISO Alpha-2 country code](doc:currency-and-country-codes) for the residential country of the stakeholder.  AU: Optional EU: Required UK: Required SG: Required | [optional] |
| **postcode** | **String** | This field accepts the zip code or postal code of the stakeholder’s residential address.  AU: Optional EU: Required UK: Required SG: Required | [optional] |
| **state** | **String** | This field accepts the state of the stakeholder’s residential address.  AU: Optional EU: Required UK: Required SG: Required | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateAddress.new(
  address_line1: null,
  address_line2: null,
  city: null,
  country: null,
  postcode: null,
  state: null
)
```

