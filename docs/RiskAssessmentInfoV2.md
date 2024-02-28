# NiumClient::RiskAssessmentInfoV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annual_turnover** | **String** |  | [optional] |
| **country_of_operation** | **Array&lt;String&gt;** |  | [optional] |
| **industry_sector** | **String** |  | [optional] |
| **intended_use_of_account** | **String** |  | [optional] |
| **ofac_licence_present** | **Boolean** |  | [optional] |
| **restricted_countries** | **Array&lt;String&gt;** |  | [optional] |
| **total_employees** | **String** |  | [optional] |
| **transaction_countries** | **Array&lt;String&gt;** |  | [optional] |
| **travel_restricted_country** | **Boolean** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RiskAssessmentInfoV2.new(
  annual_turnover: null,
  country_of_operation: null,
  industry_sector: null,
  intended_use_of_account: null,
  ofac_licence_present: null,
  restricted_countries: null,
  total_employees: null,
  transaction_countries: null,
  travel_restricted_country: null
)
```

