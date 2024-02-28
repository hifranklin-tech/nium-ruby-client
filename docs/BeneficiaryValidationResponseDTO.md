# NiumClient::BeneficiaryValidationResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **beneficiary_bank_code** | **String** | This field contains beneficiary bank code if the payout method is proxy and proxy type is VPA. | [optional] |
| **beneficiary_name** | **String** | This field contains beneficiary name if the payout method is proxy. | [optional] |
| **status** | **String** | This field contains the status only when the proxy type is VPA. The possible values are: VE: Virtual Address Available F: Failed VN: Virtual Address not Available | [optional] |
| **valid** | **Boolean** | This field will return true if the provided details are valid otherwise false. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BeneficiaryValidationResponseDTO.new(
  beneficiary_bank_code: null,
  beneficiary_name: null,
  status: null,
  valid: null
)
```

