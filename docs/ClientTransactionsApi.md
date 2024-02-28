# NiumClient::ClientTransactionsApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**client_transactions**](ClientTransactionsApi.md#client_transactions) | **GET** /api/v1/client/{clientHashId}/transactions | Client Transactions |


## client_transactions

> <ClientTransactionsResponseDTO> client_transactions(client_hash_id, opts)

Client Transactions

This API allows you to fetch transaction details at the client level.

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

api_instance = NiumClient::ClientTransactionsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake. >ℹ️ INFO  >Query parameters are optional. If query parameters are not passed then by default three months transactions will be returned.
opts = {
  auth_code: 'auth_code_example', # String | This parameter can be used to filter the transactions based on the authorization code. In case of fund wallet transactions you can provide the systemReferenceNumber as value.
  auth_currency: 'auth_currency_example', # String | This parameter can filter the transactions based on auth currency and accepts 3-letter [ISO-4217 transaction currency code](https://docs.nium.com/apis/docs/currency-and-country-codes).
  business_transaction: true, # Boolean | This parameter can filter the transactions based on businessTransaction flag.
  card_hash_id: 'card_hash_id_example', # String | This field can apply the filter based on the unique card identifier generated during new/add-on card issuance.
  child_customer_hash_id: 'child_customer_hash_id_example', # String | This field contains the unique child customer identifier generated when new child customer created.
  customer_hash_id: 'customer_hash_id_example', # String | Unique identifier generated with customer creation.
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
  system_trace_audit_number: 'system_trace_audit_number_example', # String | This parameter can filter the transactions based on systemTraceAuditNumber.
  tag_key: 'tag_key_example', # String | This parameter can filter the transactions, based on the exact value of tagKey defined against transactions. This can be used as an independent search parameter.
  tag_value: 'tag_value_example', # String | This parameter can filter the transactions, based on the approximating value of tagValue(that may be mapped for a tagKey defined against transactions). This can be used as an independent search parameter.
  transaction_currency: 'transaction_currency_example', # String | This field contains the 3-letter [ISO-4217 transaction currency code](https://www.iso.org/iso-4217-currency-codes.html).
  transaction_type: 'transaction_type_example', # String | This field contains the transaction can be one of the complete list of transactions mentioned in [Glossary of Transaction Types](https://docs.nium.com/baas/get-transactions#glossary-of-transaction-types).
  transactions_labels_key: 'transactions_labels_key_example', # String | This parameter can filter the transactions based on transactionsLabelsKey.
  transactions_labels_value: 'transactions_labels_value_example', # String | This parameter can filter the transactions based on transactionsLabelsValue.
  wallet_hash_id: 'wallet_hash_id_example', # String | Unique wallet identifier generated simultaneously with customer creation.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Client Transactions
  result = api_instance.client_transactions(client_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ClientTransactionsApi->client_transactions: #{e}"
end
```

#### Using the client_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientTransactionsResponseDTO>, Integer, Hash)> client_transactions_with_http_info(client_hash_id, opts)

```ruby
begin
  # Client Transactions
  data, status_code, headers = api_instance.client_transactions_with_http_info(client_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientTransactionsResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling ClientTransactionsApi->client_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. &gt;ℹ️ INFO  &gt;Query parameters are optional. If query parameters are not passed then by default three months transactions will be returned. |  |
| **auth_code** | **String** | This parameter can be used to filter the transactions based on the authorization code. In case of fund wallet transactions you can provide the systemReferenceNumber as value. | [optional] |
| **auth_currency** | **String** | This parameter can filter the transactions based on auth currency and accepts 3-letter [ISO-4217 transaction currency code](https://docs.nium.com/apis/docs/currency-and-country-codes). | [optional] |
| **business_transaction** | **Boolean** | This parameter can filter the transactions based on businessTransaction flag. | [optional] |
| **card_hash_id** | **String** | This field can apply the filter based on the unique card identifier generated during new/add-on card issuance. | [optional] |
| **child_customer_hash_id** | **String** | This field contains the unique child customer identifier generated when new child customer created. | [optional] |
| **customer_hash_id** | **String** | Unique identifier generated with customer creation. | [optional] |
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
| **system_trace_audit_number** | **String** | This parameter can filter the transactions based on systemTraceAuditNumber. | [optional] |
| **tag_key** | **String** | This parameter can filter the transactions, based on the exact value of tagKey defined against transactions. This can be used as an independent search parameter. | [optional] |
| **tag_value** | **String** | This parameter can filter the transactions, based on the approximating value of tagValue(that may be mapped for a tagKey defined against transactions). This can be used as an independent search parameter. | [optional] |
| **transaction_currency** | **String** | This field contains the 3-letter [ISO-4217 transaction currency code](https://www.iso.org/iso-4217-currency-codes.html). | [optional] |
| **transaction_type** | **String** | This field contains the transaction can be one of the complete list of transactions mentioned in [Glossary of Transaction Types](https://docs.nium.com/baas/get-transactions#glossary-of-transaction-types). | [optional] |
| **transactions_labels_key** | **String** | This parameter can filter the transactions based on transactionsLabelsKey. | [optional] |
| **transactions_labels_value** | **String** | This parameter can filter the transactions based on transactionsLabelsValue. | [optional] |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ClientTransactionsResponseDTO**](ClientTransactionsResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

