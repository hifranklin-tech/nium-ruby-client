# NiumClient::PaymentIdDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_name** | **String** | This field contains the bank name for the paymentId. | [optional] |
| **currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes). | [optional] |
| **unique_payer_id** | **String** | This field contains the unique email Id provided to the customer in addition to uniquePaymentId for supported regions and configuration, or else it will be null, for example, abc12_ca@nium.com. | [optional] |
| **unique_payment_id** | **String** | This field contains the virtual account number per currency provided to customers for supported regions and configuration, for example, IBAN in EU, virtual account number from Moonova in AU, or else, it will be null. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::PaymentIdDTO.new(
  bank_name: JPM_SG,
  currency_code: SGD,
  unique_payer_id: null,
  unique_payment_id: 20024397230
)
```

