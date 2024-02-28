# NiumClient::UploadRfiDocumentRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rfi_response_request** | [**Array&lt;RfiResponseRequest&gt;**](RfiResponseRequest.md) | This field accepts the additional requests for information, depending upon documents required to raise RFI |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::UploadRfiDocumentRequestDto.new(
  rfi_response_request: null
)
```

