# NiumClient::ContactDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_no** | **String** | This field accepts the contact number of the applicant. | [optional] |
| **country_code** | **String** | This field accepts the 2 letter country code of the applicant. Use the [Fetch Corporate Constants API](ref:fetchcorporateconstants) to get the list of valid country codes. | [optional] |
| **email** | **String** | This field accepts the email of the applicant. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ContactDetails.new(
  contact_no: null,
  country_code: null,
  email: null
)
```

