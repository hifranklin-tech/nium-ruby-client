# NiumClient::CustomerDataExternalRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country prefix code to the customer’s mobile number. |  |
| **customer_hash_id** | **String** | This field accepts the previously generated unique customer identifier of customer. | [optional] |
| **email** | **String** | This field accepts the unique email address of the customer. Maximum character limit: 60 |  |
| **mobile** | **String** | This field accepts the mobile number of the customer--digits only--without the country code. Maximum character limit: 20 |  |
| **native_language_name** | **String** | This field accepts the customer&#39;s name in native language. Maximum character limit: 40 | [optional] |
| **segment** | **String** | This field accepts the fee segment associated with a client. Maximum character limit: 64 | [optional] |
| **upgrade_request** | **Boolean** |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomerDataExternalRequestDTO.new(
  country_code: SG,
  customer_hash_id: null,
  email: john@abc.com,
  mobile: 4435544567,
  native_language_name: null,
  segment: null,
  upgrade_request: null
)
```

