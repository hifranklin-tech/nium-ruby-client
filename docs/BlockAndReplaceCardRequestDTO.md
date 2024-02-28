# NiumClient::BlockAndReplaceCardRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** | This field accepts the reason for card block. The possible values are: fraud lost stolen damaged |  |
| **replace_card** | **Boolean** | A Flag that specifies whether to replace card or not |  |
| **plastic_id** | **String** | Pre-defined plastic Id defined at NIUM and communicated to client. It is used to determine the card design | [optional] |
| **card_expiry** | **String** | The expiry date is applicable only for Virtual cards and not applicable for physical cards. This field is in MMYY format. For Virtual cards, the expiry date can be a maximum of 5 years from when the API is used. | [optional] |
| **use_current_address** | **Boolean** | Boolean \&quot;useCurrentAddress\&quot; specifies whether to use existing address in the system or new address passed in address object | [optional] |
| **delivery** | [**Address**](Address.md) |  | [optional] |
| **email** | **String** | Card holder Email | [optional] |
| **country_code** | **String** | Country is two-letter ISO2 country code for mobile | [optional] |
| **mobile** | **String** | Mobile field is where the recipient&#39;s mobile phone number. This field is mandatory when useBillingAddress is true | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BlockAndReplaceCardRequestDTO.new(
  reason: fraud,
  replace_card: true,
  plastic_id: 100100,
  card_expiry: 1122,
  use_current_address: false,
  delivery: null,
  email: example@mail.com,
  country_code: GB,
  mobile: 9876543210
)
```

