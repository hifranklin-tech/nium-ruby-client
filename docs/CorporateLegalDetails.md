# NiumClient::CorporateLegalDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **registered_country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) for the country.  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **registered_date** | **String** | This field accepts the business registration date for the new corporate entity to be onboarded.  AU: Required EU: Required UK: Required SG: Required | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateLegalDetails.new(
  registered_country: null,
  registered_date: null
)
```

