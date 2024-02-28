# NiumClient::PasscodeStatusDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. | [optional] |
| **passcode_enrolled** | **Boolean** | Passcode enrollment status | [optional] |
| **created_date_time** | **String** | Passcode enrollment created date and time | [optional] |
| **updated_date_time** | **String** | Passcode enrollment updated date and time | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PasscodeStatusDTO.new(
  card_hash_id: c1dd9515-eac5-43ea-807c-7d6bdb6259af,
  passcode_enrolled: true,
  created_date_time: 2022-11-22T11:55:08.687Z,
  updated_date_time: 2022-11-23T10:55:08.687Z
)
```

