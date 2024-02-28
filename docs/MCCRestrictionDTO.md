# NiumClient::MCCRestrictionDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_strategy** | **String** | This field accepts the two values: WHITE_LIST BLACK_LIST If this field is not passed then the default value will be WHITE_LIST. If the WHITE_LIST is selected along with the Active status, it means mcc whitelisting is active for the provided list. | [optional] |
| **description** | **String** | This field accepts the description for enabling or disabling the mcc restriction. |  |
| **merchant_category_codes** | **Array&lt;String&gt;** | This array accepts the list of 4-digit mcc codes. |  |
| **status** | **String** | This field accepts the status and values for this field can be: Active or Inactive. The default value of this field is Active. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::MCCRestrictionDTO.new(
  channel_strategy: BLACK_LIST,
  description: Restrict Above MCC Codes,
  merchant_category_codes: [&quot;3547&quot;],
  status: Active
)
```

