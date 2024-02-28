# NiumClient::CardsReferenceDataApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**reference_exchange_rate**](CardsReferenceDataApi.md#reference_exchange_rate) | **GET** /api/v1/client/{clientHashId}/referenceRate | Reference Exchange Rate |


## reference_exchange_rate

> <ReferenceRateResponseDto> reference_exchange_rate(card_scheme, client_hash_id, from_amount, from_currency, to_currency, opts)

Reference Exchange Rate

This API allows you to get the reference exchange rate.

### Examples

```ruby
require 'time'
require 'nium_client'
# setup authorization
NiumClient.configure do |config|
  # Configure API key authorization: default
  config.api_key['default'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['default'] = 'Bearer'
end

api_instance = NiumClient::CardsReferenceDataApi.new
card_scheme = 'card_scheme_example' # String | This field accepts the card scheme provider name: Visa Mastercard
client_hash_id = '{{clientHashId}}' # String | Unique customer identifier generated on customer creation.
from_amount = 1.2 # Float | From Amount also known as transaction amount that will be converted from the fromCurrency and to the toCurrency.
from_currency = 'from_currency_example' # String | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) of the transaction currency. Should be one of the applicable EEA currencies (EUR, BGN, HRK, CZK, DKK, HUF, PLN, RON, SEK, GBP, ISK, CHF and NOK).
to_currency = 'to_currency_example' # String | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) of the cardholder billing currency. Should be one of the applicable EEA currencies (EUR, BGN, HRK, CZK, DKK, HUF, PLN, RON, SEK, GBP, ISK, CHF and NOK)
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Reference Exchange Rate
  result = api_instance.reference_exchange_rate(card_scheme, client_hash_id, from_amount, from_currency, to_currency, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CardsReferenceDataApi->reference_exchange_rate: #{e}"
end
```

#### Using the reference_exchange_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReferenceRateResponseDto>, Integer, Hash)> reference_exchange_rate_with_http_info(card_scheme, client_hash_id, from_amount, from_currency, to_currency, opts)

```ruby
begin
  # Reference Exchange Rate
  data, status_code, headers = api_instance.reference_exchange_rate_with_http_info(card_scheme, client_hash_id, from_amount, from_currency, to_currency, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReferenceRateResponseDto>
rescue NiumClient::ApiError => e
  puts "Error when calling CardsReferenceDataApi->reference_exchange_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_scheme** | **String** | This field accepts the card scheme provider name: Visa Mastercard |  |
| **client_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **from_amount** | **Float** | From Amount also known as transaction amount that will be converted from the fromCurrency and to the toCurrency. | [default to 0] |
| **from_currency** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) of the transaction currency. Should be one of the applicable EEA currencies (EUR, BGN, HRK, CZK, DKK, HUF, PLN, RON, SEK, GBP, ISK, CHF and NOK). |  |
| **to_currency** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) of the cardholder billing currency. Should be one of the applicable EEA currencies (EUR, BGN, HRK, CZK, DKK, HUF, PLN, RON, SEK, GBP, ISK, CHF and NOK) |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**ReferenceRateResponseDto**](ReferenceRateResponseDto.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

