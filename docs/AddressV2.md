# NiumClient::AddressV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | This field stores the address line 1. | [optional] |
| **address_line2** | **String** | This field stores the address line 2 | [optional] |
| **city** | **String** | This field stores the city. | [optional] |
| **country** | **String** | This field stores the country. Use the [Fetch Corporate Constants API](ref:fetchcorporateconstants) to get the list of valid countries. | [optional] |
| **post_code** | **String** | This field stores the zipCode. | [optional] |
| **state** | **String** | This field stores the state. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AddressV2.new(
  address_line1: null,
  address_line2: null,
  city: Sydney,
  country: AU,
  post_code: 2001,
  state: New South Wales
)
```

