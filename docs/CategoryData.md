# NiumClient::CategoryData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | This object contains the valid value that can be used in the [Onboard Corporate Customer](ref:onboardcorporatecustomer) API for the selected &#x60;category&#x60; in the input query param. | [optional] |
| **description** | **String** | This object contains description of category code | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CategoryData.new(
  code: null,
  description: null
)
```

