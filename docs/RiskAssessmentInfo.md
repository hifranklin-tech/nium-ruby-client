# NiumClient::RiskAssessmentInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **annual_turnover** | **String** | This field accepts the annual turnover for the corporate entity to be onboarded. Use the [Fetch Corporate Constants API](ref:fetchcorporateconstants) to get the list of valid enum values. | [optional] |
| **country_of_operation** | **Array&lt;String&gt;** | This array accepts the list of countries where business operations exist apart from the registered country for the corporate entity to be onboarded. Use the [Fetch Corporate Constants API](ref:fetchcorporateconstants) to get the list of valid countries. | [optional] |
| **industry_sector** | **String** | This field accepts the industry sector for the corporate entity to be onboarded. Use the [Fetch Corporate Constants API](ref:fetchcorporateconstants) to get the list of valid enum values. | [optional] |
| **intended_use_of_account** | **String** | The customer&#39;s intended use of the account. Use [Fetch Corporate Constants API](ref:fetchcorporateconstants) for valid values. | [optional] |
| **ofac_licence_present** | **String** | This field accepts Yes or No to ensure if the OFAC licence is present or not for the new corporate entity to be onboarded. | [optional] |
| **restricted_countries** | **Array&lt;String&gt;** | This array accepts the restricted country names. | [optional] |
| **risk_score** | **String** | This field accepts the risk score assigned to the corporate. This field is only applicable for pre-approved clients. | [optional] |
| **risk_severity** | **String** | This field accepts the risk severity assigned to the corporate. The possible value are: HIGH MEDIUM LOW RESTRICTED This field is only applicable for pre-approved clients. | [optional] |
| **total_employees** | **String** | This field accepts the total number of employees for the corporate entity to be onboarded. Use the [Fetch Corporate Constants API](ref:fetchcorporateconstants) to get the list of valid enum values. | [optional] |
| **transaction_countries** | **Array&lt;String&gt;** | An array of countries where the transactions occur. Use [Fetch Corporate Constants API](ref:fetchcorporateconstants) for valid values. | [optional] |
| **travel_restricted_country** | **String** | If the customer is an Online Travel Agency (OTA) and facilitates travel service to any travel-restricted country, then this field is Yes; otherwise, it&#39;s No. Note: This field is applicable when JPMC Virtual Account is offered to the client. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RiskAssessmentInfo.new(
  annual_turnover: null,
  country_of_operation: null,
  industry_sector: null,
  intended_use_of_account: null,
  ofac_licence_present: null,
  restricted_countries: null,
  risk_score: null,
  risk_severity: null,
  total_employees: null,
  transaction_countries: null,
  travel_restricted_country: null
)
```

