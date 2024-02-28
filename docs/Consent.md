# NiumClient::Consent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access** | [**Access**](Access.md) |  | [optional] |
| **consent_status** | **String** | Authentication status of the consent. | [optional] |
| **frequency_per_day** | **Integer** | This field indicates the requested maximum frequency for an access per day. | [optional] |
| **last_action_date** | **String** | This date is containing the date of the last action on the consent object either through the XS2A interface or the PSU/ASPSP interface having an impact on the status. | [optional] |
| **recurring_indicator** | **Boolean** | If the consent is for recurring access to the account data then the recurringIndicator value will be true or if the consent is for one access to the account data then the recurringIndicator value will be false. | [optional] |
| **sca_status** | [**ScaStatus**](ScaStatus.md) |  | [optional] |
| **valid_until** | **String** | This valid date for the requested consent. The content is the local ASPSP date in ISODate and the format is 2017-10-30. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Consent.new(
  access: null,
  consent_status: null,
  frequency_per_day: null,
  last_action_date: null,
  recurring_indicator: null,
  sca_status: null,
  valid_until: null
)
```

