# NiumClient::PartialSearchDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | This field accepts the [2-letter ISO-2 country code](doc:currency-and-country-codes) for which routing code search is initiated. | [optional] |
| **currency_code** | **String** | This field accepts the [3-letter ISO-4217 currency code](doc:currency-and-country-codes) for which routing code search is to be initiated. | [optional] |
| **payout_method** | **String** | This field can accept the different modes of payout. This field can accept one of the following values: 1.LOCAL 2.SWIFT Default value of the parameter is LOCAL. | [optional] |
| **routing_code_type** | **String** | This field determines the routing code type for the search. The possible values are: IFSC SWIFT ACH CODE BSB CODE SORT CODE BANK CODE LOCATION ID BRANCH CODE BRANCH NAME TRANSIT NUMBER |  |
| **search_key** | **String** | This field accepts the key on which the search is initiated. The possible values for search key are: bank_name branch_name |  |
| **search_value** | **String** | This field accepts the partial or full value of the search key on which the search is initiated, for example, if search_key is bank_name, search_value could be DBS. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PartialSearchDTO.new(
  country_code: null,
  currency_code: null,
  payout_method: null,
  routing_code_type: null,
  search_key: null,
  search_value: null
)
```

