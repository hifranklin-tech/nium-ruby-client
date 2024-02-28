# NiumClient::WalletFundResponseDTOPaymentMethodsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** | This field contains the name of NIUM bank account. | [optional] |
| **account_number** | **String** | This field contains the physical bank account number of NIUM. | [optional] |
| **bank_name** | **String** | This field contains the bank name to which money has to be transferred. | [optional] |
| **iban** | **String** | This field contains the IBAN that is International Bank Account Number. It is a combination of country code, check digits, bank code, sort code and account number. | [optional] |
| **sort_code** | **String** | UEN number associated with NIUM PayNow account. | [optional] |
| **type** | **String** | This field contains the type of payment method such as staticPayNow, dynamicPayNow or bankTransfer |  |
| **uen** | **String** | This field contains the UEN number associated with NIUM PayNow account. | [optional] |
| **qr_code** | **String** | This field contains the codec-base64 encoded QRCode image data. This will provide the QRCode image on decoding. This image can be read by devices such as smartphone or camera. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::WalletFundResponseDTOPaymentMethodsInner.new(
  account_name: null,
  account_number: null,
  bank_name: null,
  iban: null,
  sort_code: null,
  type: null,
  uen: null,
  qr_code: null
)
```

