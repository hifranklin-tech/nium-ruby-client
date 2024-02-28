# NiumClient::PayoutApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**customer_get_card_widget**](PayoutApi.md#customer_get_card_widget) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/widget/token | Get Card Widget |
| [**fetch_remittance_life_cycle_status**](PayoutApi.md#fetch_remittance_life_cycle_status) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/remittance/{systemReferenceNumber}/audit | Fetch Remittance Life Cycle Status |
| [**po_p**](PayoutApi.md#po_p) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/remittance/{systemReferenceNumber}/receipt | Get Proof Of Payment |
| [**purposeof_transfer**](PayoutApi.md#purposeof_transfer) | **GET** /api/v1/remittance/purposeCodes | Purpose of Transfer |
| [**respondto_transaction_rfi**](PayoutApi.md#respondto_transaction_rfi) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/transactions/{authCode}/rfi/upload | Respond to Transaction RFI |
| [**transfer_money**](PayoutApi.md#transfer_money) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/remittance | Transfer Money |
| [**withdraw_funds_from_wallet**](PayoutApi.md#withdraw_funds_from_wallet) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/refund | Withdraw Funds from Wallet |


## customer_get_card_widget

> <CustomerCardWidgetTokenResponse> customer_get_card_widget(client_hash_id, customer_hash_id, customer_card_widget_token_request_dto, opts)

Get Card Widget

This API allows you to use NIUM’s card widget to tokenize beneficiary card details. Non-PCI DSS compliant Clients are expected to integrate with this new API to get beneficiary’s encrypted card token number. This token number needs to be passed in field encryptedBeneficiaryCardToken while adding a beneficiary to make a payout to card.

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

api_instance = NiumClient::PayoutApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated during customer creation.
customer_card_widget_token_request_dto = NiumClient::CustomerCardWidgetTokenRequestDTO.new({card_type: 'card_type_example'}) # CustomerCardWidgetTokenRequestDTO | cardWidgetTokenRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Get Card Widget
  result = api_instance.customer_get_card_widget(client_hash_id, customer_hash_id, customer_card_widget_token_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling PayoutApi->customer_get_card_widget: #{e}"
end
```

#### Using the customer_get_card_widget_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerCardWidgetTokenResponse>, Integer, Hash)> customer_get_card_widget_with_http_info(client_hash_id, customer_hash_id, customer_card_widget_token_request_dto, opts)

```ruby
begin
  # Get Card Widget
  data, status_code, headers = api_instance.customer_get_card_widget_with_http_info(client_hash_id, customer_hash_id, customer_card_widget_token_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerCardWidgetTokenResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling PayoutApi->customer_get_card_widget_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated during customer creation. |  |
| **customer_card_widget_token_request_dto** | [**CustomerCardWidgetTokenRequestDTO**](CustomerCardWidgetTokenRequestDTO.md) | cardWidgetTokenRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**CustomerCardWidgetTokenResponse**](CustomerCardWidgetTokenResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## fetch_remittance_life_cycle_status

> <Array<RemittanceEventsResponseDTO2>> fetch_remittance_life_cycle_status(client_hash_id, customer_hash_id, system_reference_number, wallet_hash_id, opts)

Fetch Remittance Life Cycle Status

This API allows you to fetch the Remittance Life Cycle Status along with Payment Reference Number, Partner Reference Number, System Reference Number, Date and Time of the Remittance status based on the System Reference Number provided in the input.

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

api_instance = NiumClient::PayoutApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
system_reference_number = 'system_reference_number_example' # String | This is a unique system reference number generated by card issuance platform for the transaction.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Fetch Remittance Life Cycle Status
  result = api_instance.fetch_remittance_life_cycle_status(client_hash_id, customer_hash_id, system_reference_number, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling PayoutApi->fetch_remittance_life_cycle_status: #{e}"
end
```

#### Using the fetch_remittance_life_cycle_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RemittanceEventsResponseDTO2>>, Integer, Hash)> fetch_remittance_life_cycle_status_with_http_info(client_hash_id, customer_hash_id, system_reference_number, wallet_hash_id, opts)

```ruby
begin
  # Fetch Remittance Life Cycle Status
  data, status_code, headers = api_instance.fetch_remittance_life_cycle_status_with_http_info(client_hash_id, customer_hash_id, system_reference_number, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RemittanceEventsResponseDTO2>>
rescue NiumClient::ApiError => e
  puts "Error when calling PayoutApi->fetch_remittance_life_cycle_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **system_reference_number** | **String** | This is a unique system reference number generated by card issuance platform for the transaction. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Array&lt;RemittanceEventsResponseDTO2&gt;**](RemittanceEventsResponseDTO2.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## po_p

> po_p(client_hash_id, customer_hash_id, system_reference_number, wallet_hash_id, opts)

Get Proof Of Payment

This API allows you to download a proof of payment receipt against a transaction.

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

api_instance = NiumClient::PayoutApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
system_reference_number = 'system_reference_number_example' # String | Unique System Reference Number generated on Transfer Money request.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Get Proof Of Payment
  api_instance.po_p(client_hash_id, customer_hash_id, system_reference_number, wallet_hash_id, opts)
rescue NiumClient::ApiError => e
  puts "Error when calling PayoutApi->po_p: #{e}"
end
```

#### Using the po_p_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> po_p_with_http_info(client_hash_id, customer_hash_id, system_reference_number, wallet_hash_id, opts)

```ruby
begin
  # Get Proof Of Payment
  data, status_code, headers = api_instance.po_p_with_http_info(client_hash_id, customer_hash_id, system_reference_number, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue NiumClient::ApiError => e
  puts "Error when calling PayoutApi->po_p_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **system_reference_number** | **String** | Unique System Reference Number generated on Transfer Money request. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

nil (empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## purposeof_transfer

> <Array<PurposeCodeResponseDTO>> purposeof_transfer(opts)

Purpose of Transfer

This API will allow you to fetch the list of purpose of transfer.

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

api_instance = NiumClient::PayoutApi.new
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Purpose of Transfer
  result = api_instance.purposeof_transfer(opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling PayoutApi->purposeof_transfer: #{e}"
end
```

#### Using the purposeof_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PurposeCodeResponseDTO>>, Integer, Hash)> purposeof_transfer_with_http_info(opts)

```ruby
begin
  # Purpose of Transfer
  data, status_code, headers = api_instance.purposeof_transfer_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PurposeCodeResponseDTO>>
rescue NiumClient::ApiError => e
  puts "Error when calling PayoutApi->purposeof_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Array&lt;PurposeCodeResponseDTO&gt;**](PurposeCodeResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## respondto_transaction_rfi

> <UploadRfiDetailsResponseDTO> respondto_transaction_rfi(auth_code, client_hash_id, customer_hash_id, wallet_hash_id, upload_rfi_document_request_dto, opts)

Respond to Transaction RFI

This API allows you to respond to an RFI raised for a transaction.

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

api_instance = NiumClient::PayoutApi.new
auth_code = 'auth_code_example' # String | Authorization code of the transaction.
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
upload_rfi_document_request_dto = NiumClient::UploadRfiDocumentRequestDTO.new({rfi_response_request: [NiumClient::WalletRfiResponseRequest.new({rfi_hash_id: 'rfi_hash_id_example', rfi_response_info: NiumClient::RfiResponseInfo.new})]}) # UploadRfiDocumentRequestDTO | uploadRfiDocumentRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Respond to Transaction RFI
  result = api_instance.respondto_transaction_rfi(auth_code, client_hash_id, customer_hash_id, wallet_hash_id, upload_rfi_document_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling PayoutApi->respondto_transaction_rfi: #{e}"
end
```

#### Using the respondto_transaction_rfi_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadRfiDetailsResponseDTO>, Integer, Hash)> respondto_transaction_rfi_with_http_info(auth_code, client_hash_id, customer_hash_id, wallet_hash_id, upload_rfi_document_request_dto, opts)

```ruby
begin
  # Respond to Transaction RFI
  data, status_code, headers = api_instance.respondto_transaction_rfi_with_http_info(auth_code, client_hash_id, customer_hash_id, wallet_hash_id, upload_rfi_document_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadRfiDetailsResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling PayoutApi->respondto_transaction_rfi_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_code** | **String** | Authorization code of the transaction. |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **upload_rfi_document_request_dto** | [**UploadRfiDocumentRequestDTO**](UploadRfiDocumentRequestDTO.md) | uploadRfiDocumentRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**UploadRfiDetailsResponseDTO**](UploadRfiDetailsResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## transfer_money

> <RemittanceResponseDTO> transfer_money(client_hash_id, customer_hash_id, wallet_hash_id, remittance_transactions_request_dto, opts)

Transfer Money

This API will allow you to send money to the registered beneficiary.

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

api_instance = NiumClient::PayoutApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
remittance_transactions_request_dto = NiumClient::RemittanceTransactionsRequestDTO.new({beneficiary: NiumClient::Beneficiary.new({id: '5f7ddd6a56b63400178319c5'}), payout: NiumClient::Payout.new, purpose_code: 'IR01802', source_of_funds: 'Salary'}) # RemittanceTransactionsRequestDTO | remittanceTransactionsRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Transfer Money
  result = api_instance.transfer_money(client_hash_id, customer_hash_id, wallet_hash_id, remittance_transactions_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling PayoutApi->transfer_money: #{e}"
end
```

#### Using the transfer_money_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemittanceResponseDTO>, Integer, Hash)> transfer_money_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, remittance_transactions_request_dto, opts)

```ruby
begin
  # Transfer Money
  data, status_code, headers = api_instance.transfer_money_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, remittance_transactions_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemittanceResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling PayoutApi->transfer_money_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **remittance_transactions_request_dto** | [**RemittanceTransactionsRequestDTO**](RemittanceTransactionsRequestDTO.md) | remittanceTransactionsRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**RemittanceResponseDTO**](RemittanceResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## withdraw_funds_from_wallet

> <ApiResponseOfWalletRefundResponseDTO> withdraw_funds_from_wallet(client_hash_id, customer_hash_id, wallet_hash_id, wallet_refund_request_dto, opts)

Withdraw Funds from Wallet

This API allows you to withdraw funds from the customer's wallet.

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

api_instance = NiumClient::PayoutApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
wallet_refund_request_dto = NiumClient::WalletRefundRequestDTO.new({amount: 10, currency_code: 'SGD', refund_mode: 'CASH'}) # WalletRefundRequestDTO | walletRefundRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Withdraw Funds from Wallet
  result = api_instance.withdraw_funds_from_wallet(client_hash_id, customer_hash_id, wallet_hash_id, wallet_refund_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling PayoutApi->withdraw_funds_from_wallet: #{e}"
end
```

#### Using the withdraw_funds_from_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiResponseOfWalletRefundResponseDTO>, Integer, Hash)> withdraw_funds_from_wallet_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, wallet_refund_request_dto, opts)

```ruby
begin
  # Withdraw Funds from Wallet
  data, status_code, headers = api_instance.withdraw_funds_from_wallet_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, wallet_refund_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiResponseOfWalletRefundResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling PayoutApi->withdraw_funds_from_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **wallet_refund_request_dto** | [**WalletRefundRequestDTO**](WalletRefundRequestDTO.md) | walletRefundRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ApiResponseOfWalletRefundResponseDTO**](ApiResponseOfWalletRefundResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

