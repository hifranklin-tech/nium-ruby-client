# NiumClient::EitherSourceOrDestinationAmount

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'nium_client'

NiumClient::EitherSourceOrDestinationAmount.openapi_one_of
# =>
# [
#   :'WithDestinationAmount1',
#   :'WithSourceAmount1'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'nium_client'

NiumClient::EitherSourceOrDestinationAmount.build(data)
# => #<WithDestinationAmount1:0x00007fdd4aab02a0>

NiumClient::EitherSourceOrDestinationAmount.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `WithDestinationAmount1`
- `WithSourceAmount1`
- `nil` (if no type matches)

