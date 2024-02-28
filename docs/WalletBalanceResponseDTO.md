# NiumClient::WalletBalanceResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance** | **Float** | The available amount in the pocket. | [optional] |
| **cur_symbol** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the pocket currency. | [optional] |
| **default** | **Boolean** |  | [optional] |
| **iso_code** | **String** | The [3-digit ISO numeric code](https://www.currency-iso.org/en/home/tables/table-a1.html) for the currency. | [optional] |
| **mcc_data** | [**Array&lt;MerchantCategoryResponseDTO2&gt;**](MerchantCategoryResponseDTO2.md) | The mccData is an array that contains multiple objects. Each object is a mccCode for which the pocket has restrictions. | [optional] |
| **pocket_name** | **String** | This is the name of the pocket defined under base currency. | [optional] |
| **with_holding_balance** | **Float** | The amount blocked by NIUM. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::WalletBalanceResponseDTO.new(
  balance: 10,
  cur_symbol: SGD,
  default: null,
  iso_code: 702,
  mcc_data: null,
  pocket_name: Food,
  with_holding_balance: 10
)
```

