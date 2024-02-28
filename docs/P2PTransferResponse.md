# NiumClient::P2PTransferResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | This field provides the message in case of errors. In case of success, it is null. | [optional] |
| **retrieval_reference_number** | **String** | Unique auth code generated for the transaction by the card issuance platform. This field shall be deprecated in future. Clients should use systemReferenceNumber. | [optional] |
| **status** | **String** | The status value can be Pending or Approved. | [optional] |
| **success** | **Boolean** | This flag is used to specify if the transfer was successful or not. | [optional] |
| **system_reference_number** | **String** | Unique auth code generated for the transaction by the card issuance platform. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::P2PTransferResponse.new(
  message: null,
  retrieval_reference_number: FT6449832977,
  status: APPROVED,
  success: true,
  system_reference_number: FT6449832977
)
```

