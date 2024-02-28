# NiumClient::RegisteredAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | This field accepts the address line1 of the registered address for the new corporate entity to be onboarded.  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **address_line2** | **String** | This field accepts the address line2 of the registered address for the new corporate entity to be onboarded.  AU: Required EU: Optional UK: Optional SG: Optional | [optional] |
| **city** | **String** | This field accepts the city name of the registered address for the new corporate entity to be onboarded.  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **country** | **String** | This field accepts the [2-letter ISO Alpha-2](https://nium-documents.s3-eu-west-1.amazonaws.com/spend-documents/Country+Code.pdf) country code of the registered address for the corporate entity to be onboarded.  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **postcode** | **String** | This field accepts the zip code or postal code of the registered address for the corporate entity to be onboarded.  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **state** | **String** | This field accepts the state for the new corporate entity to be onboarded.  AU: Required EU: Required UK: Required SG: Required | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RegisteredAddress.new(
  address_line1: null,
  address_line2: null,
  city: null,
  country: null,
  postcode: null,
  state: null
)
```

