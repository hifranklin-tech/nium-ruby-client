# NiumClient::QuotesPreviousVersionApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exchange_rate_lockand_hold**](QuotesPreviousVersionApi.md#exchange_rate_lockand_hold) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/lockExchangeRate | Exchange Rate Lock and Hold |
| [**exchange_rate_with_markup**](QuotesPreviousVersionApi.md#exchange_rate_with_markup) | **GET** /api/v1/client/{clientHashId}/exchangeRate | Exchange Rate With Markup |


## exchange_rate_lockand_hold

> <FxHoldLockResponseContent> exchange_rate_lockand_hold(client_hash_id, customer_hash_id, destination_currency, source_currency, wallet_hash_id, opts)

Exchange Rate Lock and Hold

This API allows you to fetch exchange rate, and lock and hold the rates till a certain amount of time.

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

api_instance = NiumClient::QuotesPreviousVersionApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
destination_currency = 'destination_currency_example' # String | This field contains the [3-letter ISO-4217 currency code](doc:currency-and-country-codes) for the destination amount.
source_currency = 'source_currency_example' # String | This field contains the [3-letter ISO-4217 currency code](doc:currency-and-country-codes) for the source amount.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  additional_fx_markup: 1.2, # Float | This field is used if client wants to apply additional Fxmarkup in the exchange rate for their customer. The value should be in percentage. For example use 0.10 for 0.1% additional markup.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Exchange Rate Lock and Hold
  result = api_instance.exchange_rate_lockand_hold(client_hash_id, customer_hash_id, destination_currency, source_currency, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling QuotesPreviousVersionApi->exchange_rate_lockand_hold: #{e}"
end
```

#### Using the exchange_rate_lockand_hold_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FxHoldLockResponseContent>, Integer, Hash)> exchange_rate_lockand_hold_with_http_info(client_hash_id, customer_hash_id, destination_currency, source_currency, wallet_hash_id, opts)

```ruby
begin
  # Exchange Rate Lock and Hold
  data, status_code, headers = api_instance.exchange_rate_lockand_hold_with_http_info(client_hash_id, customer_hash_id, destination_currency, source_currency, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FxHoldLockResponseContent>
rescue NiumClient::ApiError => e
  puts "Error when calling QuotesPreviousVersionApi->exchange_rate_lockand_hold_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **destination_currency** | **String** | This field contains the [3-letter ISO-4217 currency code](doc:currency-and-country-codes) for the destination amount. |  |
| **source_currency** | **String** | This field contains the [3-letter ISO-4217 currency code](doc:currency-and-country-codes) for the source amount. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **additional_fx_markup** | **Float** | This field is used if client wants to apply additional Fxmarkup in the exchange rate for their customer. The value should be in percentage. For example use 0.10 for 0.1% additional markup. | [optional][default to 0] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**FxHoldLockResponseContent**](FxHoldLockResponseContent.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_rate_with_markup

> <ExchangeRateV2ResponseDto> exchange_rate_with_markup(client_hash_id, source_currency_code, destination_currency_code, opts)

Exchange Rate With Markup

This API fetches the exchange rate between source currency and destination currency. If either source or destination amount is provided, the equivalent amount will also be returned. Note that you may not send both sourceAmount and destinationAmount as query parameters together. If both are provided, sourceAmount shall be taken for conversion.

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

api_instance = NiumClient::QuotesPreviousVersionApi.new
client_hash_id = '{{clientHashId}}' # String | Unique customer identifier generated on customer creation.
source_currency_code = 'source_currency_code_example' # String | This field contains the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the source amount.
destination_currency_code = 'destination_currency_code_example' # String | This field contains the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the destination amount.
opts = {
  source_amount: 1.2, # Float | An amount to be converted. This field takes precedence over destinationAmount, in case both are provided.
  destination_amount: 1.2, # Float | An amount to which the source is converted. It can be used to find the necessary source amount value. If both sourceAmount and destinationAmount are provided, this field is ignored.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Exchange Rate With Markup
  result = api_instance.exchange_rate_with_markup(client_hash_id, source_currency_code, destination_currency_code, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling QuotesPreviousVersionApi->exchange_rate_with_markup: #{e}"
end
```

#### Using the exchange_rate_with_markup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExchangeRateV2ResponseDto>, Integer, Hash)> exchange_rate_with_markup_with_http_info(client_hash_id, source_currency_code, destination_currency_code, opts)

```ruby
begin
  # Exchange Rate With Markup
  data, status_code, headers = api_instance.exchange_rate_with_markup_with_http_info(client_hash_id, source_currency_code, destination_currency_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExchangeRateV2ResponseDto>
rescue NiumClient::ApiError => e
  puts "Error when calling QuotesPreviousVersionApi->exchange_rate_with_markup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **source_currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the source amount. |  |
| **destination_currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the destination amount. |  |
| **source_amount** | **Float** | An amount to be converted. This field takes precedence over destinationAmount, in case both are provided. | [optional] |
| **destination_amount** | **Float** | An amount to which the source is converted. It can be used to find the necessary source amount value. If both sourceAmount and destinationAmount are provided, this field is ignored. | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ExchangeRateV2ResponseDto**](ExchangeRateV2ResponseDto.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

