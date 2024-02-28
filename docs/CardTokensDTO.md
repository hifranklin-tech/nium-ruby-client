# NiumClient::CardTokensDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_type** | **String** | This field contains the wallet provider.It can contain two values - googlePay applePay | [optional] |
| **token_reference_number** | **String** | This field contains the reference number for the token provided against the provisioning request. | [optional] |
| **token_number** | **String** | This field contains the token value created for the provisioned card. | [optional] |
| **token_requester_id** | **String** | This field contains the identifier for the provisioning service. | [optional] |
| **device_id** | **String** | This field contains the unique ID of the device on which the card is provisioned. | [optional] |
| **device_type** | **String** | This field contains the device type in numeric format used for provisioning. | [optional] |
| **status** | **String** | This field contains the token status. | [optional] |
| **created_at** | **String** | This field contains the date and time of token creation in the format - YYYY-MM-DD HH:mm:ss. | [optional] |
| **updated_at** | **String** | This field contains the date and time of token update in the format - YYYY-MM-DD HH:mm:ss. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CardTokensDTO.new(
  provider_type: applePay,
  token_reference_number: DNITHE400000000000000037,
  token_number: 0004611350190078050,
  token_requester_id: 40010030273,
  device_id: 04312E7B342C80014328036811932950DA075B1C4DD45672,
  device_type: 01,
  status: DEACTIVATED,
  created_at: 2021-05-28 06:06:11,
  updated_at: 2021-05-28 06:24:33
)
```

