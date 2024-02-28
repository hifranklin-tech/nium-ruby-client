# NiumClient::BusinessPartnerV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_entity_type** | **String** |  | [optional] |
| **business_name** | **String** |  | [optional] |
| **business_registration_number** | **String** |  | [optional] |
| **business_type** | **String** | This field contains the legal entity type of the business. | [optional] |
| **legal_details** | [**BusinessPartnerLegalDetails**](BusinessPartnerLegalDetails.md) |  | [optional] |
| **registered_address** | [**AddressV2**](AddressV2.md) |  | [optional] |
| **share_percentage** | **String** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BusinessPartnerV2.new(
  business_entity_type: null,
  business_name: null,
  business_registration_number: null,
  business_type: null,
  legal_details: null,
  registered_address: null,
  share_percentage: null
)
```

