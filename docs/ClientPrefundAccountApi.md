# NiumClient::ClientPrefundAccountApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**client_prefund_balances**](ClientPrefundAccountApi.md#client_prefund_balances) | **GET** /api/v1/client/{clientHashId}/balances | Client Prefund Balances |
| [**client_prefund_request**](ClientPrefundAccountApi.md#client_prefund_request) | **POST** /api/v1/client/{clientHashId}/prefund | Client Prefund Request |
| [**fetch_client_prefund_request**](ClientPrefundAccountApi.md#fetch_client_prefund_request) | **GET** /api/v1/client/{clientHashId}/prefundList | Fetch Client Prefund Request |


## client_prefund_balances

> <Array<AccountResponseDTO>> client_prefund_balances(client_hash_id, opts)

Client Prefund Balances

This API allows you to fetch the available prefund balance for a client.

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

api_instance = NiumClient::ClientPrefundAccountApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Client Prefund Balances
  result = api_instance.client_prefund_balances(client_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ClientPrefundAccountApi->client_prefund_balances: #{e}"
end
```

#### Using the client_prefund_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AccountResponseDTO>>, Integer, Hash)> client_prefund_balances_with_http_info(client_hash_id, opts)

```ruby
begin
  # Client Prefund Balances
  data, status_code, headers = api_instance.client_prefund_balances_with_http_info(client_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AccountResponseDTO>>
rescue NiumClient::ApiError => e
  puts "Error when calling ClientPrefundAccountApi->client_prefund_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Array&lt;AccountResponseDTO&gt;**](AccountResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## client_prefund_request

> <ClientPrefundResponseDTO> client_prefund_request(client_hash_id, prefund_request_dto, opts)

Client Prefund Request

This API allows our clients to raise a prefund request in the system.

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

api_instance = NiumClient::ClientPrefundAccountApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
prefund_request_dto = NiumClient::PrefundRequestDTO.new({amount: 1000, currency_code: 'SGD'}) # PrefundRequestDTO | prefundRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Client Prefund Request
  result = api_instance.client_prefund_request(client_hash_id, prefund_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ClientPrefundAccountApi->client_prefund_request: #{e}"
end
```

#### Using the client_prefund_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientPrefundResponseDTO>, Integer, Hash)> client_prefund_request_with_http_info(client_hash_id, prefund_request_dto, opts)

```ruby
begin
  # Client Prefund Request
  data, status_code, headers = api_instance.client_prefund_request_with_http_info(client_hash_id, prefund_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientPrefundResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling ClientPrefundAccountApi->client_prefund_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **prefund_request_dto** | [**PrefundRequestDTO**](PrefundRequestDTO.md) | prefundRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ClientPrefundResponseDTO**](ClientPrefundResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## fetch_client_prefund_request

> Object fetch_client_prefund_request(client_hash_id, opts)

Fetch Client Prefund Request

This API allows you to fetch the details of client prefund requests.

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

api_instance = NiumClient::ClientPrefundAccountApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client Id assigned to the client during the onboarding process.
opts = {
  amount: 'amount_example', # String | amount
  bank_reference_number: 'bank_reference_number_example', # String | bankReferenceNumber
  currency: 'currency_example', # String | currency
  end_date: 'end_date_example', # String | endDate
  order: 'order_example', # String | The sort order for the results. Acceptable values are ASC or DESC. The default order value is DESC.
  page: 56, # Integer | This API may have lot of data in response and supports pagination. Entire response data is divided into pages with size as the upper limit on the number of data. Integer values from 0 onwards are acceptable. Default page is 0.
  prefund_status: 'prefund_status_example', # String | prefundStatus
  size: 56, # Integer | The upper limit on the number of items to be fetched with each call. Integer values from 1 onwards are acceptable. Default size is 20.
  start_date: 'start_date_example', # String | startDate
  system_reference_number: 'system_reference_number_example', # String | systemReferenceNumber
  unique_payer_id: 'unique_payer_id_example', # String | uniquePayerId
  unique_payment_id: 'unique_payment_id_example', # String | uniquePaymentId
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Fetch Client Prefund Request
  result = api_instance.fetch_client_prefund_request(client_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ClientPrefundAccountApi->fetch_client_prefund_request: #{e}"
end
```

#### Using the fetch_client_prefund_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> fetch_client_prefund_request_with_http_info(client_hash_id, opts)

```ruby
begin
  # Fetch Client Prefund Request
  data, status_code, headers = api_instance.fetch_client_prefund_request_with_http_info(client_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue NiumClient::ApiError => e
  puts "Error when calling ClientPrefundAccountApi->fetch_client_prefund_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client Id assigned to the client during the onboarding process. |  |
| **amount** | **String** | amount | [optional] |
| **bank_reference_number** | **String** | bankReferenceNumber | [optional] |
| **currency** | **String** | currency | [optional] |
| **end_date** | **String** | endDate | [optional] |
| **order** | **String** | The sort order for the results. Acceptable values are ASC or DESC. The default order value is DESC. | [optional][default to &#39;DESC&#39;] |
| **page** | **Integer** | This API may have lot of data in response and supports pagination. Entire response data is divided into pages with size as the upper limit on the number of data. Integer values from 0 onwards are acceptable. Default page is 0. | [optional][default to 0] |
| **prefund_status** | **String** | prefundStatus | [optional] |
| **size** | **Integer** | The upper limit on the number of items to be fetched with each call. Integer values from 1 onwards are acceptable. Default size is 20. | [optional][default to 20] |
| **start_date** | **String** | startDate | [optional] |
| **system_reference_number** | **String** | systemReferenceNumber | [optional] |
| **unique_payer_id** | **String** | uniquePayerId | [optional] |
| **unique_payment_id** | **String** | uniquePaymentId | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

**Object**

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

