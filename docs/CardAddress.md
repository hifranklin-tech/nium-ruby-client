# NiumClient::CardAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | Address line1 field captures the first line of the address, typically including house number, street name, and any unit/apartment number | [optional] |
| **address_line2** | **String** | Address line2 is an optional field for adding extra details to the address. | [optional] |
| **city** | **String** | City field is where the city or town name of the address | [optional] |
| **country** | **String** | Country is two-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) of the address | [optional] |
| **landmark** | **String** | Landmark is an optional field used to specify a nearby recognizable location or point of reference to assist | [optional] |
| **post_code** | **String** | Post code field is where the postal code or ZIP code of the address | [optional] |
| **state** | **String** | State field is where the name of the state, province, or region should be entered for the address | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CardAddress.new(
  address_line1: 20 W 34th St.,
  address_line2: Suite 200,
  city: New York,
  country: SG,
  landmark: Empire State Building,
  post_code: 10001,
  state: New York
)
```

