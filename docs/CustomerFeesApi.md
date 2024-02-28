# NiumClient::CustomerFeesApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**charge_fee**](CustomerFeesApi.md#charge_fee) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/fees | Charge Fee |


## charge_fee

> <CustomFeeResponseDTO> charge_fee(client_hash_id, customer_hash_id, wallet_hash_id, custom_fee_request_dto, opts)

Charge Fee

This API allows you to levy custom fee.   >⚠️ WARNING   >Consult with the Nium legal & compliance team and receive approval prior to charging any customer fees. Do not use this API to charge fees without explicit approval from Nium. Reach out to your Customer Success, Sales and Solution Engineering teams at Nium for further guidance. Any fees charged must be disclosed in the required customer terms and conditions as determined by Nium legal & compliance.

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

api_instance = NiumClient::CustomerFeesApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
custom_fee_request_dto = NiumClient::CustomFeeRequestDTO.new({amount: 50, currency: 'SGD', fee_name: 'monthlyCharge_May-2022'}) # CustomFeeRequestDTO | customFeeRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Charge Fee
  result = api_instance.charge_fee(client_hash_id, customer_hash_id, wallet_hash_id, custom_fee_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerFeesApi->charge_fee: #{e}"
end
```

#### Using the charge_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFeeResponseDTO>, Integer, Hash)> charge_fee_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, custom_fee_request_dto, opts)

```ruby
begin
  # Charge Fee
  data, status_code, headers = api_instance.charge_fee_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, custom_fee_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFeeResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerFeesApi->charge_fee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **custom_fee_request_dto** | [**CustomFeeRequestDTO**](CustomFeeRequestDTO.md) | customFeeRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**CustomFeeResponseDTO**](CustomFeeResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

