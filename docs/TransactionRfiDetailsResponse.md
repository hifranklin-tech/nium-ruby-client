# NiumClient::TransactionRfiDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | This field contains the description of the RFI. | [optional] |
| **document_type** | **String** | This field contains the type of the document if applicable, for example, POI, POA, etc. | [optional] |
| **mandatory** | **Boolean** | This flag signifies if the RFI is mandatory or not. | [optional] |
| **remarks** | **String** | This field contains the remarks provided while raising the RFI. | [optional] |
| **required_data** | [**Array&lt;WalletRfiAttributeResponse&gt;**](WalletRfiAttributeResponse.md) | This array contains the required data for the RFI. | [optional] |
| **rfi_hash_id** | **String** | This field contains the unique RFI hash ID. | [optional] |
| **rfi_id** | **String** | This field contains the unique identifier for group of RFI raised for the customer transaction. | [optional] |
| **rfi_status** | **String** | This field contains Transaction RFI status. | [optional] |
| **transaction_entity_type** | **String** | This field contains the type of the transaction entity. The possible values are: DEBTOR CREDITOR | [optional] |
| **type** | **String** | This field contains the type of RFI. It could be document or data. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::TransactionRfiDetailsResponse.new(
  description: null,
  document_type: null,
  mandatory: null,
  remarks: null,
  required_data: null,
  rfi_hash_id: null,
  rfi_id: null,
  rfi_status: null,
  transaction_entity_type: null,
  type: null
)
```

