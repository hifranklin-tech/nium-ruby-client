# NiumClient::CardMetaDataResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_currency_code** | **String** | This field contains the 3-letter [ISO-4217 destination currency code](doc:currency-and-country-codes) for the card billing currency. | [optional] |
| **billing_currency_minor_digits** | **String** | This field contains the number of decimal positions that should be present in any amounts for the requested card&#39;s billing currency. | [optional] |
| **card_issuer_country_code** | **String** | This field indicates the beneficiary card issuer [country code](doc:currency-and-country-codes). | [optional] |
| **card_type_code** | **String** | This field contains the code of the card type, for example, Credit, Debit, Prepaid, Charge, Deferred Debit. | [optional] |
| **fast_funds_indicator** | **String** | This field ensures if the card is eligible for fast funds that is if the funds will settle in 30 mins or less. If not eligible then typically fund will settle within 2 business days. | [optional] |
| **is_bank_supported** | **Boolean** | This field ensures if the issuer bank is supported by the card type such as Visa or geoswift. | [optional] |
| **is_card_valid** | **Boolean** | This field ensures if the card details entered is valid or not. | [optional] |
| **issuer_name** | **String** | This field contains the beneficiary card issuer name. | [optional] |
| **online_gambing_block_indicator** | **String** | This code ensures if the card can receive push-payments for online gambling payouts. If the value is \&quot;Y\&quot; then the account cannot receive gambling Push Funds (OCTs). If the value is \&quot;N\&quot; then the account can receive gambling Push Funds (OCTs). | [optional] |
| **push_funds_block_indicator** | **String** | This field ensures if the associated card can receive push-to-card disbursements or not. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CardMetaDataResponseDTO.new(
  billing_currency_code: null,
  billing_currency_minor_digits: null,
  card_issuer_country_code: null,
  card_type_code: null,
  fast_funds_indicator: null,
  is_bank_supported: null,
  is_card_valid: null,
  issuer_name: null,
  online_gambing_block_indicator: null,
  push_funds_block_indicator: null
)
```

