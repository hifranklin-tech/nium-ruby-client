# NiumClient::AddBeneficiaryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication_code** | **String** | This field accepts the authentication code generated as part of Strong Customer Authentication (SCA). Note: Authentication code must be passed if regulatory region of the program is UK or EU. This field does not accept a value for any other region. | [optional] |
| **beneficiary_detail** | [**BeneficiaryDetailRequest**](BeneficiaryDetailRequest.md) |  |  |
| **payout_detail** | [**PayoutRequest**](PayoutRequest.md) |  |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AddBeneficiaryRequest.new(
  authentication_code: null,
  beneficiary_detail: null,
  payout_detail: null
)
```

