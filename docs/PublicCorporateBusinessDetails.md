# NiumClient::PublicCorporateBusinessDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | [**CorporateAddresses**](CorporateAddresses.md) |  | [optional] |
| **business_name** | **String** | This field contains the name of a business. | [optional] |
| **business_registration_number** | **String** | This field accepts the business registration number of the new corporate entity to be onboarded. | [optional] |
| **business_type** | **String** | This field accepts the legal entity type of the business. The supported entity types are: Sole Trader  Private Limited Company Public Company Partnership Limited Liability Partnership Firm Government Body Associations Trust Regulated Trust Unregulated Trust  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **search_reference_id** | **String** |  | [optional] |
| **website** | **String** | This field accepts the business website link of the new corporate entity to be onboarded. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PublicCorporateBusinessDetails.new(
  addresses: null,
  business_name: null,
  business_registration_number: null,
  business_type: null,
  search_reference_id: null,
  website: null
)
```

