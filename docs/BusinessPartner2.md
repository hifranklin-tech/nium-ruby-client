# NiumClient::BusinessPartner2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | [**Addresses**](Addresses.md) |  | [optional] |
| **business_entity_type** | **String** |  | [optional] |
| **business_in_other_countries** | **Array&lt;Object&gt;** |  | [optional] |
| **business_name** | **String** | This field accepts the registered business name of the business partner. | [optional] |
| **business_registration_number** | **String** | This field accepts the registered business registration number of the business partner. | [optional] |
| **business_type** | **String** | This field contains the legal entity type of the business. | [optional] |
| **description** | **String** |  | [optional] |
| **document_details** | [**ProductDocumentDetail**](ProductDocumentDetail.md) |  | [optional] |
| **legal_details** | [**LegalDetails**](LegalDetails.md) |  | [optional] |
| **purpose_code** | **String** |  | [optional] |
| **regulatory_details** | [**ProductRegulatoryDetails**](ProductRegulatoryDetails.md) |  | [optional] |
| **share_percentage** | **String** | This field accepts the percentage of shares held by stakeholder. | [optional] |
| **ticker** | **String** |  | [optional] |
| **trade_name** | **String** | This field accepts the Trading Name also known as Doing Business As(DBA) name. | [optional] |
| **trustee_name** | **String** |  | [optional] |
| **website** | **String** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BusinessPartner2.new(
  addresses: null,
  business_entity_type: null,
  business_in_other_countries: null,
  business_name: null,
  business_registration_number: null,
  business_type: null,
  description: null,
  document_details: null,
  legal_details: null,
  purpose_code: null,
  regulatory_details: null,
  share_percentage: null,
  ticker: null,
  trade_name: null,
  trustee_name: null,
  website: null
)
```

