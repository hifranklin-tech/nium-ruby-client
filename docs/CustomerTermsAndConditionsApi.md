# NiumClient::CustomerTermsAndConditionsApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accept_termsand_conditions**](CustomerTermsAndConditionsApi.md#accept_termsand_conditions) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/termsAndConditions | Accept Terms and Conditions |
| [**termsand_conditions**](CustomerTermsAndConditionsApi.md#termsand_conditions) | **GET** /api/v1/client/{clientHashId}/termsAndConditions | Terms and Conditions |


## accept_termsand_conditions

> <TermsAndConditionsAcceptResponseDTO> accept_termsand_conditions(client_hash_id, customer_hash_id, terms_and_conditions_request_dto, opts)

Accept Terms and Conditions

This API updates the Terms and Conditions acceptance status for a customer

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

api_instance = NiumClient::CustomerTermsAndConditionsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
terms_and_conditions_request_dto = NiumClient::TermsAndConditionsRequestDTO.new({accept: true, name: 'GENERALTNC', version_id: '1.0'}) # TermsAndConditionsRequestDTO | termsAndConditionsRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Accept Terms and Conditions
  result = api_instance.accept_termsand_conditions(client_hash_id, customer_hash_id, terms_and_conditions_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerTermsAndConditionsApi->accept_termsand_conditions: #{e}"
end
```

#### Using the accept_termsand_conditions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TermsAndConditionsAcceptResponseDTO>, Integer, Hash)> accept_termsand_conditions_with_http_info(client_hash_id, customer_hash_id, terms_and_conditions_request_dto, opts)

```ruby
begin
  # Accept Terms and Conditions
  data, status_code, headers = api_instance.accept_termsand_conditions_with_http_info(client_hash_id, customer_hash_id, terms_and_conditions_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TermsAndConditionsAcceptResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerTermsAndConditionsApi->accept_termsand_conditions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **terms_and_conditions_request_dto** | [**TermsAndConditionsRequestDTO**](TermsAndConditionsRequestDTO.md) | termsAndConditionsRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**TermsAndConditionsAcceptResponseDTO**](TermsAndConditionsAcceptResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## termsand_conditions

> <TermsAndConditionsResponseDTO> termsand_conditions(client_hash_id, opts)

Terms and Conditions

This API allows you to fetch the mandatory Terms and Conditions for individual customer onboarding. Refer to the [T&C flow chart](/apis/docs/customer-life-cycle#terms-and-conditions) for more details.

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

api_instance = NiumClient::CustomerTermsAndConditionsApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Terms and Conditions
  result = api_instance.termsand_conditions(client_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerTermsAndConditionsApi->termsand_conditions: #{e}"
end
```

#### Using the termsand_conditions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TermsAndConditionsResponseDTO>, Integer, Hash)> termsand_conditions_with_http_info(client_hash_id, opts)

```ruby
begin
  # Terms and Conditions
  data, status_code, headers = api_instance.termsand_conditions_with_http_info(client_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TermsAndConditionsResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerTermsAndConditionsApi->termsand_conditions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**TermsAndConditionsResponseDTO**](TermsAndConditionsResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

