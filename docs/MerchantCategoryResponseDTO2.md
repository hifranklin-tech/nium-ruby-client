# NiumClient::MerchantCategoryResponseDTO2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description for MCC. | [optional] |
| **mcc_code** | **String** | This is four-digit Visa Merchant Category Code. | [optional] |
| **merchant_category** | **String** | NIUM categorization of MCC. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::MerchantCategoryResponseDTO2.new(
  description: Ice cream shops, Fast Food Restaurants,
  mcc_code: 5814,
  merchant_category: Food n Beverage
)
```

