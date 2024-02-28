# NiumClient::SimulatorsApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**simulate_authorization**](SimulatorsApi.md#simulate_authorization) | **POST** /api/v1/txn | Simulate Authorize Card Transaction |
| [**simulate_clearing**](SimulatorsApi.md#simulate_clearing) | **POST** /api/v1/settlement/run | Simulate Settlement Transaction |


## simulate_authorization

> <LocalIsoResponse> simulate_authorization(local_iso_request, opts)

Simulate Authorize Card Transaction

This API is used to simulate the `Authorize` or `Authorization` card transaction type.

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

api_instance = NiumClient::SimulatorsApi.new
local_iso_request = NiumClient::LocalIsoRequest.new # LocalIsoRequest | message
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Simulate Authorize Card Transaction
  result = api_instance.simulate_authorization(local_iso_request, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling SimulatorsApi->simulate_authorization: #{e}"
end
```

#### Using the simulate_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LocalIsoResponse>, Integer, Hash)> simulate_authorization_with_http_info(local_iso_request, opts)

```ruby
begin
  # Simulate Authorize Card Transaction
  data, status_code, headers = api_instance.simulate_authorization_with_http_info(local_iso_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LocalIsoResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling SimulatorsApi->simulate_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **local_iso_request** | [**LocalIsoRequest**](LocalIsoRequest.md) | message |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**LocalIsoResponse**](LocalIsoResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json;charset=UTF-8
- **Accept**: application/json;charset=UTF-8


## simulate_clearing

> String simulate_clearing(settlement_request_dto, opts)

Simulate Settlement Transaction

This API can be used to run simulation of a given settlement transaction

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

api_instance = NiumClient::SimulatorsApi.new
settlement_request_dto = NiumClient::SettlementRequestDTO.new # SettlementRequestDTO | settlementRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Simulate Settlement Transaction
  result = api_instance.simulate_clearing(settlement_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling SimulatorsApi->simulate_clearing: #{e}"
end
```

#### Using the simulate_clearing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> simulate_clearing_with_http_info(settlement_request_dto, opts)

```ruby
begin
  # Simulate Settlement Transaction
  data, status_code, headers = api_instance.simulate_clearing_with_http_info(settlement_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue NiumClient::ApiError => e
  puts "Error when calling SimulatorsApi->simulate_clearing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settlement_request_dto** | [**SettlementRequestDTO**](SettlementRequestDTO.md) | settlementRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

**String**

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

