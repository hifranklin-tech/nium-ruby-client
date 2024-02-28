# NiumClient::SupportedCorridorsResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **beneficiary_account_type** | **String** |  | [optional] |
| **customer_type** | **String** |  | [optional] |
| **destination_country** | **String** |  | [optional] |
| **destination_currency** | **String** |  | [optional] |
| **payout_method** | **String** |  | [optional] |
| **routing_code_type** | **String** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::SupportedCorridorsResponseDTO.new(
  beneficiary_account_type: null,
  customer_type: null,
  destination_country: null,
  destination_currency: null,
  payout_method: null,
  routing_code_type: null
)
```

