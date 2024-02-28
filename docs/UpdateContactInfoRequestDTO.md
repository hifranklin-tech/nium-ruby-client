# NiumClient::UpdateContactInfoRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Card holder Email | [optional] |
| **country_code** | **String** | Country code for mobile number in [ISO Alpha-2](doc:currency-and-country-codes) format. | [optional] |
| **mobile** | **String** | Card holder mobile number | [optional] |
| **delivery** | [**Address**](Address.md) |  | [optional] |
| **name_on_card** | **String** | This field can be used to print the customer name. The value sent in this field will be updated on the card.If this field is left empty, line 1 will not be printed on the card. This field accepts alphanumeric characters along with space(s) The maximum character limit is 26. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::UpdateContactInfoRequestDTO.new(
  email: example@mail.com,
  country_code: SG,
  mobile: 9876543210,
  delivery: null,
  name_on_card: John Doe
)
```

