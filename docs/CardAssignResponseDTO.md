# NiumClient::CardAssignResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. | [optional] |
| **card_activation_status** | **String** | This field contains the card activation status. The values are VIRTUAL_ACTIVE and INACTIVE. In case of Assign Card flow, expected status is INACTIVE. | [optional] |
| **masked_card_number** | **String** | This field contains the 16-digit masked card number in format 1234-56xx-xxxx-3456. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CardAssignResponseDTO.new(
  card_hash_id: c2ed4095-f342-b7e6-3e8b-d83e8241ec86,
  card_activation_status: INACTIVE,
  masked_card_number: xxxxxxxxxxxx0830
)
```

