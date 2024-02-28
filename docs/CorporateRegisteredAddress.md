# NiumClient::CorporateRegisteredAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | This field accepts the address line1 of the registered address for the new corporate entity to be onboarded. | [optional] |
| **address_line2** | **String** | This field accepts the address line2 of the registered address for the new corporate entity to be onboarded. | [optional] |
| **city** | **String** | This field accepts the city name of the registered address for the new corporate entity to be onboarded. | [optional] |
| **country** | **String** | This field accepts the [2-letter ISO Alpha-2](doc:currency-and-country-codes) country code of the registered address for the corporate entity to be onboarded. | [optional] |
| **postcode** | **String** | This field accepts the zip code or postal code of the registered address for the corporate entity to be onboarded. | [optional] |
| **state** | **String** | This field accepts the state for the new corporate entity to be onboarded. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateRegisteredAddress.new(
  address_line1: null,
  address_line2: null,
  city: null,
  country: null,
  postcode: null,
  state: null
)
```

