# NiumClient::RegenerateKYCURL400Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'nium_client'

NiumClient::RegenerateKYCURL400Response.openapi_one_of
# =>
# [
#   :'ApplicationCommonResponse',
#   :'CommonResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'nium_client'

NiumClient::RegenerateKYCURL400Response.build(data)
# => #<ApplicationCommonResponse:0x00007fdd4aab02a0>

NiumClient::RegenerateKYCURL400Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ApplicationCommonResponse`
- `CommonResponse`
- `nil` (if no type matches)

