# NiumClient::RegulatoryDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **regulated_trust_type** | **Array&lt;String&gt;** | The regulated trust type detail. Use [Fetch Corporate Constants API](ref:fetchcorporateconstants) for valid values. | [optional] |
| **unregulated_trust_type** | **Array&lt;String&gt;** | The unregulated trust type detail. Use [Fetch Corporate Constants API](ref:fetchcorporateconstants) for valid values. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RegulatoryDetails.new(
  regulated_trust_type: null,
  unregulated_trust_type: null
)
```

