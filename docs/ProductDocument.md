# NiumClient::ProductDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document** | **String** | This field accepts the Base64 encoded document to be uploaded.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **file_name** | **String** | This field accepts the file name of the document to be uploaded.  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **file_type** | **String** | This field accepts the file type of the document to be uploaded. The valid values are: jpg jpeg png pdf image/jpg image/jpeg image/png application/pdf  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ProductDocument.new(
  document: null,
  file_name: null,
  file_type: null
)
```

