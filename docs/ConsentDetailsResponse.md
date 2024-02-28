# NiumClient::ConsentDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **consent** | [**Consent**](Consent.md) |  | [optional] |
| **id** | **String** | Id of the consent to retrieve. | [optional] |
| **payment** | [**Payment**](Payment.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ConsentDetailsResponse.new(
  consent: null,
  id: null,
  payment: null
)
```

