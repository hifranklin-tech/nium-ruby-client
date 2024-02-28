# NiumClient::BankRoutingInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | This field accepts the routing code type. | [optional] |
| **value** | **String** | This field accepts the routing code value 1.  for example  ADCBINBB or ADCBINBB123 for SWIFT,  SBIN0000058 for IFSC,  100000 for SORT CODE,  111000025 for ACH CODE,  012515 for BSB CODE,  151 for BANK CODE. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BankRoutingInfo.new(
  type: null,
  value: null
)
```

