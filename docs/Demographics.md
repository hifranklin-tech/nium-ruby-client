# NiumClient::Demographics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | This field contains the first name of the card holder. | [optional] |
| **middle_name** | **String** | This field contains the middle name of the card holder. | [optional] |
| **last_name** | **String** | This field contains the last name of the card holder. | [optional] |
| **email** | **String** | This field contains the email ID of the card holder. | [optional] |
| **country_code** | **String** | This field contains the 2-letter [ISO-2 country code](doc:currency-and-country-codes) for identifying the country prefix to a mobile number. | [optional] |
| **mobile** | **String** | This field contains the mobile number of the card holder--digits only--without the country code. | [optional] |
| **current_delivery_address** | [**Address**](Address.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Demographics.new(
  first_name: John,
  middle_name: W,
  last_name: Smith,
  email: johnsmith@xyzmail.com,
  country_code: AU,
  mobile: 0412345111,
  current_delivery_address: null
)
```

