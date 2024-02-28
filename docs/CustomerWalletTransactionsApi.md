# NiumClient::CustomerWalletTransactionsApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_transaction_receipt**](CustomerWalletTransactionsApi.md#download_transaction_receipt) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/transactions/{transactionId}/receipt | Download Transaction Receipt |
| [**manage_transaction_tags**](CustomerWalletTransactionsApi.md#manage_transaction_tags) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/transactions/{transactionId}/tags | Manage Transaction Tags |
| [**transaction_geo_tagging**](CustomerWalletTransactionsApi.md#transaction_geo_tagging) | **PUT** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/transactions/{transactionId}/location | Transaction Geo-Tagging |
| [**transactions**](CustomerWalletTransactionsApi.md#transactions) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/transactions | Transactions |
| [**update_business_transaction_flag**](CustomerWalletTransactionsApi.md#update_business_transaction_flag) | **PUT** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/transactions/{transactionId}/business | Update Business Transaction Flag |
| [**upload_transaction_receipt**](CustomerWalletTransactionsApi.md#upload_transaction_receipt) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/transactions/{transactionId}/receipt | Upload Transaction Receipt |


## download_transaction_receipt

> <TransactionsReceiptDTO> download_transaction_receipt(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, opts)

Download Transaction Receipt

This API allows you to download a receipt against each transaction.

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

api_instance = NiumClient::CustomerWalletTransactionsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
transaction_id = 'transaction_id_example' # String | Transaction Id is NIUM generated 36 character UUID which is unique, per transaction.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Download Transaction Receipt
  result = api_instance.download_transaction_receipt(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerWalletTransactionsApi->download_transaction_receipt: #{e}"
end
```

#### Using the download_transaction_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionsReceiptDTO>, Integer, Hash)> download_transaction_receipt_with_http_info(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, opts)

```ruby
begin
  # Download Transaction Receipt
  data, status_code, headers = api_instance.download_transaction_receipt_with_http_info(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionsReceiptDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerWalletTransactionsApi->download_transaction_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **transaction_id** | **String** | Transaction Id is NIUM generated 36 character UUID which is unique, per transaction. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**TransactionsReceiptDTO**](TransactionsReceiptDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## manage_transaction_tags

> <TransactionClientTagsResponseDTO> manage_transaction_tags(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transaction_client_tags_request_dto, opts)

Manage Transaction Tags

This API allows you to add, update, and delete transaction tags.

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

api_instance = NiumClient::CustomerWalletTransactionsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
transaction_id = 'transaction_id_example' # String | Unique transaction Identifier generated and shared before API handshake.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
transaction_client_tags_request_dto = NiumClient::TransactionClientTagsRequestDTO.new({tags: [NiumClient::TransactionClientTagRequestDTO.new({action: 'MAINTAIN', key: 'key_example'})]}) # TransactionClientTagsRequestDTO | tags
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Manage Transaction Tags
  result = api_instance.manage_transaction_tags(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transaction_client_tags_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerWalletTransactionsApi->manage_transaction_tags: #{e}"
end
```

#### Using the manage_transaction_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionClientTagsResponseDTO>, Integer, Hash)> manage_transaction_tags_with_http_info(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transaction_client_tags_request_dto, opts)

```ruby
begin
  # Manage Transaction Tags
  data, status_code, headers = api_instance.manage_transaction_tags_with_http_info(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transaction_client_tags_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionClientTagsResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerWalletTransactionsApi->manage_transaction_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **transaction_id** | **String** | Unique transaction Identifier generated and shared before API handshake. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **transaction_client_tags_request_dto** | [**TransactionClientTagsRequestDTO**](TransactionClientTagsRequestDTO.md) | tags |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**TransactionClientTagsResponseDTO**](TransactionClientTagsResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## transaction_geo_tagging

> <WalletApiError> transaction_geo_tagging(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transactions_location_dto, opts)

Transaction Geo-Tagging

This API allows you to update a transaction with merchant location.

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

api_instance = NiumClient::CustomerWalletTransactionsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
transaction_id = 'transaction_id_example' # String | Transaction Id is NIUM generated 36 character UUID which is unique, per transaction.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
transactions_location_dto = NiumClient::TransactionsLocationDTO.new({merchant_latitude: '28.532094', merchant_longitude: '77.01632', merchant_tagged_name: 'STARBUCKS', merchant_zoom_index: '4'}) # TransactionsLocationDTO | transactionsLocationDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Transaction Geo-Tagging
  result = api_instance.transaction_geo_tagging(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transactions_location_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerWalletTransactionsApi->transaction_geo_tagging: #{e}"
end
```

#### Using the transaction_geo_tagging_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletApiError>, Integer, Hash)> transaction_geo_tagging_with_http_info(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transactions_location_dto, opts)

```ruby
begin
  # Transaction Geo-Tagging
  data, status_code, headers = api_instance.transaction_geo_tagging_with_http_info(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transactions_location_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletApiError>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerWalletTransactionsApi->transaction_geo_tagging_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **transaction_id** | **String** | Transaction Id is NIUM generated 36 character UUID which is unique, per transaction. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **transactions_location_dto** | [**TransactionsLocationDTO**](TransactionsLocationDTO.md) | transactionsLocationDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**WalletApiError**](WalletApiError.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transactions

> <WalletTransactionsResponseDTO> transactions(client_hash_id, customer_hash_id, wallet_hash_id, opts)

Transactions

This API allows you to fetch transaction details for a customer.

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

api_instance = NiumClient::CustomerWalletTransactionsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  auth_code: 'auth_code_example', # String | This parameter can be used to filter the transactions based on the authorization code. In case of fund wallet transactions you can provide the systemReferenceNumber as value.
  auth_currency: 'auth_currency_example', # String | This parameter can filter the transactions based on auth currency and accepts 3-letter [ISO-4217 transaction currency code](https://docs.nium.com/apis/docs/currency-and-country-codes).
  business_transaction: 'business_transaction_example', # String | This parameter can filter the transactions based on businessTransaction flag.
  card_hash_id: 'card_hash_id_example', # String | This field can apply the filter based on the unique card identifier generated during new/add-on card issuance.
  child_customer_hash_id: 'child_customer_hash_id_example', # String | This field contains the unique child customer identifier generated when new child customer created.
  end_date: 'end_date_example', # String | End date for fetching the transaction details. The format for endDate is YYYY-MM-DD.
  mcc: 'mcc_example', # String | This parameter can filter the transactions based on 4-digit Merchant Category Codes.
  merchant_categories: 'merchant_categories_example', # String | This parameter describes the merchant's type of business product or service, also known as the Merchant Category Code (MCC) such as Airlines, Restaurants etc.
  merchant_city: 'merchant_city_example', # String | This parameter can filter the transactions based on the merchant city field.
  merchant_countries: 'merchant_countries_example', # String | This parameter can filter the transactions based on comma-separated list of 2-letter ISO merchant countries.
  merchant_country: 'merchant_country_example', # String | This parameter can filter the transactions based on the merchant country field.
  merchant_name: 'merchant_name_example', # String | This parameter can filter the transactions based on the merchant name field.
  order: 'ASC', # String | The sort order for the results.
  page: 0, # Integer | This API may have lot of data in response and supports pagination. Entire response data is divided into pages with size as the upper limit on the number of data. Integer values from 0 onwards are acceptable. Default page is 0.
  payment_instrument_hash_id: 'payment_instrument_hash_id_example', # String | This parameter can filter the transactions based on comma-separated paymentInstrumentHashId.
  property: 'property_example', # String | The field indicates the response parameter used to sort paginated data, with 'createdAt' as the default parameter.
  settlement_date: 'settlement_date_example', # String | This parameter can filter the transactions based on the settlement date of the transaction in format yyyyMMdd.
  settlement_status: 'settlement_status_example', # String | This parameter can filter the transactions based on settlement status. The detailed list of possible values is available in the response of this API.
  size: 20, # Integer | This will decide the number of elements per page. Typical values can be 1-20.
  start_date: 'start_date_example', # String | From date for fetching the transaction details. The format for startDate is YYYY-MM-DD.
  status: 'NULL', # String | This parameter can filter the transactions based on status. The detailed list of possible values is available in the response of this API.
  system_reference_number: 'system_reference_number_example', # String | This parameter can be used to filter the transactions based on the systemReferenceNumber.
  system_trace_audit_number: 'system_trace_audit_number_example', # String | This parameter can filter the transactions based on systemTraceAuditNumber.
  tag_key: 'tag_key_example', # String | This parameter can filter the transactions, based on the exact value of tagKey defined against transactions. This can be used as an independent search parameter.
  tag_value: 'tag_value_example', # String | This parameter can filter the transactions, based on the approximating value of tagValue(that may be mapped for a tagKey defined against transactions). This can be used as an independent search parameter.
  transaction_currency: 'transaction_currency_example', # String | This field contains the 3-letter [ISO-4217 transaction currency code](https://www.iso.org/iso-4217-currency-codes.html).
  transaction_type: 'transaction_type_example', # String | This field contains the transaction can be one of the complete list of transactions mentioned in [Glossary of Transaction Types](https://docs.nium.com/baas/get-transactions#glossary-of-transaction-types).
  transactions_labels_key: 'transactions_labels_key_example', # String | This parameter can filter the transactions based on transactionsLabelsKey.
  transactions_labels_value: 'transactions_labels_value_example', # String | This parameter can filter the transactions based on transactionsLabelsValue.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Transactions
  result = api_instance.transactions(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerWalletTransactionsApi->transactions: #{e}"
end
```

#### Using the transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletTransactionsResponseDTO>, Integer, Hash)> transactions_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)

```ruby
begin
  # Transactions
  data, status_code, headers = api_instance.transactions_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletTransactionsResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerWalletTransactionsApi->transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **auth_code** | **String** | This parameter can be used to filter the transactions based on the authorization code. In case of fund wallet transactions you can provide the systemReferenceNumber as value. | [optional] |
| **auth_currency** | **String** | This parameter can filter the transactions based on auth currency and accepts 3-letter [ISO-4217 transaction currency code](https://docs.nium.com/apis/docs/currency-and-country-codes). | [optional] |
| **business_transaction** | **String** | This parameter can filter the transactions based on businessTransaction flag. | [optional] |
| **card_hash_id** | **String** | This field can apply the filter based on the unique card identifier generated during new/add-on card issuance. | [optional] |
| **child_customer_hash_id** | **String** | This field contains the unique child customer identifier generated when new child customer created. | [optional] |
| **end_date** | **String** | End date for fetching the transaction details. The format for endDate is YYYY-MM-DD. | [optional] |
| **mcc** | **String** | This parameter can filter the transactions based on 4-digit Merchant Category Codes. | [optional] |
| **merchant_categories** | **String** | This parameter describes the merchant&#39;s type of business product or service, also known as the Merchant Category Code (MCC) such as Airlines, Restaurants etc. | [optional] |
| **merchant_city** | **String** | This parameter can filter the transactions based on the merchant city field. | [optional] |
| **merchant_countries** | **String** | This parameter can filter the transactions based on comma-separated list of 2-letter ISO merchant countries. | [optional] |
| **merchant_country** | **String** | This parameter can filter the transactions based on the merchant country field. | [optional] |
| **merchant_name** | **String** | This parameter can filter the transactions based on the merchant name field. | [optional] |
| **order** | **String** | The sort order for the results. | [optional] |
| **page** | **Integer** | This API may have lot of data in response and supports pagination. Entire response data is divided into pages with size as the upper limit on the number of data. Integer values from 0 onwards are acceptable. Default page is 0. | [optional] |
| **payment_instrument_hash_id** | **String** | This parameter can filter the transactions based on comma-separated paymentInstrumentHashId. | [optional] |
| **property** | **String** | The field indicates the response parameter used to sort paginated data, with &#39;createdAt&#39; as the default parameter. | [optional] |
| **settlement_date** | **String** | This parameter can filter the transactions based on the settlement date of the transaction in format yyyyMMdd. | [optional] |
| **settlement_status** | **String** | This parameter can filter the transactions based on settlement status. The detailed list of possible values is available in the response of this API. | [optional] |
| **size** | **Integer** | This will decide the number of elements per page. Typical values can be 1-20. | [optional] |
| **start_date** | **String** | From date for fetching the transaction details. The format for startDate is YYYY-MM-DD. | [optional] |
| **status** | **String** | This parameter can filter the transactions based on status. The detailed list of possible values is available in the response of this API. | [optional] |
| **system_reference_number** | **String** | This parameter can be used to filter the transactions based on the systemReferenceNumber. | [optional] |
| **system_trace_audit_number** | **String** | This parameter can filter the transactions based on systemTraceAuditNumber. | [optional] |
| **tag_key** | **String** | This parameter can filter the transactions, based on the exact value of tagKey defined against transactions. This can be used as an independent search parameter. | [optional] |
| **tag_value** | **String** | This parameter can filter the transactions, based on the approximating value of tagValue(that may be mapped for a tagKey defined against transactions). This can be used as an independent search parameter. | [optional] |
| **transaction_currency** | **String** | This field contains the 3-letter [ISO-4217 transaction currency code](https://www.iso.org/iso-4217-currency-codes.html). | [optional] |
| **transaction_type** | **String** | This field contains the transaction can be one of the complete list of transactions mentioned in [Glossary of Transaction Types](https://docs.nium.com/baas/get-transactions#glossary-of-transaction-types). | [optional] |
| **transactions_labels_key** | **String** | This parameter can filter the transactions based on transactionsLabelsKey. | [optional] |
| **transactions_labels_value** | **String** | This parameter can filter the transactions based on transactionsLabelsValue. | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**WalletTransactionsResponseDTO**](WalletTransactionsResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_business_transaction_flag

> <WalletApiError> update_business_transaction_flag(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transactions_business_dto, opts)

Update Business Transaction Flag

This API allows you to update a flag against each transaction signifying that the transaction is a business transaction.

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

api_instance = NiumClient::CustomerWalletTransactionsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
transaction_id = 'transaction_id_example' # String | Transaction Id is NIUM generated 36 character UUID which is unique, per transaction.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
transactions_business_dto = NiumClient::TransactionsBusinessDTO.new({business_transaction: true}) # TransactionsBusinessDTO | transactionsBusinessDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Update Business Transaction Flag
  result = api_instance.update_business_transaction_flag(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transactions_business_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerWalletTransactionsApi->update_business_transaction_flag: #{e}"
end
```

#### Using the update_business_transaction_flag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletApiError>, Integer, Hash)> update_business_transaction_flag_with_http_info(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transactions_business_dto, opts)

```ruby
begin
  # Update Business Transaction Flag
  data, status_code, headers = api_instance.update_business_transaction_flag_with_http_info(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transactions_business_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletApiError>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerWalletTransactionsApi->update_business_transaction_flag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **transaction_id** | **String** | Transaction Id is NIUM generated 36 character UUID which is unique, per transaction. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **transactions_business_dto** | [**TransactionsBusinessDTO**](TransactionsBusinessDTO.md) | transactionsBusinessDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**WalletApiError**](WalletApiError.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_transaction_receipt

> <WalletApiError> upload_transaction_receipt(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transactions_receipt_dto, opts)

Upload Transaction Receipt

This API allows you to upload a receipt against each transaction.

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

api_instance = NiumClient::CustomerWalletTransactionsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
transaction_id = 'transaction_id_example' # String | Transaction Id is NIUM generated 36 character UUID which is unique, per transaction.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
transactions_receipt_dto = NiumClient::TransactionsReceiptDTO.new({document: 'iVBORw0KGgoAAAANSUhEU...<Base64 Encoded Image or Document>', receipt_file_name: 'receipt_1.png', receipt_type: 'image/png'}) # TransactionsReceiptDTO | transactionReceipt
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Upload Transaction Receipt
  result = api_instance.upload_transaction_receipt(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transactions_receipt_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerWalletTransactionsApi->upload_transaction_receipt: #{e}"
end
```

#### Using the upload_transaction_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletApiError>, Integer, Hash)> upload_transaction_receipt_with_http_info(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transactions_receipt_dto, opts)

```ruby
begin
  # Upload Transaction Receipt
  data, status_code, headers = api_instance.upload_transaction_receipt_with_http_info(client_hash_id, customer_hash_id, transaction_id, wallet_hash_id, transactions_receipt_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletApiError>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerWalletTransactionsApi->upload_transaction_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **transaction_id** | **String** | Transaction Id is NIUM generated 36 character UUID which is unique, per transaction. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **transactions_receipt_dto** | [**TransactionsReceiptDTO**](TransactionsReceiptDTO.md) | transactionReceipt |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**WalletApiError**](WalletApiError.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

