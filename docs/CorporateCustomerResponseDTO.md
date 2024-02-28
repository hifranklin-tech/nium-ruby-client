# NiumClient::CorporateCustomerResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_details** | [**BusinessDetailsResponseV2DTO**](BusinessDetailsResponseV2DTO.md) |  | [optional] |
| **case_id** | **String** | This field shows the compliance case Id of the customer. | [optional] |
| **client_id** | **String** | This field shows the NIUM client Id of the customer. This field should be provided only while performing the re-initiate KYB process.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **compliance_region** | **String** | This field shows the region code for which onboarding has been triggered. The acceptable value are: AU EU UK SG  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **risk_assessment_info** | [**RiskAssessmentInfoV2**](RiskAssessmentInfoV2.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateCustomerResponseDTO.new(
  business_details: null,
  case_id: null,
  client_id: null,
  compliance_region: null,
  risk_assessment_info: null
)
```

