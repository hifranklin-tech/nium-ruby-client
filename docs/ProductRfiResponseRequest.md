# NiumClient::ProductRfiResponseRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_info** | [**BusinessDetails2**](BusinessDetails2.md) |  | [optional] |
| **rfi_template_id** | **String** | This field accepts the RFI template ID as received in [Fetch Corporate Customer RFI Details](ref:fetchcorporatecustomerrfidetails) API. | [optional] |
| **risk_assessment_info** | [**RiskAssessmentInfo**](RiskAssessmentInfo.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ProductRfiResponseRequest.new(
  business_info: null,
  rfi_template_id: e47fbae2-aee2-43d4-9524-c8fcf6513616,
  risk_assessment_info: null
)
```

