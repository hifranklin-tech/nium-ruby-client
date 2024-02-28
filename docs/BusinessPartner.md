# NiumClient::BusinessPartner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | [**Addresses**](Addresses.md) |  | [optional] |
| **business_entity_type** | **String** | This field accepts the entity type of the business partner. The acceptable values are: Director Ultimate Beneficial Owner Shareholder Authorized Signatory Authorized Representative Protector Partner Trustee Settlor Members Executor  AU: Optional EU: Optional UK: Optional SG: Optional | [optional] |
| **business_name** | **String** | This field accepts the registered business name of the business partner. This is required when the stakeholder(s) is a business entity  AU: Optional EU: Conditional UK: Optional SG: Optional | [optional] |
| **business_registration_number** | **String** | This field accepts the registered business registration number of the business partner. This is required when the stakeholder(s) is a business entity  AU: Optional EU: Conditional UK: Optional SG: Optional | [optional] |
| **business_type** | **String** | This field accepts the legal entity type of the business. The supported entity types are: Sole Trader Private Limited Company Public Company Partnership Limited Liability Partnership Firm Government Body Associations Trust Regulated Trust Unregulated Trust Unincorporated Partnership This is required when the stakeholder(s) is a business entity.  AU: Optional EU: Conditional UK: Optional SG: Optional | [optional] |
| **description** | **String** |  | [optional] |
| **legal_details** | [**LegalDetails**](LegalDetails.md) |  | [optional] |
| **share_percentage** | **String** | This field accepts the share percentage that the business partner or the stakeholder holds in the company.  AU: NA EU: Optional UK: NA SG: Optional | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BusinessPartner.new(
  addresses: null,
  business_entity_type: null,
  business_name: null,
  business_registration_number: null,
  business_type: null,
  description: null,
  legal_details: null,
  share_percentage: null
)
```

