# NiumClient::CustomerTaxDetailDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_of_residence** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) for the country of residence.  Note: This field is mandatory for EU. | [optional] |
| **tax_id_number** | **String** | This field accepts the tax ID number of the customer, for example, \&quot;FR123456\&quot;. Note: This field is mandatory for EU. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomerTaxDetailDTO.new(
  country_of_residence: FR,
  tax_id_number: FR123456
)
```

