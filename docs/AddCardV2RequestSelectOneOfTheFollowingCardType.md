# NiumClient::AddCardV2RequestSelectOneOfTheFollowingCardType

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'nium_client'

NiumClient::AddCardV2RequestSelectOneOfTheFollowingCardType.openapi_one_of
# =>
# [
#   :'AddCardRequestPHY',
#   :'AddCardRequestVIR',
#   :'AddCardRequestVIRUP2PHY'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'nium_client'

NiumClient::AddCardV2RequestSelectOneOfTheFollowingCardType.openapi_discriminator_name
# => :'card_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'nium_client'

NiumClient::AddCardV2RequestSelectOneOfTheFollowingCardType.openapi_discriminator_mapping
# =>
# {
#   :'PHY' => :'AddCardRequestPHY',
#   :'VIR' => :'AddCardRequestVIR',
#   :'VIRUP2PHY' => :'AddCardRequestVIRUP2PHY'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'nium_client'

NiumClient::AddCardV2RequestSelectOneOfTheFollowingCardType.build(data)
# => #<AddCardRequestPHY:0x00007fdd4aab02a0>

NiumClient::AddCardV2RequestSelectOneOfTheFollowingCardType.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AddCardRequestPHY`
- `AddCardRequestVIR`
- `AddCardRequestVIRUP2PHY`
- `nil` (if no type matches)

