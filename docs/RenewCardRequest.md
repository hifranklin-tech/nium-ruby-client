# NiumClient::RenewCardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_expiry** | **String** | The expiry date is applicable only for Virtual cards and not applicable for physical cards. This field is in MMYY format. For Virtual cards, the expiry date can be a maximum of 5 years from when the API is used. | [optional] |
| **use_current_address** | **Boolean** | Flag indicates if the address details for the renewed card must be current address on file or a new address. This flag should only be used for physical cards.  Skip this parameter for virtual cards.   **Note**: &#x60;delivery&#x60; field is mandatory if the value for this flag is true | [optional] |
| **delivery** | [**Address**](Address.md) |  | [optional] |
| **email** | **String** | Email Address to be mapped to the renewed card. | [optional] |
| **country_code** | **String** | Mobile country code to be mapped to the renewed card, it is two-letter ISO2 country code. | [optional] |
| **mobile** | **String** | Mobile number to be mapped to the renewed card | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RenewCardRequest.new(
  card_expiry: 1126,
  use_current_address: false,
  delivery: null,
  email: renewal@abccorp.com,
  country_code: SG,
  mobile: 1234567890
)
```

