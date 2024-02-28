# NiumClient::Document

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document** | **String** | The document saved as a base64 encoded string. | [optional] |
| **file_name** | **String** | The name of the file. | [optional] |
| **file_type** | **String** | The file type. Valid types are &#x60;application/pdf&#x60;, &#x60;image/jpeg&#x60;, &#x60;image/jpg&#x60;, &#x60;image/png&#x60;, &#x60;jpeg&#x60;, &#x60;jpg&#x60;, and &#x60;png&#x60;. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Document.new(
  document: null,
  file_name: null,
  file_type: null
)
```

