# NiumClient::TermsAndConditionsRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **Boolean** | This flag specifies if the customer has accepted or rejected the Terms and Conditions. |  |
| **name** | **String** | This is the name of the TnC for which the accept flag is being sent. |  |
| **version_id** | **String** | This is the version of the TnC for which the accept flag is being sent. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::TermsAndConditionsRequestDTO.new(
  accept: true,
  name: GENERALTNC,
  version_id: 1.0
)
```

