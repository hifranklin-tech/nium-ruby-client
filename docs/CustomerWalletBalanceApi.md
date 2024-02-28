# NiumClient::CustomerWalletBalanceApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**wallet_balance**](CustomerWalletBalanceApi.md#wallet_balance) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId} | Wallet Balance |


## wallet_balance

> <Array<WalletBalanceResponseDTO>> wallet_balance(client_hash_id, customer_hash_id, wallet_hash_id, opts)

Wallet Balance

This API allows you to fetch balance for a specific wallet.

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

api_instance = NiumClient::CustomerWalletBalanceApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Wallet Balance
  result = api_instance.wallet_balance(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerWalletBalanceApi->wallet_balance: #{e}"
end
```

#### Using the wallet_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WalletBalanceResponseDTO>>, Integer, Hash)> wallet_balance_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)

```ruby
begin
  # Wallet Balance
  data, status_code, headers = api_instance.wallet_balance_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WalletBalanceResponseDTO>>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerWalletBalanceApi->wallet_balance_with_http_info: #{e}"
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

[**Array&lt;WalletBalanceResponseDTO&gt;**](WalletBalanceResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

