# NiumClient::CorporateDocumentDetails2DTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_issuance_country** | **String** | This field contains the identification issuance Country value of each uploaded document, which was provided during document upload. | [optional] |
| **identification_type** | **String** | This field contains the identification document type. The possible identification document type are: AU: Passport, Driver Licence, Medicare Number  UK &amp; EU: National ID &amp; Passport | [optional] |
| **identification_value** | **String** | This field contains the masked value of the selected identificationType. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateDocumentDetails2DTO.new(
  document_issuance_country: SG,
  identification_type: PASSPORT,
  identification_value: XXXXXXXXX
)
```

