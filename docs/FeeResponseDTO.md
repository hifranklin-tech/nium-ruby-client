# NiumClient::FeeResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_currency** | **String** | This field contains the 3-letter [ISO-4217 authorization currency code](doc:currency-and-country-codes). | [optional] |
| **fee_currency** | **String** | This field contains the 3-letter [ISO-4217 fee currency code](doc:currency-and-country-codes). | [optional] |
| **fee_name** | **String** | This field contains the name of the fee or markup. | [optional] |
| **fee_value** | **Float** | This field contains the actual value of the fee. It can be an amount or percentage. | [optional] |
| **fixed** | **Boolean** | This field determines if the fee is a fixed amount or a percentage. It is true for a fixed amount and false for a percentage. | [optional] |
| **slab_from** | **Float** | This field contains the starting point of the slab of transaction amount on which the fee is applicable. | [optional] |
| **slab_to** | **Float** | This field contains the ending point of the slab of transaction amount on which the fee is applicable. | [optional] |
| **status** | **String** | This field contains the fee status and the possible values are: Active Inactive  | [optional] |
| **threshold_fee_value** | **Float** | This field contains the value of the threshold fee. It can be fixed or percentage. | [optional] |
| **transaction_currency** | **String** | This field contains the 3-letter [ISO-4217 transaction currency code](doc:currency-and-country-codes). | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::FeeResponseDTO.new(
  auth_currency: SGD,
  fee_currency: ANY,
  fee_name: ATM_FEE,
  fee_value: 1.5,
  fixed: true,
  slab_from: 0,
  slab_to: 999999999,
  status: ACTIVE,
  threshold_fee_value: 9999,
  transaction_currency: ANY
)
```

