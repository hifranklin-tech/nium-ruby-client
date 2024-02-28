# NiumClient::DeviceDetailsDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_ip** | **String** | This field accepts the country IP for the device by the customer for initiating the request. | [optional] |
| **device_info** | **String** | This field accepts the device information used by the customer for initiating the request. | [optional] |
| **ip_address** | **String** | This field accepts the IP address of the device used by the customer for initiating the request. | [optional] |
| **session_id** | **String** | This field accepts the session Id for the session of the customer for initiating the request. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::DeviceDetailsDTO.new(
  country_ip: 66.249.74.64,
  device_info: macOS,
  ip_address: 45.48.241.198,
  session_id: 40531ac01a6f11edafc28dba55d51275
)
```

