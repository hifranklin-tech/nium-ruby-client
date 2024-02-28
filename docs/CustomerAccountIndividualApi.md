# NiumClient::CustomerAccountIndividualApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_customer**](CustomerAccountIndividualApi.md#add_customer) | **POST** /api/v1/client/{clientHashId}/customer | Add Customer |
| [**add_customer_using_my_info_sg**](CustomerAccountIndividualApi.md#add_customer_using_my_info_sg) | **POST** /api/v1/client/{clientHashId}/customer-min-data | Add Customer Using MyInfo [SG] |
| [**add_customer_usinge_document_verification**](CustomerAccountIndividualApi.md#add_customer_usinge_document_verification) | **POST** /api/v3/client/{clientHashId}/customer | Add Customer Using e-Document Verification |
| [**customer_update**](CustomerAccountIndividualApi.md#customer_update) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/updateCustomer | Customer Update |
| [**fetch_individual_customer_rfi_details**](CustomerAccountIndividualApi.md#fetch_individual_customer_rfi_details) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/rfi | Fetch Individual Customer RFI Details |
| [**respondto_rfi**](CustomerAccountIndividualApi.md#respondto_rfi) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/rfi | Respond to RFI |
| [**unified_add_customer**](CustomerAccountIndividualApi.md#unified_add_customer) | **POST** /api/v4/client/{clientHashId}/customer | Unified Add Customer |
| [**upload_document**](CustomerAccountIndividualApi.md#upload_document) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/uploadDocuments | Upload Document |


## add_customer

> <CustomerDetailResponseDTO> add_customer(client_hash_id, customer_data_request_dto, opts)

Add Customer

This API allows you to register a customer with a wallet in NIUM's cards platform.  >⚠️ WARNING   >This API version is deprecated. Eventually, a deprecated API version becomes unsupported. [Unified Add Customer](ref:unifiedaddcustomer) is the latest version of this API.

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

api_instance = NiumClient::CustomerAccountIndividualApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_data_request_dto = NiumClient::CustomerDataRequestDTO.new({billing_address1: '72 James Buildin', billing_city: 'Paris', billing_country: 'FR', billing_zip_code: '048581', country_code: 'SG', customer_hash_id: '2992c5c6-823b-4fa9-a64b-add0ea88bb66', date_of_birth: '1995-01-13', delivery_address1: '472 James Building', delivery_city: 'Paris', delivery_country: 'FR', delivery_zip_code: '048581', email: 'arnav42@xyzmail.com', first_name: 'Arnav', last_name: 'Paul', mobile: '991122142', nationality: 'SG', pep: false, tax_details: [NiumClient::CustomerTaxDetailDTO.new]}) # CustomerDataRequestDTO | customerDataRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Add Customer
  result = api_instance.add_customer(client_hash_id, customer_data_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->add_customer: #{e}"
end
```

#### Using the add_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerDetailResponseDTO>, Integer, Hash)> add_customer_with_http_info(client_hash_id, customer_data_request_dto, opts)

```ruby
begin
  # Add Customer
  data, status_code, headers = api_instance.add_customer_with_http_info(client_hash_id, customer_data_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerDetailResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->add_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_data_request_dto** | [**CustomerDataRequestDTO**](CustomerDataRequestDTO.md) | customerDataRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**CustomerDetailResponseDTO**](CustomerDetailResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_customer_using_my_info_sg

> <CustomerDataExternalResponseDTO> add_customer_using_my_info_sg(client_hash_id, customer_data_external_request_dto, opts)

Add Customer Using MyInfo [SG]

This API will create customers using minimal data, the rest of the partial data will be pulled via MyInfo etc. which is locked and cannot be edited and further rest fields can be updated using Customer Update API.  >⚠️ WARNING   >This API version is deprecated. Eventually, a deprecated API version becomes unsupported. [Unified Add Customer](ref:unifiedaddcustomer) is the latest version of this API.

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

api_instance = NiumClient::CustomerAccountIndividualApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_data_external_request_dto = NiumClient::CustomerDataExternalRequestDTO.new({country_code: 'SG', email: 'john@abc.com', mobile: '4435544567'}) # CustomerDataExternalRequestDTO | customerDataExternalRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Add Customer Using MyInfo [SG]
  result = api_instance.add_customer_using_my_info_sg(client_hash_id, customer_data_external_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->add_customer_using_my_info_sg: #{e}"
end
```

#### Using the add_customer_using_my_info_sg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerDataExternalResponseDTO>, Integer, Hash)> add_customer_using_my_info_sg_with_http_info(client_hash_id, customer_data_external_request_dto, opts)

```ruby
begin
  # Add Customer Using MyInfo [SG]
  data, status_code, headers = api_instance.add_customer_using_my_info_sg_with_http_info(client_hash_id, customer_data_external_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerDataExternalResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->add_customer_using_my_info_sg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_data_external_request_dto** | [**CustomerDataExternalRequestDTO**](CustomerDataExternalRequestDTO.md) | customerDataExternalRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**CustomerDataExternalResponseDTO**](CustomerDataExternalResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_customer_usinge_document_verification

> <AddCustomerResponseDTO> add_customer_usinge_document_verification(client_hash_id, e_verify_customer_registration_request_dto, opts)

Add Customer Using e-Document Verification

  >⚠️ WARNING   >This API version is deprecated. Eventually, a deprecated API version becomes unsupported. [Unified Add Customer](ref:unifiedaddcustomer) is the latest version of this API.

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

api_instance = NiumClient::CustomerAccountIndividualApi.new
client_hash_id = '{{clientHashId}}' # String | clientHashId
e_verify_customer_registration_request_dto = NiumClient::EVerifyCustomerRegistrationRequestDTO.new({billing_address1: 'billing_address1_example', billing_city: 'billing_city_example', billing_country: 'billing_country_example', billing_zip_code: 'billing_zip_code_example', country_code: 'country_code_example', customer_hash_id: 'customer_hash_id_example', date_of_birth: 'date_of_birth_example', email: 'email_example', first_name: 'first_name_example', last_name: 'last_name_example', mobile: 'mobile_example', nationality: 'nationality_example', verification_consent: false}) # EVerifyCustomerRegistrationRequestDTO | requestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Add Customer Using e-Document Verification
  result = api_instance.add_customer_usinge_document_verification(client_hash_id, e_verify_customer_registration_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->add_customer_usinge_document_verification: #{e}"
end
```

#### Using the add_customer_usinge_document_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddCustomerResponseDTO>, Integer, Hash)> add_customer_usinge_document_verification_with_http_info(client_hash_id, e_verify_customer_registration_request_dto, opts)

```ruby
begin
  # Add Customer Using e-Document Verification
  data, status_code, headers = api_instance.add_customer_usinge_document_verification_with_http_info(client_hash_id, e_verify_customer_registration_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddCustomerResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->add_customer_usinge_document_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | clientHashId |  |
| **e_verify_customer_registration_request_dto** | [**EVerifyCustomerRegistrationRequestDTO**](EVerifyCustomerRegistrationRequestDTO.md) | requestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**AddCustomerResponseDTO**](AddCustomerResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## customer_update

> <UpdateCustomerResponseDTO> customer_update(client_hash_id, customer_hash_id, opts)

Customer Update

This API allows you to update the customer details subject to the following constraints: 1. If compliance status equals to COMPLETED. You can only update email, mobile, delivery address details, and correspondence address details. You may NOT update the billing address. 2. In other cases, you may update any of the fields. At least one key-value pair is needed in the request body of this API.

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

api_instance = NiumClient::CustomerAccountIndividualApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  x_request_id: '{{$guid}}', # String | Enter a unique UUID value
  update_customer_dto: NiumClient::UpdateCustomerDTO.new # UpdateCustomerDTO | Customer update request
}

begin
  # Customer Update
  result = api_instance.customer_update(client_hash_id, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->customer_update: #{e}"
end
```

#### Using the customer_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateCustomerResponseDTO>, Integer, Hash)> customer_update_with_http_info(client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Customer Update
  data, status_code, headers = api_instance.customer_update_with_http_info(client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateCustomerResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->customer_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |
| **update_customer_dto** | [**UpdateCustomerDTO**](UpdateCustomerDTO.md) | Customer update request | [optional] |

### Return type

[**UpdateCustomerResponseDTO**](UpdateCustomerResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## fetch_individual_customer_rfi_details

> <Array<CustomerRfiDetailsResponse>> fetch_individual_customer_rfi_details(client_hash_id, customer_hash_id, opts)

Fetch Individual Customer RFI Details

This API allows you to fetch details of RFI raised as part of Individual customer onboarding.

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

api_instance = NiumClient::CustomerAccountIndividualApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Fetch Individual Customer RFI Details
  result = api_instance.fetch_individual_customer_rfi_details(client_hash_id, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->fetch_individual_customer_rfi_details: #{e}"
end
```

#### Using the fetch_individual_customer_rfi_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CustomerRfiDetailsResponse>>, Integer, Hash)> fetch_individual_customer_rfi_details_with_http_info(client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Fetch Individual Customer RFI Details
  data, status_code, headers = api_instance.fetch_individual_customer_rfi_details_with_http_info(client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CustomerRfiDetailsResponse>>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->fetch_individual_customer_rfi_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**Array&lt;CustomerRfiDetailsResponse&gt;**](CustomerRfiDetailsResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## respondto_rfi

> <UploadRfiDetailsResponseDto> respondto_rfi(client_hash_id, customer_hash_id, upload_rfi_document_request_dto, opts)

Respond to RFI

This API allows you to respond to an RFI raised by NIUM compliance team. You may use this API to respond to an RFI for data or documents when the customer's compliance status is RFI_REQUESTED.

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

api_instance = NiumClient::CustomerAccountIndividualApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
upload_rfi_document_request_dto = NiumClient::UploadRfiDocumentRequestDto.new({rfi_response_request: [NiumClient::RfiResponseRequest.new({rfi_hash_id: 'rfi_hash_id_example'})]}) # UploadRfiDocumentRequestDto | RFI response object
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Respond to RFI
  result = api_instance.respondto_rfi(client_hash_id, customer_hash_id, upload_rfi_document_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->respondto_rfi: #{e}"
end
```

#### Using the respondto_rfi_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadRfiDetailsResponseDto>, Integer, Hash)> respondto_rfi_with_http_info(client_hash_id, customer_hash_id, upload_rfi_document_request_dto, opts)

```ruby
begin
  # Respond to RFI
  data, status_code, headers = api_instance.respondto_rfi_with_http_info(client_hash_id, customer_hash_id, upload_rfi_document_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadRfiDetailsResponseDto>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->respondto_rfi_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **upload_rfi_document_request_dto** | [**UploadRfiDocumentRequestDto**](UploadRfiDocumentRequestDto.md) | RFI response object |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**UploadRfiDetailsResponseDto**](UploadRfiDetailsResponseDto.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unified_add_customer

> <AddCustomerResponseDTO> unified_add_customer(client_hash_id, request_dto, opts)

Unified Add Customer

This API onboards customers based on their client configuration and preference.   >ℹ️ INFO   The 'childMustHaveParent' setting can be optionally set to 'true' for Payroll and Spend and Management clients, and it should be set to 'false' for all other clients.   For details, see [Parent-child hierarchy](doc:parent-child-hierarchy).

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

api_instance = NiumClient::CustomerAccountIndividualApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
request_dto = NiumClient::UnifiedAddCustomerRequest.new # UnifiedAddCustomerRequest | Add individual customer
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Unified Add Customer
  result = api_instance.unified_add_customer(client_hash_id, request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->unified_add_customer: #{e}"
end
```

#### Using the unified_add_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddCustomerResponseDTO>, Integer, Hash)> unified_add_customer_with_http_info(client_hash_id, request_dto, opts)

```ruby
begin
  # Unified Add Customer
  data, status_code, headers = api_instance.unified_add_customer_with_http_info(client_hash_id, request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddCustomerResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->unified_add_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **request_dto** | [**UnifiedAddCustomerRequest**](UnifiedAddCustomerRequest.md) | Add individual customer |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**AddCustomerResponseDTO**](AddCustomerResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_document

> <ComplianceDocumentResponseDTO> upload_document(client_hash_id, customer_hash_id, compliance_document_dto, opts)

Upload Document

This API allows to upload documents necessary for customer onboarding. Refer to the RFI details on required documents.

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

api_instance = NiumClient::CustomerAccountIndividualApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
compliance_document_dto = NiumClient::ComplianceDocumentDTO.new # ComplianceDocumentDTO | Compliance documents
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Upload Document
  result = api_instance.upload_document(client_hash_id, customer_hash_id, compliance_document_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->upload_document: #{e}"
end
```

#### Using the upload_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ComplianceDocumentResponseDTO>, Integer, Hash)> upload_document_with_http_info(client_hash_id, customer_hash_id, compliance_document_dto, opts)

```ruby
begin
  # Upload Document
  data, status_code, headers = api_instance.upload_document_with_http_info(client_hash_id, customer_hash_id, compliance_document_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ComplianceDocumentResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountIndividualApi->upload_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **compliance_document_dto** | [**ComplianceDocumentDTO**](ComplianceDocumentDTO.md) | Compliance documents |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ComplianceDocumentResponseDTO**](ComplianceDocumentResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

