# NiumClient::CorporateRiskAssessmentInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annual_turnover** | **String** | This field accepts the annual turnover for the corporate entity to be onboarded. Refer to the [Glossary of Annual Turnover](https://docs.nium.com/baas/onboard-corporate-customer#glossary-of-annual-turnover): for the applicable values. | [optional] |
| **total_employees** | **String** | This field accepts the total number of employees for the corporate entity to be onboarded. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateRiskAssessmentInfo.new(
  annual_turnover: null,
  total_employees: null
)
```

