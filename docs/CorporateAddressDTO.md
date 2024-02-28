# NiumClient::CorporateAddressDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address1** | **String** | This field contains the address line 1 of the business address. | [optional] |
| **address2** | **String** | This field contains the address line 2 of the business address. | [optional] |
| **city** | **String** | This field contains the city of the business address. | [optional] |
| **country** | **String** | This field contains the country of the business address. | [optional] |
| **state** | **String** | This field contains the state of the business address. | [optional] |
| **zip_code** | **String** | This field contains the zipCode of the business address. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateAddressDTO.new(
  address1: 221 Mulford Drive,
  address2: Johnson Square,
  city: Sydney,
  country: AU,
  state: New South Wales,
  zip_code: 2001
)
```

