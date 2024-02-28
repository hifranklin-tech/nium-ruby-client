# NiumClient::CardDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_hash_id** | **String** | This field contains the unique card identifier generated while new/add-on card issuance. | [optional] |
| **details** | [**CardInfo**](CardInfo.md) |  | [optional] |
| **embossing** | [**EmbossingDetails**](EmbossingDetails.md) |  | [optional] |
| **last_updated_on** | **String** | This field contains the last updated timestamp | [optional] |
| **block_and_replace_status** | [**BlockAndReplaceStatus**](BlockAndReplaceStatus.md) |  | [optional] |
| **demographics** | [**Demographics**](Demographics.md) |  | [optional] |
| **delivered_to** | [**Address**](Address.md) |  | [optional] |
| **tokens** | [**Array&lt;CardTokensDTO&gt;**](CardTokensDTO.md) | This array contains the token details. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CardDetails.new(
  card_hash_id: dcfe0a79-9386-4b50-a1e1-7299f6bfb0c0,
  details: null,
  embossing: null,
  last_updated_on: 2021-03-12 04:16:46,
  block_and_replace_status: null,
  demographics: null,
  delivered_to: null,
  tokens: null
)
```

