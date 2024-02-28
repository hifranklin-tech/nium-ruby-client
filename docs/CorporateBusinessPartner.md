# NiumClient::CorporateBusinessPartner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | [**BusinessPartnerAddresses**](BusinessPartnerAddresses.md) |  | [optional] |
| **business_entity_type** | **String** | This field accepts the entity type of the business partner. The acceptable values are: Director Ultimate Beneficial Owner Shareholder Authorized Signatory Authorized Representative Protector Partner Trustee Settlor Members Executor  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **business_name** | **String** | This field accepts the registered business name of the business partner. This is required when the stakeholder(s) is a business entity  AU: Optional EU: Conditional UK: Optional SG: Optional | [optional] |
| **business_registration_number** | **String** | This field accepts the registered business registration number of the business partner. This is required when the stakeholder(s) is a business entity  AU: Optional EU: Conditional UK: Optional SG: Optional | [optional] |
| **legal_details** | [**CorporateBusinessPartnerLegalDetails**](CorporateBusinessPartnerLegalDetails.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateBusinessPartner.new(
  addresses: null,
  business_entity_type: null,
  business_name: null,
  business_registration_number: null,
  legal_details: null
)
```

