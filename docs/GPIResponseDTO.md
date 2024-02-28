# NiumClient::GPIResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **forward_bank_code** | **String** | This field contains forward Bank Code for GPI | [optional] |
| **forward_bank_name** | **String** | This field contains forward Bank Name for GPI | [optional] |
| **reason_code** | **String** | This field contains GPI reason code. | [optional] |
| **remarks** | **String** | This field contains remarks | [optional] |
| **status_description** | **String** | This field contains GPI Status Description for GPI. | [optional] |
| **timestamp** | **String** | This field contains GPI timestamp | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::GPIResponseDTO.new(
  forward_bank_code: null,
  forward_bank_name: null,
  reason_code: null,
  remarks: null,
  status_description: null,
  timestamp: null
)
```

