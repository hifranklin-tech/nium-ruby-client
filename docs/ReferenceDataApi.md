# NiumClient::ReferenceDataApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**fetch_bank_detailsusing_routing_code**](ReferenceDataApi.md#fetch_bank_detailsusing_routing_code) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/country/{countryCode}/routingCodeType/{routingCodeType}/routingCodeValue/{routingCodeValue}/routingCode | Fetch Bank Details using Routing Code |
| [**fetch_supported_corridors**](ReferenceDataApi.md#fetch_supported_corridors) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/supportedCorridors | Fetch Supported Corridors |
| [**fetch_supported_corridors_v2**](ReferenceDataApi.md#fetch_supported_corridors_v2) | **GET** /api/v2/client/{clientHashId}/supportedCorridors | Fetch Supported Corridors V2 |
| [**search_routing_code_using_bank_name**](ReferenceDataApi.md#search_routing_code_using_bank_name) | **GET** /api/v2/client/{clientHashId}/payout/banks | Search Routing Code Using Bank Name |
| [**search_routing_code_using_branch_name**](ReferenceDataApi.md#search_routing_code_using_branch_name) | **GET** /api/v2/client/{clientHashId}/payout/branches | Search Routing Code Using Branch Name |
| [**search_routing_codeusingbanknamebranchname**](ReferenceDataApi.md#search_routing_codeusingbanknamebranchname) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/partialSearch | Search Routing Code (using bank name/branch name) |


## fetch_bank_detailsusing_routing_code

> <Resource> fetch_bank_detailsusing_routing_code(client_hash_id, country_code, customer_hash_id, routing_code_type, routing_code_value, opts)

Fetch Bank Details using Routing Code

This API allows you to fetch the bank details against the routing information.

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

api_instance = NiumClient::ReferenceDataApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
country_code = 'country_code_example' # String | This field accepts the [2-letter ISO-2 country code](doc:currency-and-country-codes) of a beneficiary.
customer_hash_id = 'customer_hash_id_example' # String | This field accepts the unique customer identifier generated on customer creation.
routing_code_type = 'routing_code_type_example' # String | This field accepts the routing code type 1. The possible values are: SWIFT for all cases where SWIFT is applicable IFSC (relevant for India) ACH CODE (relevant for USA) BSB CODE (relevant for Australia) SORT CODE (relevant for the UK) LOCATION ID (relevant for Nepal) BANK CODE (relevant for few countries including Canada, Hong Kong, Sri Lanka, South Korea, Pakistan, Brazil, and some more) TRANSIT NUMBER (relevant for Canada) BRANCH CODE (relevant for Sri Lanka, Vietnam, Brazil, Uruguay, Kenya and some more) Given that the routing_code_type_1 is a PATH parameter, apply URL encoding. For example, when you want to pass ACH CODE, after URL encoding you will pass it as ACH%20CODE
routing_code_value = 'routing_code_value_example' # String | This field accepts the routing code value 1. Refer to the [Examples of Routing Codes](/apis/docs/routing-codes#examples-of-routing-codes).
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Fetch Bank Details using Routing Code
  result = api_instance.fetch_bank_detailsusing_routing_code(client_hash_id, country_code, customer_hash_id, routing_code_type, routing_code_value, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ReferenceDataApi->fetch_bank_detailsusing_routing_code: #{e}"
end
```

#### Using the fetch_bank_detailsusing_routing_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> fetch_bank_detailsusing_routing_code_with_http_info(client_hash_id, country_code, customer_hash_id, routing_code_type, routing_code_value, opts)

```ruby
begin
  # Fetch Bank Details using Routing Code
  data, status_code, headers = api_instance.fetch_bank_detailsusing_routing_code_with_http_info(client_hash_id, country_code, customer_hash_id, routing_code_type, routing_code_value, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue NiumClient::ApiError => e
  puts "Error when calling ReferenceDataApi->fetch_bank_detailsusing_routing_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **country_code** | **String** | This field accepts the [2-letter ISO-2 country code](doc:currency-and-country-codes) of a beneficiary. |  |
| **customer_hash_id** | **String** | This field accepts the unique customer identifier generated on customer creation. |  |
| **routing_code_type** | **String** | This field accepts the routing code type 1. The possible values are: SWIFT for all cases where SWIFT is applicable IFSC (relevant for India) ACH CODE (relevant for USA) BSB CODE (relevant for Australia) SORT CODE (relevant for the UK) LOCATION ID (relevant for Nepal) BANK CODE (relevant for few countries including Canada, Hong Kong, Sri Lanka, South Korea, Pakistan, Brazil, and some more) TRANSIT NUMBER (relevant for Canada) BRANCH CODE (relevant for Sri Lanka, Vietnam, Brazil, Uruguay, Kenya and some more) Given that the routing_code_type_1 is a PATH parameter, apply URL encoding. For example, when you want to pass ACH CODE, after URL encoding you will pass it as ACH%20CODE |  |
| **routing_code_value** | **String** | This field accepts the routing code value 1. Refer to the [Examples of Routing Codes](/apis/docs/routing-codes#examples-of-routing-codes). |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## fetch_supported_corridors

> <Resource> fetch_supported_corridors(client_hash_id, customer_hash_id, opts)

Fetch Supported Corridors

This API will allow you to fetch the supported corridors for remittance with details.

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

api_instance = NiumClient::ReferenceDataApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Fetch Supported Corridors
  result = api_instance.fetch_supported_corridors(client_hash_id, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ReferenceDataApi->fetch_supported_corridors: #{e}"
end
```

#### Using the fetch_supported_corridors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> fetch_supported_corridors_with_http_info(client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Fetch Supported Corridors
  data, status_code, headers = api_instance.fetch_supported_corridors_with_http_info(client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue NiumClient::ApiError => e
  puts "Error when calling ReferenceDataApi->fetch_supported_corridors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fetch_supported_corridors_v2

> <Array<SupportedCorridorsResponseDTO>> fetch_supported_corridors_v2(client_hash_id, opts)

Fetch Supported Corridors V2

This API will allow you to fetch the supported corridors for remittance with details.

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

api_instance = NiumClient::ReferenceDataApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
opts = {
  beneficiary_account_type: 'beneficiary_account_type_example', # String | This field accepts the beneficiary account type.
  client_type: 'client_type_example', # String | This field accepts type of Client e.g. FI, NonFI, default NonFI.
  customer_type: 'customer_type_example', # String | This field accepts the type of customer.
  destination_country: 'destination_country_example', # String | This field accepts the [2-letter ISO-2 destination country code](https://docs.nium.com/apis/docs/currency-and-country-codes).
  destination_currency: 'destination_currency_example', # String | This field accepts the [3-letter ISO-4217 currency code](https://docs.nium.com/apis/docs/currency-and-country-codes) which will be used to filter the user selected currency and get the payout method.
  payout_method: 'payout_method_example', # String | This field accepts the different modes of payout.
  routing_code_type: 'routing_code_type_example', # String | This field determines the routing code type for the currency.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Fetch Supported Corridors V2
  result = api_instance.fetch_supported_corridors_v2(client_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ReferenceDataApi->fetch_supported_corridors_v2: #{e}"
end
```

#### Using the fetch_supported_corridors_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SupportedCorridorsResponseDTO>>, Integer, Hash)> fetch_supported_corridors_v2_with_http_info(client_hash_id, opts)

```ruby
begin
  # Fetch Supported Corridors V2
  data, status_code, headers = api_instance.fetch_supported_corridors_v2_with_http_info(client_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SupportedCorridorsResponseDTO>>
rescue NiumClient::ApiError => e
  puts "Error when calling ReferenceDataApi->fetch_supported_corridors_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **beneficiary_account_type** | **String** | This field accepts the beneficiary account type. | [optional] |
| **client_type** | **String** | This field accepts type of Client e.g. FI, NonFI, default NonFI. | [optional] |
| **customer_type** | **String** | This field accepts the type of customer. | [optional] |
| **destination_country** | **String** | This field accepts the [2-letter ISO-2 destination country code](https://docs.nium.com/apis/docs/currency-and-country-codes). | [optional] |
| **destination_currency** | **String** | This field accepts the [3-letter ISO-4217 currency code](https://docs.nium.com/apis/docs/currency-and-country-codes) which will be used to filter the user selected currency and get the payout method. | [optional] |
| **payout_method** | **String** | This field accepts the different modes of payout. | [optional] |
| **routing_code_type** | **String** | This field determines the routing code type for the currency. | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Array&lt;SupportedCorridorsResponseDTO&gt;**](SupportedCorridorsResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_routing_code_using_bank_name

> <Array<PartialSearchBankNameResponseDTO>> search_routing_code_using_bank_name(client_hash_id, country_code, routing_code_type, search_value, opts)

Search Routing Code Using Bank Name

This API will allow you to search the routing code details using bank name.

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

api_instance = NiumClient::ReferenceDataApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
country_code = 'country_code_example' # String | This field accepts the [2-letter ISO-2 country code](doc:currency-and-country-codes) for which routing code search is initiated.
routing_code_type = 'IFSC' # String | This field determines the routing code type for the search.
search_value = 'search_value_example' # String | This field accepts the partial or full value of the Bank Name on which the search is initiated, for example, it could be DBS.
opts = {
  bank_code: 'bank_code_example', # String | This field can accept the bank code of specified branch and country.
  bank_name: 'bank_name_example', # String | This field can accept the bank name associated with country.
  currency_code: 'currency_code_example', # String | This field accepts the [3-letter ISO-4217 currency code](doc:currency-and-country-codes) for which routing code search is to be initiated.
  payout_method: 'payout_method_example', # String | This field can accept the different modes of payout. This field can accept one of the following values: LOCAL SWIFT WALLET CARD PROXY(upcoming feature) Default value of the parameter is LOCAL.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Search Routing Code Using Bank Name
  result = api_instance.search_routing_code_using_bank_name(client_hash_id, country_code, routing_code_type, search_value, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ReferenceDataApi->search_routing_code_using_bank_name: #{e}"
end
```

#### Using the search_routing_code_using_bank_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PartialSearchBankNameResponseDTO>>, Integer, Hash)> search_routing_code_using_bank_name_with_http_info(client_hash_id, country_code, routing_code_type, search_value, opts)

```ruby
begin
  # Search Routing Code Using Bank Name
  data, status_code, headers = api_instance.search_routing_code_using_bank_name_with_http_info(client_hash_id, country_code, routing_code_type, search_value, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PartialSearchBankNameResponseDTO>>
rescue NiumClient::ApiError => e
  puts "Error when calling ReferenceDataApi->search_routing_code_using_bank_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **country_code** | **String** | This field accepts the [2-letter ISO-2 country code](doc:currency-and-country-codes) for which routing code search is initiated. |  |
| **routing_code_type** | **String** | This field determines the routing code type for the search. |  |
| **search_value** | **String** | This field accepts the partial or full value of the Bank Name on which the search is initiated, for example, it could be DBS. |  |
| **bank_code** | **String** | This field can accept the bank code of specified branch and country. | [optional] |
| **bank_name** | **String** | This field can accept the bank name associated with country. | [optional] |
| **currency_code** | **String** | This field accepts the [3-letter ISO-4217 currency code](doc:currency-and-country-codes) for which routing code search is to be initiated. | [optional] |
| **payout_method** | **String** | This field can accept the different modes of payout. This field can accept one of the following values: LOCAL SWIFT WALLET CARD PROXY(upcoming feature) Default value of the parameter is LOCAL. | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Array&lt;PartialSearchBankNameResponseDTO&gt;**](PartialSearchBankNameResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_routing_code_using_branch_name

> <Array<PartialSearchBranchNameResponseDTO>> search_routing_code_using_branch_name(client_hash_id, country_code, routing_code_type, search_value, opts)

Search Routing Code Using Branch Name

This API will allow you to search the routing code details using branch name.

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

api_instance = NiumClient::ReferenceDataApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
country_code = 'country_code_example' # String | This field accepts the [2-letter ISO-2 country code](doc:currency-and-country-codes) for which routing code search is initiated.
routing_code_type = 'IFSC' # String | This field determines the routing code type for the search.
search_value = 'search_value_example' # String | This field accepts the partial or full value of the Bank Name on which the search is initiated, for example, it could be DBS.
opts = {
  bank_code: 'bank_code_example', # String | This field can accept the bank code of specified branch and country.
  bank_name: 'bank_name_example', # String | This field can accept the bank name associated with country.
  currency_code: 'currency_code_example', # String | This field accepts the [3-letter ISO-4217 currency code](doc:currency-and-country-codes) for which routing code search is to be initiated.
  payout_method: 'payout_method_example', # String | This field can accept the different modes of payout. This field can accept one of the following values: LOCAL SWIFT WALLET CARD PROXY(upcoming feature) Default value of the parameter is LOCAL.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Search Routing Code Using Branch Name
  result = api_instance.search_routing_code_using_branch_name(client_hash_id, country_code, routing_code_type, search_value, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ReferenceDataApi->search_routing_code_using_branch_name: #{e}"
end
```

#### Using the search_routing_code_using_branch_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PartialSearchBranchNameResponseDTO>>, Integer, Hash)> search_routing_code_using_branch_name_with_http_info(client_hash_id, country_code, routing_code_type, search_value, opts)

```ruby
begin
  # Search Routing Code Using Branch Name
  data, status_code, headers = api_instance.search_routing_code_using_branch_name_with_http_info(client_hash_id, country_code, routing_code_type, search_value, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PartialSearchBranchNameResponseDTO>>
rescue NiumClient::ApiError => e
  puts "Error when calling ReferenceDataApi->search_routing_code_using_branch_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **country_code** | **String** | This field accepts the [2-letter ISO-2 country code](doc:currency-and-country-codes) for which routing code search is initiated. |  |
| **routing_code_type** | **String** | This field determines the routing code type for the search. |  |
| **search_value** | **String** | This field accepts the partial or full value of the Bank Name on which the search is initiated, for example, it could be DBS. |  |
| **bank_code** | **String** | This field can accept the bank code of specified branch and country. | [optional] |
| **bank_name** | **String** | This field can accept the bank name associated with country. | [optional] |
| **currency_code** | **String** | This field accepts the [3-letter ISO-4217 currency code](doc:currency-and-country-codes) for which routing code search is to be initiated. | [optional] |
| **payout_method** | **String** | This field can accept the different modes of payout. This field can accept one of the following values: LOCAL SWIFT WALLET CARD PROXY(upcoming feature) Default value of the parameter is LOCAL. | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Array&lt;PartialSearchBranchNameResponseDTO&gt;**](PartialSearchBranchNameResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_routing_codeusingbanknamebranchname

> <Resource> search_routing_codeusingbanknamebranchname(client_hash_id, customer_hash_id, partial_search_dto, opts)

Search Routing Code (using bank name/branch name)

This API will allow you to search the routing code details of a bank based on certain parameters - i.e., by using bank name or branch name. This API will help you to build a user experience where you can help your users to locate a specific routing code (that could be SWIFT, IFSC, SORT CODE, ACH CODE, etc., - see the list below) by using full or partial name search of bank name or branch name. For example, if your user is looking for SWIFT CODE for HSBC in the UK, then this API can be used to search for the SORT CODE by searching using the bank name.

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

api_instance = NiumClient::ReferenceDataApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
partial_search_dto = NiumClient::PartialSearchDTO.new({routing_code_type: 'IFSC', search_key: 'bank_name', search_value: 'search_value_example'}) # PartialSearchDTO | partialSearchDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Search Routing Code (using bank name/branch name)
  result = api_instance.search_routing_codeusingbanknamebranchname(client_hash_id, customer_hash_id, partial_search_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling ReferenceDataApi->search_routing_codeusingbanknamebranchname: #{e}"
end
```

#### Using the search_routing_codeusingbanknamebranchname_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> search_routing_codeusingbanknamebranchname_with_http_info(client_hash_id, customer_hash_id, partial_search_dto, opts)

```ruby
begin
  # Search Routing Code (using bank name/branch name)
  data, status_code, headers = api_instance.search_routing_codeusingbanknamebranchname_with_http_info(client_hash_id, customer_hash_id, partial_search_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue NiumClient::ApiError => e
  puts "Error when calling ReferenceDataApi->search_routing_codeusingbanknamebranchname_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **partial_search_dto** | [**PartialSearchDTO**](PartialSearchDTO.md) | partialSearchDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

