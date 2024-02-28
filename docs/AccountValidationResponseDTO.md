# NiumClient::AccountValidationResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_validation_id** | **String** | This field contains the unique identifier. | [optional] |
| **beneficiary** | [**BeneficiaryDetailsDTO**](BeneficiaryDetailsDTO.md) |  | [optional] |
| **status** | **String** | This will provide the status of the CoP call. This can be one of confirmation_in_progress, verified, not_verified or not_supported. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AccountValidationResponseDTO.new(
  account_validation_id: null,
  beneficiary: null,
  status: null
)
```

