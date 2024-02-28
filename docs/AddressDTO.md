# NiumClient::AddressDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | This field accepts the line 1 of the customer’s address. Maximum character limit: 100. | [optional] |
| **address_line2** | **String** | This field accepts the line 2 of the customer’s address. Maximum character limit: 100. | [optional] |
| **city** | **String** | This field accepts the city of the customer’s address. Maximum character limit: 50. | [optional] |
| **country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the customer’s country. | [optional] |
| **postcode** | **String** | This field accepts the postal code of the customer’s address. The acceptable special characters are: Hypen(-) Hash(#) Space( ) Minimum character limit: 3 Maximum character limit: 10 Example: CM-4165 65 | [optional] |
| **state** | **String** | This field accepts the state of the customer’s address | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AddressDTO.new(
  address_line1: null,
  address_line2: null,
  city: null,
  country: null,
  postcode: null,
  state: null
)
```

