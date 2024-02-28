# NiumClient::QuotesApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_quote**](QuotesApi.md#create_quote) | **POST** /api/v1/client/{clientHashId}/quotes | Create Quote |
| [**fetch_quote**](QuotesApi.md#fetch_quote) | **GET** /api/v1/client/{clientHashId}/quotes/{quoteId} | Fetch Quote by ID |


## create_quote

> <QuoteCreationResponse> create_quote(client_hash_id, quote_creation_request, opts)

Create Quote

This API creates an FX quote for a currency pair according to the desired lock period and conversion schedule. The FX rate provided by this API includes the Nium markup and can be utilized for any FX conversion within the quote's validity period.

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

api_instance = NiumClient::QuotesApi.new
client_hash_id = 'client_hash_id_example' # String | Unique identifier of the client.
quote_creation_request = NiumClient::QuoteCreationRequest.new({source_currency_code: 'USD', destination_currency_code: 'SGD', quote_type: NiumClient::QuoteType::BALANCE_TRANSFER}) # QuoteCreationRequest | quoteCreationRequest
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Create Quote
  result = api_instance.create_quote(client_hash_id, quote_creation_request, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling QuotesApi->create_quote: #{e}"
end
```

#### Using the create_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuoteCreationResponse>, Integer, Hash)> create_quote_with_http_info(client_hash_id, quote_creation_request, opts)

```ruby
begin
  # Create Quote
  data, status_code, headers = api_instance.create_quote_with_http_info(client_hash_id, quote_creation_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuoteCreationResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling QuotesApi->create_quote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique identifier of the client. |  |
| **quote_creation_request** | [**QuoteCreationRequest**](QuoteCreationRequest.md) | quoteCreationRequest |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**QuoteCreationResponse**](QuoteCreationResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## fetch_quote

> <QuoteCreationResponse> fetch_quote(client_hash_id, quote_id, opts)

Fetch Quote by ID

This API allows to fetch a quote. A quote is used to identify the exchange rate, and associated markup and fees.

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

api_instance = NiumClient::QuotesApi.new
client_hash_id = 'client_hash_id_example' # String | Unique identifier of the client.
quote_id = 'quote_id_example' # String | 
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Fetch Quote by ID
  result = api_instance.fetch_quote(client_hash_id, quote_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling QuotesApi->fetch_quote: #{e}"
end
```

#### Using the fetch_quote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuoteCreationResponse>, Integer, Hash)> fetch_quote_with_http_info(client_hash_id, quote_id, opts)

```ruby
begin
  # Fetch Quote by ID
  data, status_code, headers = api_instance.fetch_quote_with_http_info(client_hash_id, quote_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuoteCreationResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling QuotesApi->fetch_quote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique identifier of the client. |  |
| **quote_id** | **String** |  |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**QuoteCreationResponse**](QuoteCreationResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

