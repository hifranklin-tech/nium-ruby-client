# NiumClient::SecurityApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**fetch_atm_pin**](SecurityApi.md#fetch_atm_pin) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/pin | Fetch ATM Pin |
| [**fetch_card_data_encrypted_v2**](SecurityApi.md#fetch_card_data_encrypted_v2) | **GET** /api/v2/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/retrieve | Fetch card data encrypted |
| [**fetch_cvv2**](SecurityApi.md#fetch_cvv2) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/cvv | Fetch CVV2 |
| [**fetch_pin_status**](SecurityApi.md#fetch_pin_status) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/pin/status | Fetch Pin Status |
| [**set_reset_pin**](SecurityApi.md#set_reset_pin) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/pin | Set/Reset PIN |
| [**unblock_card_pin**](SecurityApi.md#unblock_card_pin) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/pin/unblock | Unblock PIN |
| [**unmask_card**](SecurityApi.md#unmask_card) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/unmask | Unmask Card |


## fetch_atm_pin

> <FetchPinResponseDTO> fetch_atm_pin(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

Fetch ATM Pin

This API allows you to fetch the base-64 encoded ATM PIN for physical cards and virtual upgrade to physical in the production environment. This API does not work for virtual cards. This is allowed only for the EU and UK cards.

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

api_instance = NiumClient::SecurityApi.new
client_hash_id = '{{clientHashId}}' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | The unique card identifier generated while new/add-on card issuance.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Fetch ATM Pin
  result = api_instance.fetch_atm_pin(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling SecurityApi->fetch_atm_pin: #{e}"
end
```

#### Using the fetch_atm_pin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FetchPinResponseDTO>, Integer, Hash)> fetch_atm_pin_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

```ruby
begin
  # Fetch ATM Pin
  data, status_code, headers = api_instance.fetch_atm_pin_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FetchPinResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling SecurityApi->fetch_atm_pin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | The unique card identifier generated while new/add-on card issuance. |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**FetchPinResponseDTO**](FetchPinResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## fetch_card_data_encrypted_v2

> <RetrieveCardDetailsResponseDTO> fetch_card_data_encrypted_v2(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

Fetch card data encrypted

This API allows you to fetch the unmasked card number, CVV2 and expiry (encrypted) for a card

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

api_instance = NiumClient::SecurityApi.new
client_hash_id = 'client_hash_id_example' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | The unique card identifier generated while new/add-on card issuance.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Fetch card data encrypted
  result = api_instance.fetch_card_data_encrypted_v2(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling SecurityApi->fetch_card_data_encrypted_v2: #{e}"
end
```

#### Using the fetch_card_data_encrypted_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveCardDetailsResponseDTO>, Integer, Hash)> fetch_card_data_encrypted_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

```ruby
begin
  # Fetch card data encrypted
  data, status_code, headers = api_instance.fetch_card_data_encrypted_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveCardDetailsResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling SecurityApi->fetch_card_data_encrypted_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | The unique card identifier generated while new/add-on card issuance. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**RetrieveCardDetailsResponseDTO**](RetrieveCardDetailsResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## fetch_cvv2

> <CvvResponseDTO> fetch_cvv2(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

Fetch CVV2

This API allows you to fetch the base-64 encoded CVV2 and expiry for a card.   >⚠️ WARNING   >This API version is deprecated. Eventually, a deprecated API version becomes unsupported. [Fetch Card Data Encrypted](ref:fetchcarddataencryptedv2) is the latest version of this API.

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

api_instance = NiumClient::SecurityApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | Unique card identifier generated while new/add-on card issuance.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Fetch CVV2
  result = api_instance.fetch_cvv2(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling SecurityApi->fetch_cvv2: #{e}"
end
```

#### Using the fetch_cvv2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CvvResponseDTO>, Integer, Hash)> fetch_cvv2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

```ruby
begin
  # Fetch CVV2
  data, status_code, headers = api_instance.fetch_cvv2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CvvResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling SecurityApi->fetch_cvv2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**CvvResponseDTO**](CvvResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## fetch_pin_status

> <FetchPinStatusResponseDTO> fetch_pin_status(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

Fetch Pin Status

This API allows you to fetch the PIN status of an active card.

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

api_instance = NiumClient::SecurityApi.new
client_hash_id = 'client_hash_id_example' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | The unique card identifier generated while new/add-on card issuance.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Fetch Pin Status
  result = api_instance.fetch_pin_status(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling SecurityApi->fetch_pin_status: #{e}"
end
```

#### Using the fetch_pin_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FetchPinStatusResponseDTO>, Integer, Hash)> fetch_pin_status_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

```ruby
begin
  # Fetch Pin Status
  data, status_code, headers = api_instance.fetch_pin_status_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FetchPinStatusResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling SecurityApi->fetch_pin_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | The unique card identifier generated while new/add-on card issuance. |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**FetchPinStatusResponseDTO**](FetchPinStatusResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## set_reset_pin

> <PinUpdateResponseDTO> set_reset_pin(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, pin_update_request_dto, opts)

Set/Reset PIN

This API allows you to set a new PIN or change the PIN for a card in the production environment. This API only applies to a physical card or a virtual card upgraded to a physical card. This is allowed only for cards issued in APAC, not for EU/UK cards.

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

api_instance = NiumClient::SecurityApi.new
client_hash_id = '{{clientHashId}}' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | The unique card identifier generated while new/add-on card issuance.
pin_update_request_dto = NiumClient::PinUpdateRequestDTO.new({pin_block: 'MTA0NzM='}) # PinUpdateRequestDTO | pinUpdate
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Set/Reset PIN
  result = api_instance.set_reset_pin(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, pin_update_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling SecurityApi->set_reset_pin: #{e}"
end
```

#### Using the set_reset_pin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PinUpdateResponseDTO>, Integer, Hash)> set_reset_pin_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, pin_update_request_dto, opts)

```ruby
begin
  # Set/Reset PIN
  data, status_code, headers = api_instance.set_reset_pin_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, pin_update_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PinUpdateResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling SecurityApi->set_reset_pin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | The unique card identifier generated while new/add-on card issuance. |  |
| **pin_update_request_dto** | [**PinUpdateRequestDTO**](PinUpdateRequestDTO.md) | pinUpdate |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**PinUpdateResponseDTO**](PinUpdateResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## unblock_card_pin

> <PinUpdateResponseDTO> unblock_card_pin(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

Unblock PIN

This API allows you to unblock PIN and reset retry count for a card. This API is only applicable for the APAC region.

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

api_instance = NiumClient::SecurityApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | Unique card identifier generated while new/add-on card issuance.
opts = {
  x_request_id: '{{$guid}}' # String | Please enter a unique UUID value
}

begin
  # Unblock PIN
  result = api_instance.unblock_card_pin(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling SecurityApi->unblock_card_pin: #{e}"
end
```

#### Using the unblock_card_pin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PinUpdateResponseDTO>, Integer, Hash)> unblock_card_pin_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

```ruby
begin
  # Unblock PIN
  data, status_code, headers = api_instance.unblock_card_pin_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PinUpdateResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling SecurityApi->unblock_card_pin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. |  |
| **x_request_id** | **String** | Please enter a unique UUID value | [optional] |

### Return type

[**PinUpdateResponseDTO**](PinUpdateResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## unmask_card

> <UnmaskCardResponseDTO> unmask_card(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

Unmask Card

This API allows you to unmask a card number before using it for an e-commerce transaction.   >⚠️ WARNING   >This API version is deprecated. Eventually, a deprecated API version becomes unsupported. [Fetch Card Data Encrypted](ref:fetchcarddataencryptedv2) is the latest version of this API.

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

api_instance = NiumClient::SecurityApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | Unique card identifier generated while new/add-on card issuance.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Unmask Card
  result = api_instance.unmask_card(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling SecurityApi->unmask_card: #{e}"
end
```

#### Using the unmask_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnmaskCardResponseDTO>, Integer, Hash)> unmask_card_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

```ruby
begin
  # Unmask Card
  data, status_code, headers = api_instance.unmask_card_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnmaskCardResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling SecurityApi->unmask_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**UnmaskCardResponseDTO**](UnmaskCardResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*

