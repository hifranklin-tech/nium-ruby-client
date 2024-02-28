# NiumClient::Class3DSApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**passcode_enrollment_status**](Class3DSApi.md#passcode_enrollment_status) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/3ds/passcode/status | 3DS passcode enrollment status |
| [**process_oo_bcallback**](Class3DSApi.md#process_oo_bcallback) | **POST** /api/v1/client/{clientHashId}/notifications/3ds/oob/callback | Process OOB callback |
| [**process_oob_callback_v2**](Class3DSApi.md#process_oob_callback_v2) | **POST** /api/v2/client/{clientHashId}/3ds/oob/callback | 3DS OOB Callback V2 |
| [**set_passcode**](Class3DSApi.md#set_passcode) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/3ds/passcode | Add or Update passcode |


## passcode_enrollment_status

> <Array<PasscodeStatusDTO>> passcode_enrollment_status(client_hash_id, customer_hash_id, wallet_hash_id, opts)

3DS passcode enrollment status

API allows to retrieve the status of passcode enrollments for all cards associated with wallet. Results can be filtered by `cardHashId`

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

api_instance = NiumClient::Class3DSApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  card_hash_id: 'card_hash_id_example', # String | Unique card identifier generated while new/add-on card issuance.
  x_request_id: '{{$guid}}' # String | Please enter a unique UUID value
}

begin
  # 3DS passcode enrollment status
  result = api_instance.passcode_enrollment_status(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling Class3DSApi->passcode_enrollment_status: #{e}"
end
```

#### Using the passcode_enrollment_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PasscodeStatusDTO>>, Integer, Hash)> passcode_enrollment_status_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)

```ruby
begin
  # 3DS passcode enrollment status
  data, status_code, headers = api_instance.passcode_enrollment_status_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PasscodeStatusDTO>>
rescue NiumClient::ApiError => e
  puts "Error when calling Class3DSApi->passcode_enrollment_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. | [optional] |
| **x_request_id** | **String** | Please enter a unique UUID value | [optional] |

### Return type

[**Array&lt;PasscodeStatusDTO&gt;**](PasscodeStatusDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## process_oo_bcallback

> <OOBCallbackResponseDTO> process_oo_bcallback(client_hash_id, oob_callback_request_dto, opts)

Process OOB callback

API to notify Nium on success of OOB authentication

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

api_instance = NiumClient::Class3DSApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
oob_callback_request_dto = NiumClient::OOBCallbackRequestDTO.new({auth_transaction_id: 'auth_transaction_id_example', reference_number: 'reference_number_example', status_code: 'SSS000'}) # OOBCallbackRequestDTO | oobCallbackRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Process OOB callback
  result = api_instance.process_oo_bcallback(client_hash_id, oob_callback_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling Class3DSApi->process_oo_bcallback: #{e}"
end
```

#### Using the process_oo_bcallback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OOBCallbackResponseDTO>, Integer, Hash)> process_oo_bcallback_with_http_info(client_hash_id, oob_callback_request_dto, opts)

```ruby
begin
  # Process OOB callback
  data, status_code, headers = api_instance.process_oo_bcallback_with_http_info(client_hash_id, oob_callback_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OOBCallbackResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling Class3DSApi->process_oo_bcallback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **oob_callback_request_dto** | [**OOBCallbackRequestDTO**](OOBCallbackRequestDTO.md) | oobCallbackRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**OOBCallbackResponseDTO**](OOBCallbackResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## process_oob_callback_v2

> process_oob_callback_v2(client_hash_id, oob_callback_request_dto, opts)

3DS OOB Callback V2

API to notify Nium on success or failure of OOB authentication

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

api_instance = NiumClient::Class3DSApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
oob_callback_request_dto = NiumClient::OobCallbackRequestDTO.new({auth_transaction_id: 'auth_transaction_id_example', reference_number: 'reference_number_example', status_code: '001, 002'}) # OobCallbackRequestDTO | oobCallbackRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # 3DS OOB Callback V2
  api_instance.process_oob_callback_v2(client_hash_id, oob_callback_request_dto, opts)
rescue NiumClient::ApiError => e
  puts "Error when calling Class3DSApi->process_oob_callback_v2: #{e}"
end
```

#### Using the process_oob_callback_v2_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> process_oob_callback_v2_with_http_info(client_hash_id, oob_callback_request_dto, opts)

```ruby
begin
  # 3DS OOB Callback V2
  data, status_code, headers = api_instance.process_oob_callback_v2_with_http_info(client_hash_id, oob_callback_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue NiumClient::ApiError => e
  puts "Error when calling Class3DSApi->process_oob_callback_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **oob_callback_request_dto** | [**OobCallbackRequestDTO**](OobCallbackRequestDTO.md) | oobCallbackRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

nil (empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## set_passcode

> <PasscodeResponseDTO> set_passcode(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, passcode_request_dto, opts)

Add or Update passcode

API to update the 3DS passcode for a specific card.

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

api_instance = NiumClient::Class3DSApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | Unique card identifier generated while new/add-on card issuance.
passcode_request_dto = NiumClient::PasscodeRequestDTO.new({passcode: 'MTIzNDU2'}) # PasscodeRequestDTO | passcodeRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Add or Update passcode
  result = api_instance.set_passcode(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, passcode_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling Class3DSApi->set_passcode: #{e}"
end
```

#### Using the set_passcode_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PasscodeResponseDTO>, Integer, Hash)> set_passcode_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, passcode_request_dto, opts)

```ruby
begin
  # Add or Update passcode
  data, status_code, headers = api_instance.set_passcode_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, passcode_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PasscodeResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling Class3DSApi->set_passcode_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. |  |
| **passcode_request_dto** | [**PasscodeRequestDTO**](PasscodeRequestDTO.md) | passcodeRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**PasscodeResponseDTO**](PasscodeResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

