# NiumClient::WalletFundDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | This field is the amount in destination currency which is to be transferred. If the amount is provided, it will take precedence over sourceAmount field. | [optional] |
| **country_ip_address** | **String** | The country IP for the device by the customer for initiating the request. | [optional] |
| **currency_map** | **Hash&lt;String, Float&gt;** |  | [optional] |
| **destination_currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the destination amount. |  |
| **device_key** | **String** | Device key | [optional] |
| **funding_channel** | **String** | The value for funding channels can be prefund, bank_transfer, cards, or direct_debit. Fund wallet using prefund mode is possible as cross-currency. Fund wallet using bank_transfer mode is only possible from SGD to SGD and not cross-currency. direct_debit is only applicable for USA |  |
| **funding_instrument_expiry** | **String** | This is base64-encoded expiry date in MMYY format. This is required in case of new card addition. | [optional] |
| **funding_instrument_holder_name** | **String** | Name of the card holder as printed on the card. Maximum length of this field is 26 characters. This is required in case of new card. | [optional] |
| **funding_instrument_id** | **String** | This field is the unique 36-character funding instrument identifier. The id is a card hash when fundingChannel is cards and applicable only for existing card and not needed for a new card. The id is a bank account identifier when the funding channel is direct debit. | [optional] |
| **funding_instrument_number** | **String** | This is 16-digit Base64-encoded card number. This is required in case of new card addition. | [optional] |
| **funding_instrument_security_number** | **String** | This is base64-encoded 3-digit CVV number. This is required in case of both new and existing card. | [optional] |
| **invoice_details** | [**InvoiceDetails**](InvoiceDetails.md) |  | [optional] |
| **ip_address** | **String** | The IP address of the device used by the customer for initiating the request. | [optional] |
| **pocket_name** | **String** | This is the name of the pocket defined under base currency. | [optional] |
| **save** | **Boolean** | Save funding instrument for future purpose | [optional] |
| **session_id** | **String** | The session Id for the session of the customer for initiating the request. | [optional] |
| **source_amount** | **Float** | This field is the amount in source currency that is to be transferred. If amount field is provided, it will take precedence over sourceAmount | [optional] |
| **source_currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the source amount. |  |
| **statement_narrative** | **String** | This field allows clients to pass a narrative that they want to be displayed in the payer’s account statement when they are pulling funds using Direct Debit. The field value will be truncated at 10 chars for UK and US, and 140 chars for EU. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::WalletFundDTO.new(
  amount: 500,
  country_ip_address: 2.2.2.2,
  currency_map: null,
  destination_currency_code: SGD,
  device_key: 1234567890,
  funding_channel: BANK_TRANSFER,
  funding_instrument_expiry: null,
  funding_instrument_holder_name: John Smith,
  funding_instrument_id: null,
  funding_instrument_number: null,
  funding_instrument_security_number: null,
  invoice_details: null,
  ip_address: 192.168.1.1,
  pocket_name: DEFAULT,
  save: true,
  session_id: 1234,
  source_amount: 15.34,
  source_currency_code: SGD,
  statement_narrative: null
)
```

