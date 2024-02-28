# NiumClient::RemittanceEventsResponseDTO2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** | This field contains ISO error code. | [optional] |
| **error_description** | **String** | This field contains ISO reason description. | [optional] |
| **error_reason_code** | **String** | This field contains ISO reason code. | [optional] |
| **estimated_delivery_time** | **String** |  | [optional] |
| **gpi** | [**GPIResponseDTO**](GPIResponseDTO.md) |  | [optional] |
| **last_updated_at** | **Time** | This field contains the latest updated date of the remittance transaction status. | [optional] |
| **partner_reference_number** | **String** | This field contains the unique ID from the partner involved in the remittance. | [optional] |
| **payment_reference_number** | **String** | This field contains the unique ID returned by payment gateway as a reference for the payment done. | [optional] |
| **status** | **String** | This field contains the status of the remittance transaction. | [optional] |
| **status_details** | **String** | This field will provide details about the status of the transaction. As an example, if the status is “RETURN”, this field will provide the reason for the “RETURN”. | [optional] |
| **system_reference_number** | **String** | This field contains the unique system reference number generated for each remittance transaction. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RemittanceEventsResponseDTO2.new(
  error_code: null,
  error_description: null,
  error_reason_code: null,
  estimated_delivery_time: null,
  gpi: null,
  last_updated_at: null,
  partner_reference_number: null,
  payment_reference_number: null,
  status: null,
  status_details: null,
  system_reference_number: null
)
```

