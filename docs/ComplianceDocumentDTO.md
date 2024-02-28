# NiumClient::ComplianceDocumentDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identification_doc** | [**Array&lt;ComplianceIdentificationDocDTO&gt;**](ComplianceIdentificationDocDTO.md) | This field is an array which accepts document objects. Total size of the array should be less than 10 MB. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ComplianceDocumentDTO.new(
  identification_doc: null
)
```

