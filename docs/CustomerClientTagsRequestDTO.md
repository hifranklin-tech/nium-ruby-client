# NiumClient::CustomerClientTagsRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | [**Array&lt;CustomerClientTagRequestDTO&gt;**](CustomerClientTagRequestDTO.md) | This object accepts the user defined key-value pairs. The maximum number of tags allowed is 15. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomerClientTagsRequestDTO.new(
  tags: null
)
```

