# NiumClient::ClientSettingsApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**client_details**](ClientSettingsApi.md#client_details) | **GET** /api/v1/client/{clientHashId} | Client Details |
| [**fee_details**](ClientSettingsApi.md#fee_details) | **GET** /api/v2/client/{clientHashId}/fees | Fee Details |


## client_details

> <ClientDetailResponseDTO2> client_details(client_hash_id, opts)

Client Details

This API will help you to fetch the configuration details of a client.

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

api_instance = NiumClient::ClientSettingsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Client Details
  result = api_instance.client_details(client_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ClientSettingsApi->client_details: #{e}"
end
```

#### Using the client_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientDetailResponseDTO2>, Integer, Hash)> client_details_with_http_info(client_hash_id, opts)

```ruby
begin
  # Client Details
  data, status_code, headers = api_instance.client_details_with_http_info(client_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientDetailResponseDTO2>
rescue NiumClient::ApiError => e
  puts "Error when calling ClientSettingsApi->client_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ClientDetailResponseDTO2**](ClientDetailResponseDTO2.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fee_details

> <Array<ClientFeeDetailsResponseDTO>> fee_details(client_hash_id, opts)

Fee Details

This API provides all the fees that have been set at the client level by NIUM. Refer to the following [Fees User Guide](doc:fees) for the Glossary of Fees for pre-defined fees supported on the system

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

api_instance = NiumClient::ClientSettingsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Fee Details
  result = api_instance.fee_details(client_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ClientSettingsApi->fee_details: #{e}"
end
```

#### Using the fee_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ClientFeeDetailsResponseDTO>>, Integer, Hash)> fee_details_with_http_info(client_hash_id, opts)

```ruby
begin
  # Fee Details
  data, status_code, headers = api_instance.fee_details_with_http_info(client_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ClientFeeDetailsResponseDTO>>
rescue NiumClient::ApiError => e
  puts "Error when calling ClientSettingsApi->fee_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Array&lt;ClientFeeDetailsResponseDTO&gt;**](ClientFeeDetailsResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

