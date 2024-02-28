# NiumClient::CorporateCustomerRequestsDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | [**Array&lt;ProductCustomerTagDTO&gt;**](ProductCustomerTagDTO.md) | This object contains the user defined key-value pairs provided by the client. The maximum number of tags allowed is 15.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **authentication_code** | **String** | This field accepts the authentication code generated as part of SCA (Strong Customer Authentication). Note: : Authentication code must be passed if regulatory region of the program is UK or EU. Otherwise, do not use this field and do not pass any value. | [optional] |
| **business_details** | [**BusinessDetails**](BusinessDetails.md) |  | [optional] |
| **client_id** | **String** | This field accepts the NIUM client Id of the customer. This field should be provided only while performing the re-initiate KYB process.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **customer_hash_id** | **String** | This field accepts the unique customer identifier generated at the time of customer creation. It is received in the response of the previously executed Onboard Customer API. This field should be provided only while performing the re-initiate KYB process.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **region** | **String** | This field accepts the region code for which onboarding has been triggered. The acceptable value are: AU EU UK SG  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **risk_assessment_info** | [**RiskAssessmentInfo**](RiskAssessmentInfo.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateCustomerRequestsDTO.new(
  tags: null,
  authentication_code: authCode,
  business_details: null,
  client_id: null,
  customer_hash_id: null,
  region: null,
  risk_assessment_info: null
)
```

