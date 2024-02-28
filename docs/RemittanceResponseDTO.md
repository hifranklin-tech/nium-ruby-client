# NiumClient::RemittanceResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **estimated_delivery_time** | **String** | This field is estimated delivery time of transaction. | [optional] |
| **message** | **String** | This field will return a success message if the money transferred successfully. | [optional] |
| **payment_id** | **String** | This field contains the unique payment ID. | [optional] |
| **system_reference_number** | **String** | This is a unique system reference number assigned to the transaction. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RemittanceResponseDTO.new(
  estimated_delivery_time: 2023‐08‐24T06:39:51Z,
  message: Transfer accepted,
  payment_id: null,
  system_reference_number: RT6431795378
)
```

