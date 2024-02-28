# NiumClient::UnmaskCardResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **un_masked_card_number** | **String** | This field contains the complete 16 digit card number in plain text. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::UnmaskCardResponseDTO.new(
  un_masked_card_number: 4611350100002726
)
```

