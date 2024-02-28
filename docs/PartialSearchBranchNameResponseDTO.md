# NiumClient::PartialSearchBranchNameResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **branch_name** | **String** |  | [optional] |
| **routing_code_value** | [**Array&lt;BranchNameResponseDTO&gt;**](BranchNameResponseDTO.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PartialSearchBranchNameResponseDTO.new(
  branch_name: null,
  routing_code_value: null
)
```

