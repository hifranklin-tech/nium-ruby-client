# NiumClient::LocalIsoResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_amount** | **String** | This field contains balance inquiry amount | [optional] |
| **authorization_code** | **String** | This field contains the authorization code | [optional] |
| **date_of_transaction** | **String** | This field contains the date of transaction | [optional] |
| **response_code** | **String** | This field contains the response code value | [optional] |
| **rrn** | **String** | This field contains the rrn | [optional] |
| **stan** | **String** | This field contains the stan | [optional] |
| **status** | **String** | This field contains the status | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::LocalIsoResponse.new(
  additional_amount: null,
  authorization_code: null,
  date_of_transaction: null,
  response_code: null,
  rrn: null,
  stan: null,
  status: null
)
```

