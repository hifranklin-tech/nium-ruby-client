# NiumClient::LegalDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legislation_name** | **String** | The name under which the entity is formed. | [optional] |
| **legislation_type** | **String** | The legislation type under which the government entity is formed. | [optional] |
| **listed_exchange** | **String** | The exchange where the business is publicly listed. Use [Fetch Corporate Constants API](ref:fetchcorporateconstants) for valid values. | [optional] |
| **registered_country** | **String** | The country where the business is registered. Use [Fetch Corporate Constants API](ref:fetchcorporateconstants) for valid values. | [optional] |
| **registered_date** | **String** | The date the business is registered entered in the YYYY-MM-DD format. | [optional] |
| **registration_type** | **String** | This field accepts the registration type for the entity.  AU: Optional EU: NA UK: NA SG: NA | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::LegalDetails.new(
  legislation_name: null,
  legislation_type: null,
  listed_exchange: null,
  registered_country: null,
  registered_date: null,
  registration_type: null
)
```

