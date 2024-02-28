# NiumClient::TaxDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | This field accepts the 2 letter country code where the taxes are filed. | [optional] |
| **tax_number** | **String** | This field accepts the tax number. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::TaxDetails.new(
  country: null,
  tax_number: null
)
```

