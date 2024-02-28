# NiumClient::BusinessPartnerDetailsResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | This field contains the address line 1 of the registered address. | [optional] |
| **address_line2** | **String** | This field contains the address line 2 of the registered address. | [optional] |
| **business_entity_type** | **String** | This field contains the entity type of the business partner. The possible values are: Director Ultimate Beneficial Owner Shareholder Authorized Signatory Authorized Representative Protector Partner Trustee Settlor Members Executor | [optional] |
| **business_name** | **String** | This field contains the registered business name of the business partner. | [optional] |
| **business_type** | **String** | This field contains the legal entity type of the business. | [optional] |
| **city** | **String** | This field contains the city name of the registered address. | [optional] |
| **country** | **String** | This field contains the country name of the registered address. | [optional] |
| **postcode** | **String** | This field contains the postcode of the registered address. | [optional] |
| **reference_id** | **String** | This field contains the unique reference ID. | [optional] |
| **registered_country** | **String** | This field contains the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes). | [optional] |
| **registered_date** | **String** | This field contains the business registration date. | [optional] |
| **registration_number** | **String** | This field contains the registered business registration number of the business partner. | [optional] |
| **share_percentage** | **String** | This field contains the share percentage that the business partner or the stakeholder holds in the company. | [optional] |
| **state** | **String** | This field contains the state name of the registered address. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BusinessPartnerDetailsResponseDTO.new(
  address_line1: null,
  address_line2: null,
  business_entity_type: null,
  business_name: null,
  business_type: null,
  city: null,
  country: null,
  postcode: null,
  reference_id: null,
  registered_country: null,
  registered_date: null,
  registration_number: null,
  share_percentage: null,
  state: null
)
```

