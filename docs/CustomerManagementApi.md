# NiumClient::CustomerManagementApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**account_statement**](CustomerManagementApi.md#account_statement) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/accounts/statement | Account Statement |
| [**block_unblock_customer**](CustomerManagementApi.md#block_unblock_customer) | **PUT** /api/v1/client/{clientHashId}/customer/{customerHashId}/block | Block/Unblock Customer |
| [**customer_details**](CustomerManagementApi.md#customer_details) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId} | Customer Details |
| [**customer_details_v2**](CustomerManagementApi.md#customer_details_v2) | **GET** /api/v2/client/{clientHashId}/customer/{customerHashId} | Customer Details V2 |
| [**customer_list**](CustomerManagementApi.md#customer_list) | **GET** /api/v1/client/{clientHashId}/customers | Customer List |
| [**customer_list_v2**](CustomerManagementApi.md#customer_list_v2) | **GET** /api/v2/client/{clientHashId}/customers | Customer List V2 |
| [**customer_list_v3**](CustomerManagementApi.md#customer_list_v3) | **GET** /api/v3/client/{clientHashId}/customers | Customer List V3 |
| [**manage_customer_tags**](CustomerManagementApi.md#manage_customer_tags) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/tags | Manage Customer Tags |


## account_statement

> account_statement(client_hash_id, customer_hash_id, end_date, start_date, opts)

Account Statement

This API allows you to download an account statement.

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

api_instance = NiumClient::CustomerManagementApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
end_date = 'end_date_example' # String | End date for fetching the transaction details. The format for endDate is YYYY-MM-DD.
start_date = 'start_date_example' # String | From date for fetching the transaction details. The format for startDate is YYYY-MM-DD.
opts = {
  currencies: 'currencies_example', # String | This field accepts the list of currencies in 3-letter [ISO-4217 transaction currency code](https://docs.nium.com/apis/docs/currency-and-country-codes) for which the account statement to be generated. If no currencies are being sent in query param then statement will be generated for all the currencies enabled to the customer.
  file_type: 'file_type_example', # String | This field accepts the file type of the account statement to be generated.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Account Statement
  api_instance.account_statement(client_hash_id, customer_hash_id, end_date, start_date, opts)
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->account_statement: #{e}"
end
```

#### Using the account_statement_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> account_statement_with_http_info(client_hash_id, customer_hash_id, end_date, start_date, opts)

```ruby
begin
  # Account Statement
  data, status_code, headers = api_instance.account_statement_with_http_info(client_hash_id, customer_hash_id, end_date, start_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->account_statement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **end_date** | **String** | End date for fetching the transaction details. The format for endDate is YYYY-MM-DD. |  |
| **start_date** | **String** | From date for fetching the transaction details. The format for startDate is YYYY-MM-DD. |  |
| **currencies** | **String** | This field accepts the list of currencies in 3-letter [ISO-4217 transaction currency code](https://docs.nium.com/apis/docs/currency-and-country-codes) for which the account statement to be generated. If no currencies are being sent in query param then statement will be generated for all the currencies enabled to the customer. | [optional] |
| **file_type** | **String** | This field accepts the file type of the account statement to be generated. | [optional][default to &#39;pdf&#39;] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

nil (empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## block_unblock_customer

> <CustomerApiError> block_unblock_customer(client_hash_id, customer_hash_id, block_customer_request_dto, opts)

Block/Unblock Customer

This API allows you to permanently block or temporarily block/unblock a customer.

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

api_instance = NiumClient::CustomerManagementApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
block_customer_request_dto = NiumClient::BlockCustomerRequestDTO.new({action: 'TEMPORARY_BLOCK', reason: 'CUSTOMER_REQUEST'}) # BlockCustomerRequestDTO | blockCustomerRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Block/Unblock Customer
  result = api_instance.block_unblock_customer(client_hash_id, customer_hash_id, block_customer_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->block_unblock_customer: #{e}"
end
```

#### Using the block_unblock_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerApiError>, Integer, Hash)> block_unblock_customer_with_http_info(client_hash_id, customer_hash_id, block_customer_request_dto, opts)

```ruby
begin
  # Block/Unblock Customer
  data, status_code, headers = api_instance.block_unblock_customer_with_http_info(client_hash_id, customer_hash_id, block_customer_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerApiError>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->block_unblock_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **block_customer_request_dto** | [**BlockCustomerRequestDTO**](BlockCustomerRequestDTO.md) | blockCustomerRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**CustomerApiError**](CustomerApiError.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## customer_details

> <CustomerDetailResponse> customer_details(client_hash_id, customer_hash_id, opts)

Customer Details

This API allows you to fetch details for a specific customer.   >⚠️ WARNING   To access updated functionality and features we recommed using the latest version of this API [Customer Details V2](/apis/reference/customerdetailsv2). In December 2023, this API version will be deprecated and becomes unsupported.

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

api_instance = NiumClient::CustomerManagementApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Customer Details
  result = api_instance.customer_details(client_hash_id, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->customer_details: #{e}"
end
```

#### Using the customer_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerDetailResponse>, Integer, Hash)> customer_details_with_http_info(client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Customer Details
  data, status_code, headers = api_instance.customer_details_with_http_info(client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerDetailResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->customer_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**CustomerDetailResponse**](CustomerDetailResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## customer_details_v2

> <CustomerDetailsResponseV2DTO> customer_details_v2(client_hash_id, customer_hash_id, opts)

Customer Details V2

This API allows you to fetch details for a specific customer.

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

api_instance = NiumClient::CustomerManagementApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Customer Details V2
  result = api_instance.customer_details_v2(client_hash_id, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->customer_details_v2: #{e}"
end
```

#### Using the customer_details_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerDetailsResponseV2DTO>, Integer, Hash)> customer_details_v2_with_http_info(client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Customer Details V2
  data, status_code, headers = api_instance.customer_details_v2_with_http_info(client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerDetailsResponseV2DTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->customer_details_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**CustomerDetailsResponseV2DTO**](CustomerDetailsResponseV2DTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## customer_list

> <Array<CustomerDetailResponse>> customer_list(client_hash_id, opts)

Customer List

This API allows you to fetch the customers for the client. It also supports query parameters based filtering to fetch details of a customer with email or mobile.   >⚠️ WARNING   To access updated functionality and features we recommed using the latest version of this API [Customer List V2](/apis/reference/customerlistv2). In December 2023, this API version will be deprecated and becomes unsupported.

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

api_instance = NiumClient::CustomerManagementApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
opts = {
  email: 'email_example', # String | This field accepts the email ID of the customer.
  mobile: 'mobile_example', # String | This field accepts the mobile number of a customer--digits only--without the country code.
  order: 'ASC', # String | This field accepts the order which can be ASC or DESC.
  page: 'page_example', # String | This field accepts the page number to be returned. The acceptable values are 0-N.  This field works with size field such that total number of records/size of each page = number of pages(N).  This field can then give a particular page.
  size: 'size_example', # String | This field accepts the number of elements per page.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Customer List
  result = api_instance.customer_list(client_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->customer_list: #{e}"
end
```

#### Using the customer_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CustomerDetailResponse>>, Integer, Hash)> customer_list_with_http_info(client_hash_id, opts)

```ruby
begin
  # Customer List
  data, status_code, headers = api_instance.customer_list_with_http_info(client_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CustomerDetailResponse>>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->customer_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **email** | **String** | This field accepts the email ID of the customer. | [optional] |
| **mobile** | **String** | This field accepts the mobile number of a customer--digits only--without the country code. | [optional] |
| **order** | **String** | This field accepts the order which can be ASC or DESC. | [optional] |
| **page** | **String** | This field accepts the page number to be returned. The acceptable values are 0-N.  This field works with size field such that total number of records/size of each page &#x3D; number of pages(N).  This field can then give a particular page. | [optional] |
| **size** | **String** | This field accepts the number of elements per page. | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Array&lt;CustomerDetailResponse&gt;**](CustomerDetailResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## customer_list_v2

> <PaginatedCustomerDetailsResponseV2DTO> customer_list_v2(client_hash_id, opts)

Customer List V2

This API allows you to fetch customer lists under a client with optional search parameters.

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

api_instance = NiumClient::CustomerManagementApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
opts = {
  business_registration_number: 'business_registration_number_example', # String | This field accepts the business registration number of corporate customer.
  email: 'email_example', # String | This field accepts the email ID of the customer.
  mobile: 'mobile_example', # String | This field accepts the mobile number of a customer without the country code.
  order: 'ASC', # String | This field accepts the order which can be ASC or DESC.
  page: 'page_example', # String | This field accepts the page number to be returned. The acceptable values are 0-N.  This field works with size field such that total number of records/size of each page = number of pages(N).  This field can then give a particular page.
  size: 'size_example', # String | This field accepts the number of elements per page.
  tag_key: 'tag_key_example', # String | This parameter can filter the customers, based on the exact value of tagKey defined against customers. This can be used as an independent search parameter.
  tag_value: 'tag_value_example', # String | This parameter can filter the customers, based on the approximating value of tagValue(that may be mapped for a tagKey defined against customers). This can be used as an independent search parameter.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Customer List V2
  result = api_instance.customer_list_v2(client_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->customer_list_v2: #{e}"
end
```

#### Using the customer_list_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCustomerDetailsResponseV2DTO>, Integer, Hash)> customer_list_v2_with_http_info(client_hash_id, opts)

```ruby
begin
  # Customer List V2
  data, status_code, headers = api_instance.customer_list_v2_with_http_info(client_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCustomerDetailsResponseV2DTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->customer_list_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **business_registration_number** | **String** | This field accepts the business registration number of corporate customer. | [optional] |
| **email** | **String** | This field accepts the email ID of the customer. | [optional] |
| **mobile** | **String** | This field accepts the mobile number of a customer without the country code. | [optional] |
| **order** | **String** | This field accepts the order which can be ASC or DESC. | [optional] |
| **page** | **String** | This field accepts the page number to be returned. The acceptable values are 0-N.  This field works with size field such that total number of records/size of each page &#x3D; number of pages(N).  This field can then give a particular page. | [optional] |
| **size** | **String** | This field accepts the number of elements per page. | [optional] |
| **tag_key** | **String** | This parameter can filter the customers, based on the exact value of tagKey defined against customers. This can be used as an independent search parameter. | [optional] |
| **tag_value** | **String** | This parameter can filter the customers, based on the approximating value of tagValue(that may be mapped for a tagKey defined against customers). This can be used as an independent search parameter. | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**PaginatedCustomerDetailsResponseV2DTO**](PaginatedCustomerDetailsResponseV2DTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## customer_list_v3

> <PaginatedResponseDTOCustomerDetailsResponseV2DTO> customer_list_v3(client_hash_id, opts)

Customer List V3

This API allows you to fetch customer lists under a client with optional search parameters.

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

api_instance = NiumClient::CustomerManagementApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
opts = {
  business_registration_number: 'business_registration_number_example', # String | This field accepts the business registration number of corporate customer.
  customer_type: 'INDIVIDUAL', # String | This field accepts the type of customer.
  email: 'email_example', # String | This field accepts the email ID of the customer.
  mobile: 'mobile_example', # String | This field accepts the mobile number of a customer without the country code.
  order: 'ASC', # String | This field accepts the order which can be ASC or DESC.
  page: 'page_example', # String | This field accepts the page number to be returned. The acceptable values are 0-N.  This field works with size field such that total number of records/size of each page = number of pages(N).  This field can then give a particular page.
  parent_customer_hash_id: '190dddbe-fdbc-48fe-a7c2-d55266e9acf5', # String | This field contains the unique parent customer identifier generated at the time of customer creation.
  size: 'size_example', # String | This field accepts the number of elements per page.
  tag_key: 'tag_key_example', # String | This parameter can filter the customers, based on the exact value of tagKey defined against customers. This can be used as an independent search parameter.
  tag_value: 'tag_value_example', # String | This parameter can filter the customers, based on the approximating value of tagValue(that may be mapped for a tagKey defined against customers). This can be used as an independent search parameter.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Customer List V3
  result = api_instance.customer_list_v3(client_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->customer_list_v3: #{e}"
end
```

#### Using the customer_list_v3_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedResponseDTOCustomerDetailsResponseV2DTO>, Integer, Hash)> customer_list_v3_with_http_info(client_hash_id, opts)

```ruby
begin
  # Customer List V3
  data, status_code, headers = api_instance.customer_list_v3_with_http_info(client_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedResponseDTOCustomerDetailsResponseV2DTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->customer_list_v3_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **business_registration_number** | **String** | This field accepts the business registration number of corporate customer. | [optional] |
| **customer_type** | **String** | This field accepts the type of customer. | [optional] |
| **email** | **String** | This field accepts the email ID of the customer. | [optional] |
| **mobile** | **String** | This field accepts the mobile number of a customer without the country code. | [optional] |
| **order** | **String** | This field accepts the order which can be ASC or DESC. | [optional] |
| **page** | **String** | This field accepts the page number to be returned. The acceptable values are 0-N.  This field works with size field such that total number of records/size of each page &#x3D; number of pages(N).  This field can then give a particular page. | [optional] |
| **parent_customer_hash_id** | **String** | This field contains the unique parent customer identifier generated at the time of customer creation. | [optional] |
| **size** | **String** | This field accepts the number of elements per page. | [optional] |
| **tag_key** | **String** | This parameter can filter the customers, based on the exact value of tagKey defined against customers. This can be used as an independent search parameter. | [optional] |
| **tag_value** | **String** | This parameter can filter the customers, based on the approximating value of tagValue(that may be mapped for a tagKey defined against customers). This can be used as an independent search parameter. | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**PaginatedResponseDTOCustomerDetailsResponseV2DTO**](PaginatedResponseDTOCustomerDetailsResponseV2DTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## manage_customer_tags

> <CustomerClientTagsResponseDTO> manage_customer_tags(client_hash_id, customer_hash_id, customer_client_tags_request_dto, opts)

Manage Customer Tags

This API allows you to add, update, and delete customer tags.

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

api_instance = NiumClient::CustomerManagementApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated during customer creation.
customer_client_tags_request_dto = NiumClient::CustomerClientTagsRequestDTO.new({tags: [NiumClient::CustomerClientTagRequestDTO.new({action: 'MAINTAIN', key: 'key_example', value: 'value_example'})]}) # CustomerClientTagsRequestDTO | tags
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Manage Customer Tags
  result = api_instance.manage_customer_tags(client_hash_id, customer_hash_id, customer_client_tags_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->manage_customer_tags: #{e}"
end
```

#### Using the manage_customer_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerClientTagsResponseDTO>, Integer, Hash)> manage_customer_tags_with_http_info(client_hash_id, customer_hash_id, customer_client_tags_request_dto, opts)

```ruby
begin
  # Manage Customer Tags
  data, status_code, headers = api_instance.manage_customer_tags_with_http_info(client_hash_id, customer_hash_id, customer_client_tags_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerClientTagsResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerManagementApi->manage_customer_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated during customer creation. |  |
| **customer_client_tags_request_dto** | [**CustomerClientTagsRequestDTO**](CustomerClientTagsRequestDTO.md) | tags |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**CustomerClientTagsResponseDTO**](CustomerClientTagsResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

