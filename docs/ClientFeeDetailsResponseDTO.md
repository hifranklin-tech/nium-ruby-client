# NiumClient::ClientFeeDetailsResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default** | **Boolean** |  | [optional] |
| **fees** | [**Array&lt;FeeResponseDTO&gt;**](FeeResponseDTO.md) | This is an array which contains the fees details. | [optional] |
| **segment** | **String** | This field contains the fee segment associated with a client. | [optional] |
| **status** | **String** | This field contains the status and the possible values are: Active Inactive | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ClientFeeDetailsResponseDTO.new(
  default: null,
  fees: null,
  segment: Silver,
  status: ACTIVE
)
```

