# NiumClient::AddCardResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. | [optional] |
| **card_activation_status** | **String** | Card activation status values are VIRTUAL_ACTIVE and INACTIVE | [optional] |
| **masked_card_number** | **String** | This is the 16-digit masked card number in format 1234-56xx-xxxx-3456 | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AddCardResponseDTO.new(
  card_hash_id: dd0a1721-2821-48fc-bbce-6c737bc47174,
  card_activation_status: VIRTUAL_ACTIVE,
  masked_card_number: 4611-35xx-xxxx-9772
)
```

