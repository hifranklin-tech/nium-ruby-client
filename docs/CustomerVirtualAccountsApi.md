# NiumClient::CustomerVirtualAccountsApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**account_ownership_certificate**](CustomerVirtualAccountsApi.md#account_ownership_certificate) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/accountOwnershipCertificate | Account Ownership Certificate |
| [**assign_payment_id**](CustomerVirtualAccountsApi.md#assign_payment_id) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/paymentId | Assign Payment ID |
| [**manage_virtual_account_tags**](CustomerVirtualAccountsApi.md#manage_virtual_account_tags) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/paymentId/tags | Manage Virtual Account Tags |
| [**virtual_account_details**](CustomerVirtualAccountsApi.md#virtual_account_details) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/paymentIds | Virtual Account Details |
| [**virtual_account_details_v2**](CustomerVirtualAccountsApi.md#virtual_account_details_v2) | **GET** /api/v2/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/paymentIds | Virtual Account Details V2 |


## account_ownership_certificate

> account_ownership_certificate(client_hash_id, customer_hash_id, opts)

Account Ownership Certificate

This API allows you to download an account ownership certificate.

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

api_instance = NiumClient::CustomerVirtualAccountsApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  currencies: 'currencies_example', # String | This field accepts the list of currencies in 3-letter [ISO-4217 transaction currency code](https://docs.nium.com/apis/docs/currency-and-country-codes) for which the account ownership certificate to be generated. If no currencies are being sent in query param then account ownership certificate will be generated for all the currencies enabled to the customer.
  current_account_balance: false, # Boolean | This field will display the account balance of the customer as on date
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Account Ownership Certificate
  api_instance.account_ownership_certificate(client_hash_id, customer_hash_id, opts)
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerVirtualAccountsApi->account_ownership_certificate: #{e}"
end
```

#### Using the account_ownership_certificate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> account_ownership_certificate_with_http_info(client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Account Ownership Certificate
  data, status_code, headers = api_instance.account_ownership_certificate_with_http_info(client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerVirtualAccountsApi->account_ownership_certificate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **currencies** | **String** | This field accepts the list of currencies in 3-letter [ISO-4217 transaction currency code](https://docs.nium.com/apis/docs/currency-and-country-codes) for which the account ownership certificate to be generated. If no currencies are being sent in query param then account ownership certificate will be generated for all the currencies enabled to the customer. | [optional] |
| **current_account_balance** | **Boolean** | This field will display the account balance of the customer as on date | [optional][default to false] |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

nil (empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## assign_payment_id

> <PaymentIdResponseDTO2> assign_payment_id(client_hash_id, customer_hash_id, wallet_hash_id, payment_id_request_dto2, opts)

Assign Payment ID

This API allows you to assign virtual account numbers to customer for specific source.

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

api_instance = NiumClient::CustomerVirtualAccountsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
payment_id_request_dto2 = NiumClient::PaymentIdRequestDTO2.new({bank_name: 'bank_name_example', currency_code: 'currency_code_example'}) # PaymentIdRequestDTO2 | paymentIdRequestDTO2
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Assign Payment ID
  result = api_instance.assign_payment_id(client_hash_id, customer_hash_id, wallet_hash_id, payment_id_request_dto2, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerVirtualAccountsApi->assign_payment_id: #{e}"
end
```

#### Using the assign_payment_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIdResponseDTO2>, Integer, Hash)> assign_payment_id_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, payment_id_request_dto2, opts)

```ruby
begin
  # Assign Payment ID
  data, status_code, headers = api_instance.assign_payment_id_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, payment_id_request_dto2, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIdResponseDTO2>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerVirtualAccountsApi->assign_payment_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **payment_id_request_dto2** | [**PaymentIdRequestDTO2**](PaymentIdRequestDTO2.md) | paymentIdRequestDTO2 |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**PaymentIdResponseDTO2**](PaymentIdResponseDTO2.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## manage_virtual_account_tags

> <PaymentIdCientTagsResponseDTO> manage_virtual_account_tags(client_hash_id, customer_hash_id, wallet_hash_id, payment_id_tag_request_dto, opts)

Manage Virtual Account Tags

This API allows you to add, update, delete client tags against each virtual account.

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

api_instance = NiumClient::CustomerVirtualAccountsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
payment_id_tag_request_dto = NiumClient::PaymentIdTagRequestDTO.new({tags: [NiumClient::WalletPaymentIdsTagRequestDTO2.new({action: 'MAINTAIN', key: 'key_example'})], currency_code: 'currency_code_example', unique_payment_id: 'unique_payment_id_example'}) # PaymentIdTagRequestDTO | tags
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Manage Virtual Account Tags
  result = api_instance.manage_virtual_account_tags(client_hash_id, customer_hash_id, wallet_hash_id, payment_id_tag_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerVirtualAccountsApi->manage_virtual_account_tags: #{e}"
end
```

#### Using the manage_virtual_account_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentIdCientTagsResponseDTO>, Integer, Hash)> manage_virtual_account_tags_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, payment_id_tag_request_dto, opts)

```ruby
begin
  # Manage Virtual Account Tags
  data, status_code, headers = api_instance.manage_virtual_account_tags_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, payment_id_tag_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentIdCientTagsResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerVirtualAccountsApi->manage_virtual_account_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **payment_id_tag_request_dto** | [**PaymentIdTagRequestDTO**](PaymentIdTagRequestDTO.md) | tags |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**PaymentIdCientTagsResponseDTO**](PaymentIdCientTagsResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## virtual_account_details

> <Array<WalletPaymentIdsResponseDTO>> virtual_account_details(client_hash_id, customer_hash_id, wallet_hash_id, opts)

Virtual Account Details

This API allows you to fetch virtual accounts assigned to a customer's wallet.   ⚠️ WARNING   > To access updated functionality and features we recommed using the latest version of this API [Virtual Account Details V2](/apis/reference/virtualaccountdetailsv2). Eventually, this API version will be deprecated and becomes unsupported.

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

api_instance = NiumClient::CustomerVirtualAccountsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated and shared before API handshake.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated and shared before API handshake.
opts = {
  currency_code: 'currency_code_example', # String | 
  end_date: 'end_date_example', # String | 
  order: 'DESC', # String | 
  page: 0, # Integer | 
  property: 'createdAt', # String | 
  size: 20, # Integer | 
  start_date: 'start_date_example', # String | 
  tag_key: 'tag_key_example', # String | 
  tag_value: 'tag_value_example', # String | 
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Virtual Account Details
  result = api_instance.virtual_account_details(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerVirtualAccountsApi->virtual_account_details: #{e}"
end
```

#### Using the virtual_account_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WalletPaymentIdsResponseDTO>>, Integer, Hash)> virtual_account_details_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)

```ruby
begin
  # Virtual Account Details
  data, status_code, headers = api_instance.virtual_account_details_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WalletPaymentIdsResponseDTO>>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerVirtualAccountsApi->virtual_account_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated and shared before API handshake. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated and shared before API handshake. |  |
| **currency_code** | **String** |  | [optional] |
| **end_date** | **String** |  | [optional] |
| **order** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **property** | **String** |  | [optional] |
| **size** | **Integer** |  | [optional] |
| **start_date** | **String** |  | [optional] |
| **tag_key** | **String** |  | [optional] |
| **tag_value** | **String** |  | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Array&lt;WalletPaymentIdsResponseDTO&gt;**](WalletPaymentIdsResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## virtual_account_details_v2

> <VirtualAccountResponseDTO> virtual_account_details_v2(client_hash_id, customer_hash_id, wallet_hash_id, opts)

Virtual Account Details V2

This API allows you to fetch virtual accounts assigned to a customer's wallet.

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

api_instance = NiumClient::CustomerVirtualAccountsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated and shared before API handshake.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated and shared before API handshake.
opts = {
  currency_code: 'currency_code_example', # String | 
  end_date: 'end_date_example', # String | 
  order: 'DESC', # String | 
  page: 0, # Integer | 
  property: 'createdAt', # String | 
  size: 20, # Integer | 
  start_date: 'start_date_example', # String | 
  tag_key: 'tag_key_example', # String | 
  tag_value: 'tag_value_example', # String | 
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Virtual Account Details V2
  result = api_instance.virtual_account_details_v2(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerVirtualAccountsApi->virtual_account_details_v2: #{e}"
end
```

#### Using the virtual_account_details_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VirtualAccountResponseDTO>, Integer, Hash)> virtual_account_details_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)

```ruby
begin
  # Virtual Account Details V2
  data, status_code, headers = api_instance.virtual_account_details_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VirtualAccountResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerVirtualAccountsApi->virtual_account_details_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated and shared before API handshake. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated and shared before API handshake. |  |
| **currency_code** | **String** |  | [optional] |
| **end_date** | **String** |  | [optional] |
| **order** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **property** | **String** |  | [optional] |
| **size** | **Integer** |  | [optional] |
| **start_date** | **String** |  | [optional] |
| **tag_key** | **String** |  | [optional] |
| **tag_value** | **String** |  | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**VirtualAccountResponseDTO**](VirtualAccountResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

