# NiumClient::ProductTaxDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](https://nium-documents.s3-eu-west-1.amazonaws.com/spend-documents/Country+Code.pdf) for the country of residence for tax purpose.  AU: NA EU: Required UK: NA SG: NA | [optional] |
| **tax_number** | **String** | This field accepts the tax ID number for each country of tax residence.  AU: NA EU: Required UK: NA SG: NA | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ProductTaxDetails.new(
  country: null,
  tax_number: null
)
```

