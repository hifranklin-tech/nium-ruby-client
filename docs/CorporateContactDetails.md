# NiumClient::CorporateContactDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_no** | **String** | This field accepts the mobile number of the stakeholder--digits only--without the country code for the new corporate entity to be onboarded.  AU: Required EU: Required UK: Required SG: Required | [optional] |
| **country_code** | **String** |  | [optional] |
| **email** | **String** | This field accepts the email address of the stakeholder for the new corporate entity to be onboarded.  AU: Required EU: Required UK: Required SG: Required | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CorporateContactDetails.new(
  contact_no: null,
  country_code: null,
  email: null
)
```

