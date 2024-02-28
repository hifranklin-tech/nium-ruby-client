# NiumClient::IdentificationDocumentDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document** | **String** | This field accepts the Base64 encoded document being uploaded. The size limit of the original document, which can be pdf, jpeg, jpg, or png, and should not exceed 2MB. It is recommended to use standard libraries for the same. For example, java.util.Base64.getEncoder().encodeToString(byte[] data);This can be used in Java. | [optional] |
| **file_name** | **String** | This field accepts the file name of the document being uploaded. | [optional] |
| **file_type** | **String** | This field accepts the file type of the document being uploaded. The valid values are jpg, jpeg, png, pdf, image/jpg, image/jpeg, image/png, and application/pdf. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::IdentificationDocumentDTO.new(
  document: null,
  file_name: null,
  file_type: null
)
```

