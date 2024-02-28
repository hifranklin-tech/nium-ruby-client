# NiumClient::RiskAssessmentInfoResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annual_turnover** | **String** | This field contains the annual turnover of the business. | [optional] |
| **industry_sector** | **String** | This field contains the industry sector of the business. | [optional] |
| **intended_use_of_account** | **String** |  | [optional] |
| **total_employees** | **String** | This field contains the total number of employee for the business. | [optional] |
| **transaction_countries** | **Array&lt;String&gt;** | This field contains the list of countries where the customer is expected to send/receive/spend from his account | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RiskAssessmentInfoResponseDTO.new(
  annual_turnover: null,
  industry_sector: Farming,
  intended_use_of_account: null,
  total_employees: 1000,
  transaction_countries: null
)
```

