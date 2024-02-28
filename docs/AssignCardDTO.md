# NiumClient::AssignCardDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** | This field accepts the 19-digit account number (also known as card proxy number) printed on the non-personalized physical card. Alternately, the leading zeros may also be ignored in which case only the last 16-digits are required. For example, account number can be entered as 0007560010000160875, 007560010000160875, 07560010000160875 or 7560010000160875 |  |
| **card_number_last4_digits** | **String** | This field accepts the last 4 digit of the card number |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AssignCardDTO.new(
  account_number: 0007560030000012140,
  card_number_last4_digits: 2197
)
```

