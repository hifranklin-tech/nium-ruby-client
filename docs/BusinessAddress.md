# NiumClient::BusinessAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | This field contains the address line 1 of the business address. | [optional] |
| **address_line2** | **String** | This field contains the address line 2 of the business address. | [optional] |
| **city** | **String** | This field contains the city name of the business address. | [optional] |
| **country** | **String** | This field contains the country name of the business address. | [optional] |
| **postcode** | **String** | This field contains the postcode of the business address. | [optional] |
| **state** | **String** | This field contains the state name of the business address. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BusinessAddress.new(
  address_line1: null,
  address_line2: null,
  city: null,
  country: null,
  postcode: null,
  state: null
)
```

