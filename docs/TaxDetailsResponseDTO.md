# NiumClient::TaxDetailsResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | This field accepts the country of residence of the customer, for example, \&quot;France\&quot;. Note: This field is mandatory for EU and UK. |  |
| **tax_number** | **String** | This field accepts the tax ID number of the customer, for example, \&quot;FR123456\&quot;. Note: This field is mandatory for EU and UK. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::TaxDetailsResponseDTO.new(
  country: France,
  tax_number: FR123456
)
```

