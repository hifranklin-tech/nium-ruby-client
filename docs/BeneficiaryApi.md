# NiumClient::BeneficiaryApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**account_verification**](BeneficiaryApi.md#account_verification) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/accountVerification | Account verification (Confirmation of Payee) |
| [**add_beneficiary**](BeneficiaryApi.md#add_beneficiary) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/beneficiaries | Add Beneficiary |
| [**add_beneficiary_v2**](BeneficiaryApi.md#add_beneficiary_v2) | **POST** /api/v2/client/{clientHashId}/customer/{customerHashId}/beneficiaries | Add Beneficiary V2 |
| [**beneficiary_details**](BeneficiaryApi.md#beneficiary_details) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/beneficiaries/{beneficiaryHashId} | Beneficiary Details |
| [**beneficiary_details_v2**](BeneficiaryApi.md#beneficiary_details_v2) | **GET** /api/v2/client/{clientHashId}/customer/{customerHashId}/beneficiaries/{beneficiaryHashId} | Beneficiary Details V2 |
| [**beneficiary_list**](BeneficiaryApi.md#beneficiary_list) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/beneficiaries | Beneficiary List |
| [**beneficiary_list_v2**](BeneficiaryApi.md#beneficiary_list_v2) | **GET** /api/v2/client/{clientHashId}/customer/{customerHashId}/beneficiaries | Beneficiary List V2 |
| [**beneficiary_validation_schema**](BeneficiaryApi.md#beneficiary_validation_schema) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/currency/{currencyCode}/validationSchemas | Beneficiary Validation Schema |
| [**beneficiary_validation_schema_v2**](BeneficiaryApi.md#beneficiary_validation_schema_v2) | **GET** /api/v2/client/{clientHashId}/customer/{customerHashId}/currency/{currencyCode}/validationSchemas | Beneficiary Validation Schema V2 |
| [**confirmationof_payee**](BeneficiaryApi.md#confirmationof_payee) | **POST** /api/v2/client/{clientHashId}/customer/{customerHashId}/beneficiaries/validate | Confirmation of Payee (Previous version) |
| [**delete_beneficiary**](BeneficiaryApi.md#delete_beneficiary) | **DELETE** /api/v1/client/{clientHashId}/customer/{customerHashId}/beneficiaries/{beneficiaryHashId} | Delete Beneficiary |
| [**update_beneficiary**](BeneficiaryApi.md#update_beneficiary) | **PUT** /api/v1/client/{clientHashId}/customer/{customerHashId}/beneficiaries/{beneficiaryHashId} | Update Beneficiary |
| [**update_beneficiary_v2**](BeneficiaryApi.md#update_beneficiary_v2) | **PUT** /api/v2/client/{clientHashId}/customer/{customerHashId}/beneficiaries/{beneficiaryHashId} | Update Beneficiary V2 |


## account_verification

> <AccountValidationResponseDTO> account_verification(client_hash_id, customer_hash_id, account_validation_request_dto, opts)

Account verification (Confirmation of Payee)

This API allows you to verify a beneficiary account details. > > ℹ️ INFO   >This API only supports account verification for certain destination corridors. >Refer to the   [Account verification user guide](/apis/docs/account-verification#supported-corridors-for-account-verification) for details.

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

api_instance = NiumClient::BeneficiaryApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
account_validation_request_dto = NiumClient::AccountValidationRequestDTO.new({bank_account_type: 'CHECKING', destination_currency: 'destination_currency_example', payout_method: 'CARD'}) # AccountValidationRequestDTO | accountValidationRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Account verification (Confirmation of Payee)
  result = api_instance.account_verification(client_hash_id, customer_hash_id, account_validation_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->account_verification: #{e}"
end
```

#### Using the account_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountValidationResponseDTO>, Integer, Hash)> account_verification_with_http_info(client_hash_id, customer_hash_id, account_validation_request_dto, opts)

```ruby
begin
  # Account verification (Confirmation of Payee)
  data, status_code, headers = api_instance.account_verification_with_http_info(client_hash_id, customer_hash_id, account_validation_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountValidationResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->account_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **account_validation_request_dto** | [**AccountValidationRequestDTO**](AccountValidationRequestDTO.md) | accountValidationRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**AccountValidationResponseDTO**](AccountValidationResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_beneficiary

> <Resource> add_beneficiary(client_hash_id, customer_hash_id, add_beneficiary_request, opts)

Add Beneficiary

This API allows you to add a beneficiary to transfer funds.  >⚠️ WARNING   >This API version is deprecated. Eventually, a deprecated API version becomes unsupported. [Add Beneficiary V2](/apis/reference/addbeneficiaryv2) is the latest version of this API.

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

api_instance = NiumClient::BeneficiaryApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
add_beneficiary_request = NiumClient::AddBeneficiaryRequest.new({beneficiary_detail: NiumClient::BeneficiaryDetailRequest.new({account_type: 'account_type_example', country_code: 'country_code_example', name: 'name_example'}), payout_detail: NiumClient::PayoutRequest.new({destination_currency: 'destination_currency_example', payout_method: 'LOCAL'})}) # AddBeneficiaryRequest | addBeneficiaryRequest
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Add Beneficiary
  result = api_instance.add_beneficiary(client_hash_id, customer_hash_id, add_beneficiary_request, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->add_beneficiary: #{e}"
end
```

#### Using the add_beneficiary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> add_beneficiary_with_http_info(client_hash_id, customer_hash_id, add_beneficiary_request, opts)

```ruby
begin
  # Add Beneficiary
  data, status_code, headers = api_instance.add_beneficiary_with_http_info(client_hash_id, customer_hash_id, add_beneficiary_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->add_beneficiary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **add_beneficiary_request** | [**AddBeneficiaryRequest**](AddBeneficiaryRequest.md) | addBeneficiaryRequest |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## add_beneficiary_v2

> <BeneficiaryResponseDTO> add_beneficiary_v2(client_hash_id, customer_hash_id, add_beneficiary_request_dto, opts)

Add Beneficiary V2

This API allows you to add a beneficiary to transfer funds.   > ⚠️ IMPORTANT    Some fields are conditional based on corridors. Use the [Beneficiary Validation Schema V2](/apis/reference/beneficiaryvalidationschemav2) with the currency code and payout method to determine if a field is required or not.

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

api_instance = NiumClient::BeneficiaryApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
add_beneficiary_request_dto = NiumClient::AddBeneficiaryRequestDTO.new({beneficiary_account_type: 'INDIVIDUAL', beneficiary_country_code: 'beneficiary_country_code_example', beneficiary_name: 'beneficiary_name_example', destination_currency: 'destination_currency_example', payout_method: 'payout_method_example'}) # AddBeneficiaryRequestDTO | addBeneficiaryRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Add Beneficiary V2
  result = api_instance.add_beneficiary_v2(client_hash_id, customer_hash_id, add_beneficiary_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->add_beneficiary_v2: #{e}"
end
```

#### Using the add_beneficiary_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BeneficiaryResponseDTO>, Integer, Hash)> add_beneficiary_v2_with_http_info(client_hash_id, customer_hash_id, add_beneficiary_request_dto, opts)

```ruby
begin
  # Add Beneficiary V2
  data, status_code, headers = api_instance.add_beneficiary_v2_with_http_info(client_hash_id, customer_hash_id, add_beneficiary_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BeneficiaryResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->add_beneficiary_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **add_beneficiary_request_dto** | [**AddBeneficiaryRequestDTO**](AddBeneficiaryRequestDTO.md) | addBeneficiaryRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**BeneficiaryResponseDTO**](BeneficiaryResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## beneficiary_details

> <Resource> beneficiary_details(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)

Beneficiary Details

This API allows you to fetch beneficiary details of an individual beneficiary.  >⚠️ WARNING   >This API version is deprecated. Eventually, a deprecated API version becomes unsupported. [Beneficiary Details V2](/apis/reference/beneficiarydetailsv2) is the latest version of this API.

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

api_instance = NiumClient::BeneficiaryApi.new
beneficiary_hash_id = 'beneficiary_hash_id_example' # String | Unique beneficiary hash ID.
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Beneficiary Details
  result = api_instance.beneficiary_details(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->beneficiary_details: #{e}"
end
```

#### Using the beneficiary_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> beneficiary_details_with_http_info(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Beneficiary Details
  data, status_code, headers = api_instance.beneficiary_details_with_http_info(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->beneficiary_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **beneficiary_hash_id** | **String** | Unique beneficiary hash ID. |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## beneficiary_details_v2

> <BeneficiaryResponseDTO> beneficiary_details_v2(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)

Beneficiary Details V2

This API allows you to fetch beneficiary details of an individual beneficiary.

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

api_instance = NiumClient::BeneficiaryApi.new
beneficiary_hash_id = 'beneficiary_hash_id_example' # String | Unique beneficiary hash ID.
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Beneficiary Details V2
  result = api_instance.beneficiary_details_v2(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->beneficiary_details_v2: #{e}"
end
```

#### Using the beneficiary_details_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BeneficiaryResponseDTO>, Integer, Hash)> beneficiary_details_v2_with_http_info(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Beneficiary Details V2
  data, status_code, headers = api_instance.beneficiary_details_v2_with_http_info(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BeneficiaryResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->beneficiary_details_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **beneficiary_hash_id** | **String** | Unique beneficiary hash ID. |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**BeneficiaryResponseDTO**](BeneficiaryResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## beneficiary_list

> <Resource> beneficiary_list(client_hash_id, customer_hash_id, opts)

Beneficiary List

This API allows you to fetch beneficiary details.  >⚠️ WARNING   >This API version is deprecated. Eventually, a deprecated API version becomes unsupported. [Beneficiary List V2](/apis/reference/beneficiarylistv2) is the latest version of this API.

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

api_instance = NiumClient::BeneficiaryApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  parameters: [{ key: 'inner_example'}], # Array<Hash<String, String>> | parameters
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Beneficiary List
  result = api_instance.beneficiary_list(client_hash_id, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->beneficiary_list: #{e}"
end
```

#### Using the beneficiary_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> beneficiary_list_with_http_info(client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Beneficiary List
  data, status_code, headers = api_instance.beneficiary_list_with_http_info(client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->beneficiary_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **parameters** | [**Array&lt;Hash&lt;String, String&gt;&gt;**](Hash&lt;String, String&gt;.md) | parameters | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## beneficiary_list_v2

> <Array<BeneficiaryResponseDTO>> beneficiary_list_v2(client_hash_id, customer_hash_id, opts)

Beneficiary List V2

This API allows you to fetch beneficiary details.

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

api_instance = NiumClient::BeneficiaryApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  parameters: [{ key: 'inner_example'}], # Array<Hash<String, String>> | parameters
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Beneficiary List V2
  result = api_instance.beneficiary_list_v2(client_hash_id, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->beneficiary_list_v2: #{e}"
end
```

#### Using the beneficiary_list_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BeneficiaryResponseDTO>>, Integer, Hash)> beneficiary_list_v2_with_http_info(client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Beneficiary List V2
  data, status_code, headers = api_instance.beneficiary_list_v2_with_http_info(client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BeneficiaryResponseDTO>>
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->beneficiary_list_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **parameters** | [**Array&lt;Hash&lt;String, String&gt;&gt;**](Hash&lt;String, String&gt;.md) | parameters | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Array&lt;BeneficiaryResponseDTO&gt;**](BeneficiaryResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## beneficiary_validation_schema

> <Resource> beneficiary_validation_schema(client_hash_id, currency_code, customer_hash_id, opts)

Beneficiary Validation Schema

This API will allow you to fetch the validation schema for beneficiary validation details.  >⚠️ WARNING   >This API version is deprecated. Eventually, a deprecated API version becomes unsupported. [Beneficiary Validation Schema V2](/apis/reference/beneficiaryvalidationschemav2) is the latest version of this API.

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

api_instance = NiumClient::BeneficiaryApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
currency_code = 'currency_code_example' # String | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes).
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  payout_method: 'payout_method_example', # String | This field can accept the different modes of payout.This field can accept one of the following values: 1.LOCAL 2.SWIFT 3.WALLET Default value of the parameter is LOCAL.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Beneficiary Validation Schema
  result = api_instance.beneficiary_validation_schema(client_hash_id, currency_code, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->beneficiary_validation_schema: #{e}"
end
```

#### Using the beneficiary_validation_schema_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> beneficiary_validation_schema_with_http_info(client_hash_id, currency_code, customer_hash_id, opts)

```ruby
begin
  # Beneficiary Validation Schema
  data, status_code, headers = api_instance.beneficiary_validation_schema_with_http_info(client_hash_id, currency_code, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->beneficiary_validation_schema_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **currency_code** | **String** | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes). |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **payout_method** | **String** | This field can accept the different modes of payout.This field can accept one of the following values: 1.LOCAL 2.SWIFT 3.WALLET Default value of the parameter is LOCAL. | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## beneficiary_validation_schema_v2

> String beneficiary_validation_schema_v2(client_hash_id, currency_code, customer_hash_id, opts)

Beneficiary Validation Schema V2

This API will allow you to fetch the validation schema for beneficiary validation details.

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

api_instance = NiumClient::BeneficiaryApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
currency_code = 'currency_code_example' # String | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes).
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  payout_method: 'payout_method_example', # String | This field can accept the different modes of payout.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Beneficiary Validation Schema V2
  result = api_instance.beneficiary_validation_schema_v2(client_hash_id, currency_code, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->beneficiary_validation_schema_v2: #{e}"
end
```

#### Using the beneficiary_validation_schema_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> beneficiary_validation_schema_v2_with_http_info(client_hash_id, currency_code, customer_hash_id, opts)

```ruby
begin
  # Beneficiary Validation Schema V2
  data, status_code, headers = api_instance.beneficiary_validation_schema_v2_with_http_info(client_hash_id, currency_code, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->beneficiary_validation_schema_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **currency_code** | **String** | This field accepts the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes). |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **payout_method** | **String** | This field can accept the different modes of payout. | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

**String**

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## confirmationof_payee

> <BeneficiaryValidationResponseDTO> confirmationof_payee(client_hash_id, customer_hash_id, beneficiary_validation_request_dto, opts)

Confirmation of Payee (Previous version)

This API allows you to Validate Beneficiary Details.  >ℹ️ INFO   >This API only supports account verification for below destination corridors. >**For LOCAL payment method:** Vietnam (VN), Thailand (TH), India (IN), Pakistan(PK), Malaysia(MY), Indonesia (ID) >**For PROXY payment method:** Singapore (SG), India (IN), Malaysia(MY)

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

api_instance = NiumClient::BeneficiaryApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
beneficiary_validation_request_dto = NiumClient::BeneficiaryValidationRequestDTO.new({destination_country: 'destination_country_example', payout_method: 'payout_method_example'}) # BeneficiaryValidationRequestDTO | beneficiaryValidationRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Confirmation of Payee (Previous version)
  result = api_instance.confirmationof_payee(client_hash_id, customer_hash_id, beneficiary_validation_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->confirmationof_payee: #{e}"
end
```

#### Using the confirmationof_payee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BeneficiaryValidationResponseDTO>, Integer, Hash)> confirmationof_payee_with_http_info(client_hash_id, customer_hash_id, beneficiary_validation_request_dto, opts)

```ruby
begin
  # Confirmation of Payee (Previous version)
  data, status_code, headers = api_instance.confirmationof_payee_with_http_info(client_hash_id, customer_hash_id, beneficiary_validation_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BeneficiaryValidationResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->confirmationof_payee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **beneficiary_validation_request_dto** | [**BeneficiaryValidationRequestDTO**](BeneficiaryValidationRequestDTO.md) | beneficiaryValidationRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**BeneficiaryValidationResponseDTO**](BeneficiaryValidationResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_beneficiary

> <Resource> delete_beneficiary(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)

Delete Beneficiary

This API allows you to delete a beneficiary.

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

api_instance = NiumClient::BeneficiaryApi.new
beneficiary_hash_id = 'beneficiary_hash_id_example' # String | Unique beneficiary hash ID.
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Delete Beneficiary
  result = api_instance.delete_beneficiary(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->delete_beneficiary: #{e}"
end
```

#### Using the delete_beneficiary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> delete_beneficiary_with_http_info(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Delete Beneficiary
  data, status_code, headers = api_instance.delete_beneficiary_with_http_info(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->delete_beneficiary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **beneficiary_hash_id** | **String** | Unique beneficiary hash ID. |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## update_beneficiary

> <Resource> update_beneficiary(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)

Update Beneficiary

This API allows you to update beneficiary details.

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

api_instance = NiumClient::BeneficiaryApi.new
beneficiary_hash_id = 'beneficiary_hash_id_example' # String | Unique beneficiary hash ID.
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  x_request_id: '{{$guid}}', # String | Enter a unique UUID value
  add_beneficiary_request: NiumClient::AddBeneficiaryRequest.new({beneficiary_detail: NiumClient::BeneficiaryDetailRequest.new({account_type: 'account_type_example', country_code: 'country_code_example', name: 'name_example'}), payout_detail: NiumClient::PayoutRequest.new({destination_currency: 'destination_currency_example', payout_method: 'LOCAL'})}) # AddBeneficiaryRequest | Info:  Update Beneficiary API will be restricted when a remittance transaction for the beneficiary is Pending.
}

begin
  # Update Beneficiary
  result = api_instance.update_beneficiary(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->update_beneficiary: #{e}"
end
```

#### Using the update_beneficiary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Resource>, Integer, Hash)> update_beneficiary_with_http_info(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Update Beneficiary
  data, status_code, headers = api_instance.update_beneficiary_with_http_info(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Resource>
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->update_beneficiary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **beneficiary_hash_id** | **String** | Unique beneficiary hash ID. |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |
| **add_beneficiary_request** | [**AddBeneficiaryRequest**](AddBeneficiaryRequest.md) | Info:  Update Beneficiary API will be restricted when a remittance transaction for the beneficiary is Pending. | [optional] |

### Return type

[**Resource**](Resource.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## update_beneficiary_v2

> <BeneficiaryResponseDTO> update_beneficiary_v2(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)

Update Beneficiary V2

This API allows you to update beneficiary details.

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

api_instance = NiumClient::BeneficiaryApi.new
beneficiary_hash_id = 'beneficiary_hash_id_example' # String | Unique beneficiary hash ID.
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  x_request_id: '{{$guid}}', # String | Enter a unique UUID value
  update_beneficiary_request_dto: NiumClient::UpdateBeneficiaryRequestDTO.new({beneficiary_country_code: 'beneficiary_country_code_example', beneficiary_name: 'beneficiary_name_example', destination_currency: 'destination_currency_example', payout_method: 'LOCAL'}) # UpdateBeneficiaryRequestDTO | Info:  Update Beneficiary API will be restricted when a remittance transaction for the beneficiary is Pending.
}

begin
  # Update Beneficiary V2
  result = api_instance.update_beneficiary_v2(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->update_beneficiary_v2: #{e}"
end
```

#### Using the update_beneficiary_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BeneficiaryResponseDTO>, Integer, Hash)> update_beneficiary_v2_with_http_info(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Update Beneficiary V2
  data, status_code, headers = api_instance.update_beneficiary_v2_with_http_info(beneficiary_hash_id, client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BeneficiaryResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling BeneficiaryApi->update_beneficiary_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **beneficiary_hash_id** | **String** | Unique beneficiary hash ID. |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |
| **update_beneficiary_request_dto** | [**UpdateBeneficiaryRequestDTO**](UpdateBeneficiaryRequestDTO.md) | Info:  Update Beneficiary API will be restricted when a remittance transaction for the beneficiary is Pending. | [optional] |

### Return type

[**BeneficiaryResponseDTO**](BeneficiaryResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

