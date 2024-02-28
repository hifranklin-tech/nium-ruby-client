# NiumClient::PurposeCodeResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | This field contains the description of the purpose of transfer. | [optional] |
| **purpose_code** | **String** | This field contains the purpose code for the remittance transaction. Refer to the [Glossary of Purpose Codes](doc:purpose-of-transfer-codes) for the list of possible values. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PurposeCodeResponseDTO.new(
  description: Medical Treatment,
  purpose_code: IR004
)
```

