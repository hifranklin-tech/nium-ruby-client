# NiumClient::RatesApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**aggregated_exchange_rates**](RatesApi.md#aggregated_exchange_rates) | **GET** /api/v1/exchangeRates/aggregate | Fetch historic aggregated exchange rates |
| [**exchange_rate_v2**](RatesApi.md#exchange_rate_v2) | **GET** /api/v2/exchangeRate | Exchange Rate V2 |


## aggregated_exchange_rates

> <ExchangeRatesGetResponse> aggregated_exchange_rates(source_currency_code, destination_currency_code, opts)

Fetch historic aggregated exchange rates

This API will retrieve aggregated time series of historical exchange rate.

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

api_instance = NiumClient::RatesApi.new
source_currency_code = 'source_currency_code_example' # String | This field contains the 3-letter [currency-and-country-codes](https://docs.nium.com/apis/docs/currency-and-country-codes).
destination_currency_code = 'destination_currency_code_example' # String | This field contains the 3-letter [currency-and-country-codes](https://docs.nium.com/apis/docs/currency-and-country-codes).
opts = {
  authorization: 'authorization_example', # String | 
  csrf_token: 'csrf_token_example', # String | 
  start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start timestamp used to filter the aggregated time series. Must be in the format 'yyyy-mm-ddTHH:MM:SSZ'.
  _end: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The end timestamp used to filter the aggregated time series. Must be in the format 'yyyy-mm-ddTHH:MM:SSZ'.
  window: NiumClient::Window::DAY, # Window | Specifies the field by which the results should be grouped.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Fetch historic aggregated exchange rates
  result = api_instance.aggregated_exchange_rates(source_currency_code, destination_currency_code, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling RatesApi->aggregated_exchange_rates: #{e}"
end
```

#### Using the aggregated_exchange_rates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExchangeRatesGetResponse>, Integer, Hash)> aggregated_exchange_rates_with_http_info(source_currency_code, destination_currency_code, opts)

```ruby
begin
  # Fetch historic aggregated exchange rates
  data, status_code, headers = api_instance.aggregated_exchange_rates_with_http_info(source_currency_code, destination_currency_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExchangeRatesGetResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling RatesApi->aggregated_exchange_rates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_currency_code** | **String** | This field contains the 3-letter [currency-and-country-codes](https://docs.nium.com/apis/docs/currency-and-country-codes). |  |
| **destination_currency_code** | **String** | This field contains the 3-letter [currency-and-country-codes](https://docs.nium.com/apis/docs/currency-and-country-codes). |  |
| **authorization** | **String** |  | [optional] |
| **csrf_token** | **String** |  | [optional] |
| **start** | **Time** | The start timestamp used to filter the aggregated time series. Must be in the format &#39;yyyy-mm-ddTHH:MM:SSZ&#39;. | [optional] |
| **_end** | **Time** | The end timestamp used to filter the aggregated time series. Must be in the format &#39;yyyy-mm-ddTHH:MM:SSZ&#39;. | [optional] |
| **window** | [**Window**](.md) | Specifies the field by which the results should be grouped. | [optional][default to &#39;1_day&#39;] |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**ExchangeRatesGetResponse**](ExchangeRatesGetResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## exchange_rate_v2

> <ExchangeRateV2ResponseDto> exchange_rate_v2(source_currency_code, destination_currency_code, opts)

Exchange Rate V2

This API fetches the interbank FX rate for a currency pair. Note that the rate provided does not include the Nium markup.

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

api_instance = NiumClient::RatesApi.new
source_currency_code = 'source_currency_code_example' # String | This field contains the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the source amount.
destination_currency_code = 'destination_currency_code_example' # String | This field contains the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the destination amount.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Exchange Rate V2
  result = api_instance.exchange_rate_v2(source_currency_code, destination_currency_code, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling RatesApi->exchange_rate_v2: #{e}"
end
```

#### Using the exchange_rate_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExchangeRateV2ResponseDto>, Integer, Hash)> exchange_rate_v2_with_http_info(source_currency_code, destination_currency_code, opts)

```ruby
begin
  # Exchange Rate V2
  data, status_code, headers = api_instance.exchange_rate_v2_with_http_info(source_currency_code, destination_currency_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExchangeRateV2ResponseDto>
rescue NiumClient::ApiError => e
  puts "Error when calling RatesApi->exchange_rate_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the source amount. |  |
| **destination_currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the destination amount. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ExchangeRateV2ResponseDto**](ExchangeRateV2ResponseDto.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

