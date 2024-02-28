# NiumClient::RfiResponseRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | This field accepts the line1 of a customer&#39;s billing address. Maximum character limit: 40 | [optional] |
| **address_line2** | **String** | This field accepts the line2 of a customer&#39;s billing address. Maximum character limit: 40 | [optional] |
| **billing_country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](https://nium-documents.s3-eu-west-1.amazonaws.com/spend-documents/Country+Code.pdf) denoting the customer’s billing country. | [optional] |
| **city** | **String** | This field accepts the billing address city name. Maximum character limit: 30 | [optional] |
| **country** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](https://nium-documents.s3-eu-west-1.amazonaws.com/spend-documents/Country+Code.pdf) denoting the country of the customer’s billing address. It is important to pass this field if the card to be issued is to be used for GooglePay or ApplePay provisioning. | [optional] |
| **date_of_birth** | **String** | This field accepts the date of birth of a customer in YYYY-MM-DD format. | [optional] |
| **employment_status** | **String** | This field accepts the customer&#39;s employment status. This field can accept alphanumeric characters. Maximum character limit: 30 | [optional] |
| **first_name** | **String** | This field accepts the first name of a customer. Maximum character limit: 40 | [optional] |
| **gender** | **String** | This field accepts the gender of the customer. The acceptable values are:  Male  Female  Others | [optional] |
| **identification_doc** | [**RfiIdentificationDoc**](RfiIdentificationDoc.md) |  | [optional] |
| **industry_type** | **String** | This field accepts the customer&#39;s industry type. This field can accept alphanumeric characters. Maximum character limit: 30 | [optional] |
| **intended_use_of_account** | **String** | This field accepts the customer&#39;s intendedUse of account. This field can accept alphanumeric characters. Maximum character limit: 30 | [optional] |
| **is_pep** | **String** | This field will ensure either a customer is a Politically Exposed Person (PEP) or not. | [optional] |
| **last_name** | **String** | This field accepts the last name of a customer. Maximum character limit: 40 | [optional] |
| **middle_name** | **String** | This field accepts the middle name of a customer. Maximum character limit: 40 | [optional] |
| **nationality** | **String** | This field accepts the 2-letter [ISO Alpha-2 country code](https://nium-documents.s3-eu-west-1.amazonaws.com/spend-documents/Country+Code.pdf) denoting the customer’s citizenship. | [optional] |
| **postcode** | **String** | This field accepts the customer&#39;s billing ZIP code for the address. This field can accept alphanumeric characters, space, hyphen(-) and hash(#). Maximum character limit: 10 | [optional] |
| **rfi_hash_id** | **String** | This field accepts the unique UUID rfiHashId received in Customer API. |  |
| **source_of_funds** | **String** | This field accepts the customer&#39;s source of funds. This field can accept alphanumeric characters. Maximum character limit: 30 | [optional] |
| **state** | **String** | This field accepts the customer&#39;s billing ZIP code for the address. This field can accept alphanumeric characters, space and hyphen(-). Maximum character limit: 30 | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RfiResponseRequest.new(
  address_line1: null,
  address_line2: null,
  billing_country: null,
  city: null,
  country: null,
  date_of_birth: null,
  employment_status: null,
  first_name: null,
  gender: null,
  identification_doc: null,
  industry_type: null,
  intended_use_of_account: null,
  is_pep: true,
  last_name: null,
  middle_name: null,
  nationality: null,
  postcode: null,
  rfi_hash_id: null,
  source_of_funds: null,
  state: null
)
```

