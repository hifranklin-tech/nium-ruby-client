# NiumClient::FundTransferResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | This field provides the message in case of errors. In case of success, it is null. | [optional] |
| **status** | **String** | The status value can be Pending or Approved. | [optional] |
| **system_reference_number** | **String** | Unique auth code generated for the transaction by the card issuance platform. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::FundTransferResponse.new(
  message: null,
  status: APPROVED,
  system_reference_number: FT6449832977
)
```

