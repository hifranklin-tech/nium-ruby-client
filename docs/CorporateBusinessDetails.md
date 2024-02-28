# NiumClient::CorporateBusinessDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_info** | **Hash&lt;String, String&gt;** | This object accepts additional information about the business. Acceptable fields are &#x60;isSameBusinessAddress&#x60; (for all regions), &#x60;searchId&#x60; (for EU, SG, UK), and &#x60;businessExtractCoveredStakeholder&#x60; (for EU). Acceptable values for all the above fields are &#x60;Yes&#x60; and &#x60;No&#x60;. | [optional] |
| **addresses** | [**CorporateAddresses**](CorporateAddresses.md) |  | [optional] |
| **business_name** | **String** | This field contains the name of a business. | [optional] |
| **business_registration_number** | **String** | This field accepts the business registration number of the new corporate entity to be onboarded. | [optional] |
| **legal_details** | [**CorporateLegalDetails**](CorporateLegalDetails.md) |  | [optional] |
| **stakeholders** | [**Array&lt;CorporateStakeholders&gt;**](CorporateStakeholders.md) | This array accepts the stakeholder details for the new corporate entity to be onboarded. | [optional] |
| **website** | **String** | This field accepts the business website link of the new corporate entity to be onboarded. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateBusinessDetails.new(
  additional_info: null,
  addresses: null,
  business_name: null,
  business_registration_number: null,
  legal_details: null,
  stakeholders: null,
  website: null
)
```

