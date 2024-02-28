# NiumClient::WalletToWalletTransfersApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**p2_p_transfer**](WalletToWalletTransfersApi.md#p2_p_transfer) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/p2pTransfer | P2P Transfer |
| [**wallet_transfer**](WalletToWalletTransfersApi.md#wallet_transfer) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/transfers | Wallet to Wallet Transfer |


## p2_p_transfer

> <P2PTransferResponse> p2_p_transfer(client_hash_id, customer_hash_id, wallet_hash_id, p2_p_transfer_dto, opts)

P2P Transfer

This API allows you to transfer money from one wallet to another wallet within the same client family.   >⚠️ WARNING   >This API version is deprecated. Eventually, a deprecated API version becomes unsupported. Use the [Wallet To Wallet Transfer](ref:wallettransfer) API to achieve the same functionality.

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

api_instance = NiumClient::WalletToWalletTransfersApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
p2_p_transfer_dto = NiumClient::P2PTransferDTO.new({amount: 50, currency_code: 'SGD', destination_wallet_hash_id: 'c69f684f-a306-4c4a-8daa-1e91ce7c85f8'}) # P2PTransferDTO | p2pTransferDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # P2P Transfer
  result = api_instance.p2_p_transfer(client_hash_id, customer_hash_id, wallet_hash_id, p2_p_transfer_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling WalletToWalletTransfersApi->p2_p_transfer: #{e}"
end
```

#### Using the p2_p_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<P2PTransferResponse>, Integer, Hash)> p2_p_transfer_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, p2_p_transfer_dto, opts)

```ruby
begin
  # P2P Transfer
  data, status_code, headers = api_instance.p2_p_transfer_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, p2_p_transfer_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <P2PTransferResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling WalletToWalletTransfersApi->p2_p_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **p2_p_transfer_dto** | [**P2PTransferDTO**](P2PTransferDTO.md) | p2pTransferDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**P2PTransferResponse**](P2PTransferResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## wallet_transfer

> <FundTransferResponse> wallet_transfer(client_hash_id, customer_hash_id, wallet_hash_id, fund_transfer_request_dto, opts)

Wallet to Wallet Transfer

This API allows you to transfer the money from one wallet to another wallet for customers belonging to different client.

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

api_instance = NiumClient::WalletToWalletTransfersApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique source wallet identifier generated simultaneously with customer creation.
fund_transfer_request_dto = NiumClient::FundTransferRequestDTO.new({destination_amount: 50, destination_currency_code: 'SGD', destination_wallet_hash_id: 'c69f684f-a306-4c4a-8daa-1e91ce7c85f8', purpose_code: 'IR01802', source_amount: 50, source_currency_code: 'SGD'}) # FundTransferRequestDTO | fundTransferRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Wallet to Wallet Transfer
  result = api_instance.wallet_transfer(client_hash_id, customer_hash_id, wallet_hash_id, fund_transfer_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling WalletToWalletTransfersApi->wallet_transfer: #{e}"
end
```

#### Using the wallet_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundTransferResponse>, Integer, Hash)> wallet_transfer_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, fund_transfer_request_dto, opts)

```ruby
begin
  # Wallet to Wallet Transfer
  data, status_code, headers = api_instance.wallet_transfer_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, fund_transfer_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundTransferResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling WalletToWalletTransfersApi->wallet_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique source wallet identifier generated simultaneously with customer creation. |  |
| **fund_transfer_request_dto** | [**FundTransferRequestDTO**](FundTransferRequestDTO.md) | fundTransferRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**FundTransferResponse**](FundTransferResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

