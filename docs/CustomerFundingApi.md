# NiumClient::CustomerFundingApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_funding_instrument**](CustomerFundingApi.md#add_funding_instrument) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/fundingInstruments | Add funding instrument |
| [**confirm_funding_instrument_id**](CustomerFundingApi.md#confirm_funding_instrument_id) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/fundingInstruments/{fundingInstrumentId}/confirmFundingInstrument | Confirm funding instrument |
| [**delete_fundinginstrument**](CustomerFundingApi.md#delete_fundinginstrument) | **DELETE** /api/v1/client/{clientHashId}/customer/{customerHashId}/fundingInstruments/{fundingInstrumentId} | Delete Funding Instrument |
| [**fund_wallet**](CustomerFundingApi.md#fund_wallet) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/fund | Fund Wallet |
| [**get_funding_instrument_details**](CustomerFundingApi.md#get_funding_instrument_details) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/fundingInstruments/{fundingInstrumentId}/fundingInstrumentDetails | Get Funding instrument details |
| [**get_funding_instrument_list**](CustomerFundingApi.md#get_funding_instrument_list) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/fundingInstruments | Get Funding Instrument List |


## add_funding_instrument

> <LinkAccountResponse> add_funding_instrument(client_hash_id, customer_hash_id, wallet_hash_id, opts)

Add funding instrument

This API allows you to link account

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

api_instance = NiumClient::CustomerFundingApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  x_request_id: '{{$guid}}', # String | Enter a unique UUID value
  customer_link_account_request: NiumClient::CustomerLinkAccountRequest.new({country: 'US', currency: 'USD', funding_channel: 'DIRECT_DEBIT'}) # CustomerLinkAccountRequest | Add a new funding instrument
}

begin
  # Add funding instrument
  result = api_instance.add_funding_instrument(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerFundingApi->add_funding_instrument: #{e}"
end
```

#### Using the add_funding_instrument_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LinkAccountResponse>, Integer, Hash)> add_funding_instrument_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)

```ruby
begin
  # Add funding instrument
  data, status_code, headers = api_instance.add_funding_instrument_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LinkAccountResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerFundingApi->add_funding_instrument_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |
| **customer_link_account_request** | [**CustomerLinkAccountRequest**](CustomerLinkAccountRequest.md) | Add a new funding instrument | [optional] |

### Return type

[**LinkAccountResponse**](LinkAccountResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## confirm_funding_instrument_id

> <AccountStatusResponse> confirm_funding_instrument_id(client_hash_id, customer_hash_id, funding_instrument_id, opts)

Confirm funding instrument

This API allows you to confirm funding instrument id

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

api_instance = NiumClient::CustomerFundingApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
funding_instrument_id = 'funding_instrument_id_example' # String | This field is the unique 36-character funding instrument identifier. The id is a bank account identifier when the funding channel is direct debit.
opts = {
  x_request_id: '{{$guid}}', # String | Enter a unique UUID value
  confirm_funding_instrument_request_dto: NiumClient::ConfirmFundingInstrumentRequestDTO.new # ConfirmFundingInstrumentRequestDTO | Confirm funding instrument
}

begin
  # Confirm funding instrument
  result = api_instance.confirm_funding_instrument_id(client_hash_id, customer_hash_id, funding_instrument_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerFundingApi->confirm_funding_instrument_id: #{e}"
end
```

#### Using the confirm_funding_instrument_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountStatusResponse>, Integer, Hash)> confirm_funding_instrument_id_with_http_info(client_hash_id, customer_hash_id, funding_instrument_id, opts)

```ruby
begin
  # Confirm funding instrument
  data, status_code, headers = api_instance.confirm_funding_instrument_id_with_http_info(client_hash_id, customer_hash_id, funding_instrument_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountStatusResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerFundingApi->confirm_funding_instrument_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **funding_instrument_id** | **String** | This field is the unique 36-character funding instrument identifier. The id is a bank account identifier when the funding channel is direct debit. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |
| **confirm_funding_instrument_request_dto** | [**ConfirmFundingInstrumentRequestDTO**](ConfirmFundingInstrumentRequestDTO.md) | Confirm funding instrument | [optional] |

### Return type

[**AccountStatusResponse**](AccountStatusResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_fundinginstrument

> <ApiResponseOfstring> delete_fundinginstrument(client_hash_id, customer_hash_id, funding_instrument_id, opts)

Delete Funding Instrument

This API allows you to delete a specific funding instrument based on the fundingInstrumentId.

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

api_instance = NiumClient::CustomerFundingApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
funding_instrument_id = 'funding_instrument_id_example' # String | The unique 36-character alphanumeric identifier of a funding instrument.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Delete Funding Instrument
  result = api_instance.delete_fundinginstrument(client_hash_id, customer_hash_id, funding_instrument_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerFundingApi->delete_fundinginstrument: #{e}"
end
```

#### Using the delete_fundinginstrument_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiResponseOfstring>, Integer, Hash)> delete_fundinginstrument_with_http_info(client_hash_id, customer_hash_id, funding_instrument_id, opts)

```ruby
begin
  # Delete Funding Instrument
  data, status_code, headers = api_instance.delete_fundinginstrument_with_http_info(client_hash_id, customer_hash_id, funding_instrument_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiResponseOfstring>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerFundingApi->delete_fundinginstrument_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **funding_instrument_id** | **String** | The unique 36-character alphanumeric identifier of a funding instrument. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ApiResponseOfstring**](ApiResponseOfstring.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fund_wallet

> <WalletFundResponseDTO> fund_wallet(client_hash_id, customer_hash_id, wallet_hash_id, opts)

Fund Wallet

This API allows you to top-up into the customer's wallet. Refer to the [Fund wallet user guide](/docs/fund-wallet) for details on usage instructions on this API.  >ℹ️ INFO   >**Guidelines for Fund Wallet.** >1. Cards and direct_debit funding channels are restricted by default. Reach out to your Nium support specialist to enable this functionality. >2. Source and destination should be in the same currency when funding channel is bank_transfer, cards, or direct_debit. >3. No restriction on source or destination currency if funding channel is prefund. 

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

api_instance = NiumClient::CustomerFundingApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  x_request_id: '{{$guid}}', # String | Enter a unique UUID value
  wallet_fund_dto: NiumClient::WalletFundDTO.new({destination_currency_code: 'SGD', funding_channel: 'PREFUND', source_currency_code: 'SGD'}) # WalletFundDTO | Guidelines for Fund Wallet  1.cards as a funding channel is restricted by default. It may be enabled for a client on request. 2.Source and destination currencies should be same if funding channel is bankTransfer or cards 3.No restriction on source or destination currency if funding channel is prefund.  Fund Wallet with a Card  Customer onboarded and KYCed successfully [through Manual or eKYC flow] with e-KYC calls Fund Wallet API with funding channel as cards.
}

begin
  # Fund Wallet
  result = api_instance.fund_wallet(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerFundingApi->fund_wallet: #{e}"
end
```

#### Using the fund_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletFundResponseDTO>, Integer, Hash)> fund_wallet_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)

```ruby
begin
  # Fund Wallet
  data, status_code, headers = api_instance.fund_wallet_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletFundResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerFundingApi->fund_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |
| **wallet_fund_dto** | [**WalletFundDTO**](WalletFundDTO.md) | Guidelines for Fund Wallet  1.cards as a funding channel is restricted by default. It may be enabled for a client on request. 2.Source and destination currencies should be same if funding channel is bankTransfer or cards 3.No restriction on source or destination currency if funding channel is prefund.  Fund Wallet with a Card  Customer onboarded and KYCed successfully [through Manual or eKYC flow] with e-KYC calls Fund Wallet API with funding channel as cards. | [optional] |

### Return type

[**WalletFundResponseDTO**](WalletFundResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_funding_instrument_details

> <AccountStatusResponse> get_funding_instrument_details(client_hash_id, customer_hash_id, funding_instrument_id, opts)

Get Funding instrument details

Get Funding instrument details

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

api_instance = NiumClient::CustomerFundingApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
funding_instrument_id = 'funding_instrument_id_example' # String | Unique 36-character funding instrument identifier.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Get Funding instrument details
  result = api_instance.get_funding_instrument_details(client_hash_id, customer_hash_id, funding_instrument_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerFundingApi->get_funding_instrument_details: #{e}"
end
```

#### Using the get_funding_instrument_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountStatusResponse>, Integer, Hash)> get_funding_instrument_details_with_http_info(client_hash_id, customer_hash_id, funding_instrument_id, opts)

```ruby
begin
  # Get Funding instrument details
  data, status_code, headers = api_instance.get_funding_instrument_details_with_http_info(client_hash_id, customer_hash_id, funding_instrument_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountStatusResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerFundingApi->get_funding_instrument_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **funding_instrument_id** | **String** | Unique 36-character funding instrument identifier. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**AccountStatusResponse**](AccountStatusResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_funding_instrument_list

> <Array<WalletFundingInstrumentsResponseDTO>> get_funding_instrument_list(client_hash_id, customer_hash_id, opts)

Get Funding Instrument List

This API allows you to fetch the funding instruments that have been registered for a customer.

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

api_instance = NiumClient::CustomerFundingApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Get Funding Instrument List
  result = api_instance.get_funding_instrument_list(client_hash_id, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerFundingApi->get_funding_instrument_list: #{e}"
end
```

#### Using the get_funding_instrument_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WalletFundingInstrumentsResponseDTO>>, Integer, Hash)> get_funding_instrument_list_with_http_info(client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Get Funding Instrument List
  data, status_code, headers = api_instance.get_funding_instrument_list_with_http_info(client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WalletFundingInstrumentsResponseDTO>>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerFundingApi->get_funding_instrument_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Array&lt;WalletFundingInstrumentsResponseDTO&gt;**](WalletFundingInstrumentsResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

