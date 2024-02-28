# NiumClient::TermsAndConditionsResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** | This field contains the date and time of the TnC version creation. | [optional] |
| **description** | **String** | This field contains the HTML format of the TnC. | [optional] |
| **name** | **String** | This field contains the name of the TnC to be presented to the customer. | [optional] |
| **version_id** | **String** | This field contains the version number of the TnC. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::TermsAndConditionsResponseDTO.new(
  created_at: 2020-07-03 15:14:57,
  description: &lt;HTML with Terms and Conditions&gt;,
  name: GENERALTNC,
  version_id: 1.0
)
```

