# NiumClient::OobCallbackRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_transaction_id** | **String** | This field represents the unique authorization ID of the transaction received during the OOB authentication. |  |
| **reference_number** | **String** | A reference number is a unique ID associated with the OOB request from your system. |  |
| **status_code** | **String** | The OOB authentication status code indicated if the transaction is approved or declined. The allowed values are: 001 — OOB authentication approved, 002 — OOB authentication declined. |  |
| **message** | **String** | An optional field to attach a message associated with the authentication. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::OobCallbackRequestDTO.new(
  auth_transaction_id: null,
  reference_number: null,
  status_code: null,
  message: null
)
```

