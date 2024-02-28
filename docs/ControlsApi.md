# NiumClient::ControlsApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_card_limits**](ControlsApi.md#get_card_limits) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/limits | Fetch Card Limits |
| [**get_channel_restriction**](ControlsApi.md#get_channel_restriction) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/channels | Get Channel Restriction |
| [**get_mcc_channel_restrictions**](ControlsApi.md#get_mcc_channel_restrictions) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/channels/mcc | Get MCC Channel Restrictions |
| [**limits_for_all_cards_for_a_customer**](ControlsApi.md#limits_for_all_cards_for_a_customer) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/limits | Limits For All Cards For A Customer |
| [**set_card_limits**](ControlsApi.md#set_card_limits) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/limits | Card Limits |
| [**update_channel_restriction**](ControlsApi.md#update_channel_restriction) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/channels | Update Channel Restriction |
| [**update_mcc_channel_restrictions**](ControlsApi.md#update_mcc_channel_restrictions) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/channels/mcc | Update MCC Channel Restrictions |


## get_card_limits

> <TransactionLimitsDTO> get_card_limits(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)

Fetch Card Limits

This API allows you to fetch card limits.

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

api_instance = NiumClient::ControlsApi.new
card_hash_id = 'card_hash_id_example' # String | Unique card identifier generated while new/add-on card issuance.
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Fetch Card Limits
  result = api_instance.get_card_limits(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ControlsApi->get_card_limits: #{e}"
end
```

#### Using the get_card_limits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionLimitsDTO>, Integer, Hash)> get_card_limits_with_http_info(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)

```ruby
begin
  # Fetch Card Limits
  data, status_code, headers = api_instance.get_card_limits_with_http_info(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionLimitsDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling ControlsApi->get_card_limits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**TransactionLimitsDTO**](TransactionLimitsDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_channel_restriction

> <ApiResponseOfTransactionChannelsResponseDTO> get_channel_restriction(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)

Get Channel Restriction

This API will get the restriction set at card level for all the channels, for example, instore, online, ATM, cross border, and magnetic stripe.

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

api_instance = NiumClient::ControlsApi.new
card_hash_id = 'card_hash_id_example' # String | Unique card identifier generated while new/add-on card issuance.
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Get Channel Restriction
  result = api_instance.get_channel_restriction(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ControlsApi->get_channel_restriction: #{e}"
end
```

#### Using the get_channel_restriction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiResponseOfTransactionChannelsResponseDTO>, Integer, Hash)> get_channel_restriction_with_http_info(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)

```ruby
begin
  # Get Channel Restriction
  data, status_code, headers = api_instance.get_channel_restriction_with_http_info(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiResponseOfTransactionChannelsResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling ControlsApi->get_channel_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ApiResponseOfTransactionChannelsResponseDTO**](ApiResponseOfTransactionChannelsResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mcc_channel_restrictions

> <MCCRestrictionDTO> get_mcc_channel_restrictions(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)

Get MCC Channel Restrictions

This API allows you to fetch MCC based channel restrictions at the card level.

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

api_instance = NiumClient::ControlsApi.new
card_hash_id = 'card_hash_id_example' # String | Unique card identifier generated while new/add-on card issuance.
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Get MCC Channel Restrictions
  result = api_instance.get_mcc_channel_restrictions(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ControlsApi->get_mcc_channel_restrictions: #{e}"
end
```

#### Using the get_mcc_channel_restrictions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MCCRestrictionDTO>, Integer, Hash)> get_mcc_channel_restrictions_with_http_info(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)

```ruby
begin
  # Get MCC Channel Restrictions
  data, status_code, headers = api_instance.get_mcc_channel_restrictions_with_http_info(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MCCRestrictionDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling ControlsApi->get_mcc_channel_restrictions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**MCCRestrictionDTO**](MCCRestrictionDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## limits_for_all_cards_for_a_customer

> <TransactionWalletLimitsDTO> limits_for_all_cards_for_a_customer(client_hash_id, customer_hash_id, wallet_hash_id, opts)

Limits For All Cards For A Customer

This API allows you to fetch card level limits for all cards belonging to a customer.

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

api_instance = NiumClient::ControlsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Limits For All Cards For A Customer
  result = api_instance.limits_for_all_cards_for_a_customer(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ControlsApi->limits_for_all_cards_for_a_customer: #{e}"
end
```

#### Using the limits_for_all_cards_for_a_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionWalletLimitsDTO>, Integer, Hash)> limits_for_all_cards_for_a_customer_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)

```ruby
begin
  # Limits For All Cards For A Customer
  data, status_code, headers = api_instance.limits_for_all_cards_for_a_customer_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionWalletLimitsDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling ControlsApi->limits_for_all_cards_for_a_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**TransactionWalletLimitsDTO**](TransactionWalletLimitsDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_card_limits

> <WalletApiResponse2> set_card_limits(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, transaction_limits_dto, opts)

Card Limits

This API allows you to set card limits.

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

api_instance = NiumClient::ControlsApi.new
card_hash_id = 'card_hash_id_example' # String | Unique card identifier generated while new/add-on card issuance.
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
transaction_limits_dto = NiumClient::TransactionLimitsDTO.new({transaction_limits: [NiumClient::TransactionLimitDTO.new({additional_percentage: 10, status: 'Active', type: 'PER_TRANSACTION_AMOUNT_LIMIT', value: '90.0'})]}) # TransactionLimitsDTO | transactionLimitsDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Card Limits
  result = api_instance.set_card_limits(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, transaction_limits_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ControlsApi->set_card_limits: #{e}"
end
```

#### Using the set_card_limits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletApiResponse2>, Integer, Hash)> set_card_limits_with_http_info(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, transaction_limits_dto, opts)

```ruby
begin
  # Card Limits
  data, status_code, headers = api_instance.set_card_limits_with_http_info(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, transaction_limits_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletApiResponse2>
rescue NiumClient::ApiError => e
  puts "Error when calling ControlsApi->set_card_limits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **transaction_limits_dto** | [**TransactionLimitsDTO**](TransactionLimitsDTO.md) | transactionLimitsDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**WalletApiResponse2**](WalletApiResponse2.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_channel_restriction

> <WalletApiResponseOfstring> update_channel_restriction(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, channel_action_request_dto, opts)

Update Channel Restriction

This API will restrict transaction at card level for a given channel, for example, in instore, online, ATM, cross border and magnetic stripe.

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

api_instance = NiumClient::ControlsApi.new
card_hash_id = 'card_hash_id_example' # String | Unique card identifier generated while new/add-on card issuance.
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
channel_action_request_dto = NiumClient::ChannelActionRequestDTO.new({action: 'BLOCK', channel: 'IN_STORE'}) # ChannelActionRequestDTO | channelActionRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Update Channel Restriction
  result = api_instance.update_channel_restriction(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, channel_action_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ControlsApi->update_channel_restriction: #{e}"
end
```

#### Using the update_channel_restriction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletApiResponseOfstring>, Integer, Hash)> update_channel_restriction_with_http_info(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, channel_action_request_dto, opts)

```ruby
begin
  # Update Channel Restriction
  data, status_code, headers = api_instance.update_channel_restriction_with_http_info(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, channel_action_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletApiResponseOfstring>
rescue NiumClient::ApiError => e
  puts "Error when calling ControlsApi->update_channel_restriction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **channel_action_request_dto** | [**ChannelActionRequestDTO**](ChannelActionRequestDTO.md) | channelActionRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**WalletApiResponseOfstring**](WalletApiResponseOfstring.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_mcc_channel_restrictions

> <WalletApiResponse2> update_mcc_channel_restrictions(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, mcc_restriction_dto, opts)

Update MCC Channel Restrictions

This API allows you to create MCC based channel restrictions at the card level.

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

api_instance = NiumClient::ControlsApi.new
card_hash_id = 'card_hash_id_example' # String | Unique card identifier generated while new/add-on card issuance.
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
mcc_restriction_dto = NiumClient::MCCRestrictionDTO.new({description: 'Restrict Above MCC Codes', merchant_category_codes: ["3547"]}) # MCCRestrictionDTO | The API will work as below: • If the status is Active and channelStrategy is WHITE_LIST, then the MCC in the list only gets processed and the rest will be blocked • If the status is Inactive then the MCC whitelist restriction will be Inactive. • If the status is Active and channelStrategy is BLACK_LIST then only the MCC in the list will get blocked and the rest will be allowed. • If the status is Inactive then the MCC blacklist restriction will be Inactive • Either blacklist or whitelist can be enabled at one point in time.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Update MCC Channel Restrictions
  result = api_instance.update_mcc_channel_restrictions(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, mcc_restriction_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ControlsApi->update_mcc_channel_restrictions: #{e}"
end
```

#### Using the update_mcc_channel_restrictions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletApiResponse2>, Integer, Hash)> update_mcc_channel_restrictions_with_http_info(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, mcc_restriction_dto, opts)

```ruby
begin
  # Update MCC Channel Restrictions
  data, status_code, headers = api_instance.update_mcc_channel_restrictions_with_http_info(card_hash_id, client_hash_id, customer_hash_id, wallet_hash_id, mcc_restriction_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletApiResponse2>
rescue NiumClient::ApiError => e
  puts "Error when calling ControlsApi->update_mcc_channel_restrictions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **mcc_restriction_dto** | [**MCCRestrictionDTO**](MCCRestrictionDTO.md) | The API will work as below: • If the status is Active and channelStrategy is WHITE_LIST, then the MCC in the list only gets processed and the rest will be blocked • If the status is Inactive then the MCC whitelist restriction will be Inactive. • If the status is Active and channelStrategy is BLACK_LIST then only the MCC in the list will get blocked and the rest will be allowed. • If the status is Inactive then the MCC blacklist restriction will be Inactive • Either blacklist or whitelist can be enabled at one point in time. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**WalletApiResponse2**](WalletApiResponse2.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

