# NiumClient::CorporateEnrichedDetailResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_details** | [**CorporateBusinessDetails**](CorporateBusinessDetails.md) |  | [optional] |
| **risk_assessment_info** | [**CorporateRiskAssessmentInfo**](CorporateRiskAssessmentInfo.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateEnrichedDetailResponseDTO.new(
  business_details: null,
  risk_assessment_info: null
)
```

