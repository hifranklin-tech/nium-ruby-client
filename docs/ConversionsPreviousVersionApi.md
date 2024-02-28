# NiumClient::ConversionsPreviousVersionApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**balance_transferwithin_wallet**](ConversionsPreviousVersionApi.md#balance_transferwithin_wallet) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/transfer | Balance Transfer within Wallet |


## balance_transferwithin_wallet

> <WalletTransferResponseDto> balance_transferwithin_wallet(client_hash_id, customer_hash_id, wallet_hash_id, wallet_transfer_dto, opts)

Balance Transfer within Wallet

This API allows you to transfer the balance from one currency to another within the same customer wallet.

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

api_instance = NiumClient::ConversionsPreviousVersionApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
wallet_transfer_dto = NiumClient::WalletTransferDto.new({destination_currency: 'INR', source_currency: 'SGD'}) # WalletTransferDto | 
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Balance Transfer within Wallet
  result = api_instance.balance_transferwithin_wallet(client_hash_id, customer_hash_id, wallet_hash_id, wallet_transfer_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ConversionsPreviousVersionApi->balance_transferwithin_wallet: #{e}"
end
```

#### Using the balance_transferwithin_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletTransferResponseDto>, Integer, Hash)> balance_transferwithin_wallet_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, wallet_transfer_dto, opts)

```ruby
begin
  # Balance Transfer within Wallet
  data, status_code, headers = api_instance.balance_transferwithin_wallet_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, wallet_transfer_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletTransferResponseDto>
rescue NiumClient::ApiError => e
  puts "Error when calling ConversionsPreviousVersionApi->balance_transferwithin_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **wallet_transfer_dto** | [**WalletTransferDto**](WalletTransferDto.md) |  |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**WalletTransferResponseDto**](WalletTransferResponseDto.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

