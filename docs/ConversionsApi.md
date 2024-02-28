# NiumClient::ConversionsApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_conversion**](ConversionsApi.md#cancel_conversion) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/conversions/{conversionId}/cancel | Cancel Conversion |
| [**create_conversion**](ConversionsApi.md#create_conversion) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/conversions | Create Conversion |
| [**fetch_conversion**](ConversionsApi.md#fetch_conversion) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/conversions/{conversionId} | Fetch Conversion by id |


## cancel_conversion

> <ConversionCancelResponse> cancel_conversion(client_hash_id, customer_hash_id, wallet_hash_id, conversion_id, conversion_cancel_request, opts)

Cancel Conversion

This API allows you to cancel a conversion prior to the execution time.

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

api_instance = NiumClient::ConversionsApi.new
client_hash_id = 'client_hash_id_example' # String | Unique identifier of the client.
customer_hash_id = 'customer_hash_id_example' # String | Unique identifier of the customer.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique identifier of the wallet.
conversion_id = 'conversion_id_example' # String | 
conversion_cancel_request = NiumClient::ConversionCancelRequest.new # ConversionCancelRequest | ConversionCancelRequest
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Cancel Conversion
  result = api_instance.cancel_conversion(client_hash_id, customer_hash_id, wallet_hash_id, conversion_id, conversion_cancel_request, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ConversionsApi->cancel_conversion: #{e}"
end
```

#### Using the cancel_conversion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversionCancelResponse>, Integer, Hash)> cancel_conversion_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, conversion_id, conversion_cancel_request, opts)

```ruby
begin
  # Cancel Conversion
  data, status_code, headers = api_instance.cancel_conversion_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, conversion_id, conversion_cancel_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversionCancelResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling ConversionsApi->cancel_conversion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique identifier of the client. |  |
| **customer_hash_id** | **String** | Unique identifier of the customer. |  |
| **wallet_hash_id** | **String** | Unique identifier of the wallet. |  |
| **conversion_id** | **String** |  |  |
| **conversion_cancel_request** | [**ConversionCancelRequest**](ConversionCancelRequest.md) | ConversionCancelRequest |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ConversionCancelResponse**](ConversionCancelResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_conversion

> <ConversionCreationResponse> create_conversion(client_hash_id, customer_hash_id, wallet_hash_id, conversion_creation_request, opts)

Create Conversion

This API allows you to convert the balance from one currency to another within the same customer wallet either at the current market rate or using a previous exchange rate quote. This API allows you to select a settlement schedule for the conversion.

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

api_instance = NiumClient::ConversionsApi.new
client_hash_id = 'client_hash_id_example' # String | Unique identifier of the client.
customer_hash_id = 'customer_hash_id_example' # String | Unique identifier of the customer.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique identifier of the wallet.
conversion_creation_request = NiumClient::ConversionCreationRequest.new # ConversionCreationRequest | ConversionCreationRequest
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Create Conversion
  result = api_instance.create_conversion(client_hash_id, customer_hash_id, wallet_hash_id, conversion_creation_request, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ConversionsApi->create_conversion: #{e}"
end
```

#### Using the create_conversion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversionCreationResponse>, Integer, Hash)> create_conversion_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, conversion_creation_request, opts)

```ruby
begin
  # Create Conversion
  data, status_code, headers = api_instance.create_conversion_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, conversion_creation_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversionCreationResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling ConversionsApi->create_conversion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique identifier of the client. |  |
| **customer_hash_id** | **String** | Unique identifier of the customer. |  |
| **wallet_hash_id** | **String** | Unique identifier of the wallet. |  |
| **conversion_creation_request** | [**ConversionCreationRequest**](ConversionCreationRequest.md) | ConversionCreationRequest |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ConversionCreationResponse**](ConversionCreationResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## fetch_conversion

> <ConversionCreationResponse> fetch_conversion(client_hash_id, customer_hash_id, wallet_hash_id, conversion_id, opts)

Fetch Conversion by id

This API will retrieve an existing conversion with the conversionId.

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

api_instance = NiumClient::ConversionsApi.new
client_hash_id = 'client_hash_id_example' # String | Unique identifier of the client.
customer_hash_id = 'customer_hash_id_example' # String | Unique identifier of the customer.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique identifier of the wallet.
conversion_id = 'conversion_id_example' # String | 
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Fetch Conversion by id
  result = api_instance.fetch_conversion(client_hash_id, customer_hash_id, wallet_hash_id, conversion_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ConversionsApi->fetch_conversion: #{e}"
end
```

#### Using the fetch_conversion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversionCreationResponse>, Integer, Hash)> fetch_conversion_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, conversion_id, opts)

```ruby
begin
  # Fetch Conversion by id
  data, status_code, headers = api_instance.fetch_conversion_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, conversion_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversionCreationResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling ConversionsApi->fetch_conversion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique identifier of the client. |  |
| **customer_hash_id** | **String** | Unique identifier of the customer. |  |
| **wallet_hash_id** | **String** | Unique identifier of the wallet. |  |
| **conversion_id** | **String** |  |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ConversionCreationResponse**](ConversionCreationResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

