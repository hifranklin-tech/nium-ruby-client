# NiumClient::AddCardV2ResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. | [optional] |
| **card_activation_status** | **String** | Card activation status values are VIRTUAL_ACTIVE and INACTIVE | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AddCardV2ResponseDTO.new(
  card_hash_id: dd0a1721-2821-48fc-bbce-6c737bc47174,
  card_activation_status: VIRTUAL_ACTIVE
)
```

