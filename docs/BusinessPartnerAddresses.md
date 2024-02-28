# NiumClient::BusinessPartnerAddresses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_address** | [**BusinessAddress**](BusinessAddress.md) |  | [optional] |
| **registered_address** | [**CorporateRegisteredAddress**](CorporateRegisteredAddress.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BusinessPartnerAddresses.new(
  business_address: null,
  registered_address: null
)
```

