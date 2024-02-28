# NiumClient::ConfirmFundingInstrumentRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **otp_received** | **String** | The one-time password (OTP) you received from Nium when calling the Add Funding Instrument API.This is a required field for EU and UK direct deposit. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ConfirmFundingInstrumentRequestDTO.new(
  otp_received: null
)
```

