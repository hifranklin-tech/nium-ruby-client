# NiumClient::ProductRegulatoryDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **regulated_trust_type** | **Array&lt;String&gt;** | This array accepts regulated trust type details. The possible values are as follows: ASIC - Registered Managed Investment Scheme MIS - Unregistered Managed Investment Scheme Regulated under a Commonwealth statutory regulator Government Superannuation Fund This field is required in case the region is AU and entity type [refer businessDetails.businessType] is a Regulated Trust.  AU: Optional EU: NA UK: NA SG: Optional | [optional] |
| **unregulated_trust_type** | **Array&lt;String&gt;** | This array accepts unregulated trust type details. The possible values are as follows: Family Trust Charitable Trust Testamentary Trust Unit Trust Other Type This field is required in case the region is AU and entity type [refer businessDetails.businessType] is an Unregulated Trust  AU: Optional EU: NA UK: NA SG: NA | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ProductRegulatoryDetails.new(
  regulated_trust_type: null,
  unregulated_trust_type: null
)
```

