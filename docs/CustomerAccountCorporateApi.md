# NiumClient::CustomerAccountCorporateApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**exhaustive_corporate_details_using_business_id**](CustomerAccountCorporateApi.md#exhaustive_corporate_details_using_business_id) | **GET** /api/v2/client/{clientHashId}/corporate/lookup | Exhaustive Corporate Details using Business ID |
| [**fetch_corporate_constants_using_get**](CustomerAccountCorporateApi.md#fetch_corporate_constants_using_get) | **GET** /api/v2/client/{clientHashId}/onboarding/constants | Fetch corporate constants |
| [**fetch_corporate_customer_rfi_details**](CustomerAccountCorporateApi.md#fetch_corporate_customer_rfi_details) | **GET** /api/v1/client/{clientHashId}/corporate/rfi | Fetch Corporate Customer RFI Details |
| [**onboard_corporate_customer**](CustomerAccountCorporateApi.md#onboard_corporate_customer) | **POST** /api/v1/client/{clientHashId}/corporate | Onboard Corporate Customer |
| [**public_corporate_details_using_business_id**](CustomerAccountCorporateApi.md#public_corporate_details_using_business_id) | **GET** /api/v1/client/{clientHashId}/corporate/lookup | Public Corporate Details using Business ID |
| [**regenerate_kycurl**](CustomerAccountCorporateApi.md#regenerate_kycurl) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/regenerateKYCURL | Regenerate KYC URL |
| [**respondto_rf_ifor_corporate_customer**](CustomerAccountCorporateApi.md#respondto_rf_ifor_corporate_customer) | **POST** /api/v1/client/{clientHashId}/corporate/rfi | Respond to RFI for Corporate Customer |
| [**update_corporate_customer_using_post**](CustomerAccountCorporateApi.md#update_corporate_customer_using_post) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/corporate | Update Corporate Customer |
| [**upload_documentfor_corporate_customer**](CustomerAccountCorporateApi.md#upload_documentfor_corporate_customer) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/corporate/documents | Upload Document for Corporate Customer |


## exhaustive_corporate_details_using_business_id

> <CorporateEnrichedDetailResponseDTO> exhaustive_corporate_details_using_business_id(client_hash_id, country_code, opts)

Exhaustive Corporate Details using Business ID

This API allows you to fetch both public and non-public exhaustive corporate details using business ID.  >ℹ️ INFO   >Every call for this API incurs a fee. Contact your Nium account manager to use it. This API only supports the corporate customer onboarding process. Avoid unnecessary API calls by using the throttling and debouncing techniques. This API should only be called after getting a successful response from [Public Corporate Details using Business ID API](/apis/reference/publiccorporatedetailsusingbusinessid).

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

api_instance = NiumClient::CustomerAccountCorporateApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
country_code = 'country_code_example' # String | This field accepts the 2-letter [ISO-2 country code](https://nium-documents.s3-eu-west-1.amazonaws.com/spend-documents/Country+Code.pdf) of the corporate customer.
opts = {
  search_reference_id: 'search_reference_id_example', # String | This field accepts the search reference id of the corporate customer as received in response of public corporate details api.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Exhaustive Corporate Details using Business ID
  result = api_instance.exhaustive_corporate_details_using_business_id(client_hash_id, country_code, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->exhaustive_corporate_details_using_business_id: #{e}"
end
```

#### Using the exhaustive_corporate_details_using_business_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CorporateEnrichedDetailResponseDTO>, Integer, Hash)> exhaustive_corporate_details_using_business_id_with_http_info(client_hash_id, country_code, opts)

```ruby
begin
  # Exhaustive Corporate Details using Business ID
  data, status_code, headers = api_instance.exhaustive_corporate_details_using_business_id_with_http_info(client_hash_id, country_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CorporateEnrichedDetailResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->exhaustive_corporate_details_using_business_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **country_code** | **String** | This field accepts the 2-letter [ISO-2 country code](https://nium-documents.s3-eu-west-1.amazonaws.com/spend-documents/Country+Code.pdf) of the corporate customer. |  |
| **search_reference_id** | **String** | This field accepts the search reference id of the corporate customer as received in response of public corporate details api. | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**CorporateEnrichedDetailResponseDTO**](CorporateEnrichedDetailResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fetch_corporate_constants_using_get

> <AddCategoryResponseDTO> fetch_corporate_constants_using_get(category, client_hash_id, region, type, opts)

Fetch corporate constants

This API returns the acceptable values for the `category` query param to be used as input in the corporate onboarding flow. Refer to the [Fetch Corporate Constants](doc:fetch-corporate-constants-api) user guide for details on usage instructions on this API.

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

api_instance = NiumClient::CustomerAccountCorporateApi.new
category = 'annualTurnover' # String | This field is used to select one of the category used during corporate customer onboarding. The API response will return list of allowed values for the selected category.
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
region = 'AU' # String | The response will be filtered based on the value selected in this field for regulatory region of the customer.
type = 'INDIVIDUAL' # String | Type of Customer being onboarded.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Fetch corporate constants
  result = api_instance.fetch_corporate_constants_using_get(category, client_hash_id, region, type, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->fetch_corporate_constants_using_get: #{e}"
end
```

#### Using the fetch_corporate_constants_using_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddCategoryResponseDTO>, Integer, Hash)> fetch_corporate_constants_using_get_with_http_info(category, client_hash_id, region, type, opts)

```ruby
begin
  # Fetch corporate constants
  data, status_code, headers = api_instance.fetch_corporate_constants_using_get_with_http_info(category, client_hash_id, region, type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddCategoryResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->fetch_corporate_constants_using_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | This field is used to select one of the category used during corporate customer onboarding. The API response will return list of allowed values for the selected category. |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **region** | **String** | The response will be filtered based on the value selected in this field for regulatory region of the customer. |  |
| **type** | **String** | Type of Customer being onboarded. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**AddCategoryResponseDTO**](AddCategoryResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## fetch_corporate_customer_rfi_details

> <ComplianceRFITemplateMetadataResponseDTO> fetch_corporate_customer_rfi_details(client_hash_id, opts)

Fetch Corporate Customer RFI Details

This API allows you to fetch details of RFI raised as part of corporate customer onboarding.

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

api_instance = NiumClient::CustomerAccountCorporateApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
opts = {
  case_id: 'case_id_example', # String | This field contains unique case ID generated and returned in Onboard API response.
  client_id: 'client_id_example', # String | This field contains unique client ID generated and returned in Onboard API response.
  customer_hash_id: 'customer_hash_id_example', # String | This field contains the customerHashId, For example, 909ffc5f-c8ab-4df0-bcb2-111fcdd6f735.
  region: 'region_example', # String | This field contains the region code for which onboarding has been triggered, For example, AU, EU, UK, SG.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Fetch Corporate Customer RFI Details
  result = api_instance.fetch_corporate_customer_rfi_details(client_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->fetch_corporate_customer_rfi_details: #{e}"
end
```

#### Using the fetch_corporate_customer_rfi_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ComplianceRFITemplateMetadataResponseDTO>, Integer, Hash)> fetch_corporate_customer_rfi_details_with_http_info(client_hash_id, opts)

```ruby
begin
  # Fetch Corporate Customer RFI Details
  data, status_code, headers = api_instance.fetch_corporate_customer_rfi_details_with_http_info(client_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ComplianceRFITemplateMetadataResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->fetch_corporate_customer_rfi_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **case_id** | **String** | This field contains unique case ID generated and returned in Onboard API response. | [optional] |
| **client_id** | **String** | This field contains unique client ID generated and returned in Onboard API response. | [optional] |
| **customer_hash_id** | **String** | This field contains the customerHashId, For example, 909ffc5f-c8ab-4df0-bcb2-111fcdd6f735. | [optional] |
| **region** | **String** | This field contains the region code for which onboarding has been triggered, For example, AU, EU, UK, SG. | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ComplianceRFITemplateMetadataResponseDTO**](ComplianceRFITemplateMetadataResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## onboard_corporate_customer

> <ProductCorporateCustomerResponseDTO> onboard_corporate_customer(client_hash_id, corporate_customer_requests_dto, opts)

Onboard Corporate Customer

This API allows you to onboard a corporate customer under existing client.

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

api_instance = NiumClient::CustomerAccountCorporateApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
corporate_customer_requests_dto = NiumClient::CorporateCustomerRequestsDTO.new # CorporateCustomerRequestsDTO | corporateCustomerRequestsDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Onboard Corporate Customer
  result = api_instance.onboard_corporate_customer(client_hash_id, corporate_customer_requests_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->onboard_corporate_customer: #{e}"
end
```

#### Using the onboard_corporate_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductCorporateCustomerResponseDTO>, Integer, Hash)> onboard_corporate_customer_with_http_info(client_hash_id, corporate_customer_requests_dto, opts)

```ruby
begin
  # Onboard Corporate Customer
  data, status_code, headers = api_instance.onboard_corporate_customer_with_http_info(client_hash_id, corporate_customer_requests_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductCorporateCustomerResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->onboard_corporate_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **corporate_customer_requests_dto** | [**CorporateCustomerRequestsDTO**](CorporateCustomerRequestsDTO.md) | corporateCustomerRequestsDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ProductCorporateCustomerResponseDTO**](ProductCorporateCustomerResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## public_corporate_details_using_business_id

> <CorporateDetailResponseDTO> public_corporate_details_using_business_id(business_registration_number, client_hash_id, country_code, opts)

Public Corporate Details using Business ID

This API will help you to fetch the publicly available corporate details using business Id.

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

api_instance = NiumClient::CustomerAccountCorporateApi.new
business_registration_number = 'business_registration_number_example' # String | This field contains the business registration number of the entity.
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
country_code = 'country_code_example' # String | This field contains the 2-letter [ISO-2 country code](doc:currency-and-country-codes).
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Public Corporate Details using Business ID
  result = api_instance.public_corporate_details_using_business_id(business_registration_number, client_hash_id, country_code, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->public_corporate_details_using_business_id: #{e}"
end
```

#### Using the public_corporate_details_using_business_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CorporateDetailResponseDTO>, Integer, Hash)> public_corporate_details_using_business_id_with_http_info(business_registration_number, client_hash_id, country_code, opts)

```ruby
begin
  # Public Corporate Details using Business ID
  data, status_code, headers = api_instance.public_corporate_details_using_business_id_with_http_info(business_registration_number, client_hash_id, country_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CorporateDetailResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->public_corporate_details_using_business_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_registration_number** | **String** | This field contains the business registration number of the entity. |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **country_code** | **String** | This field contains the 2-letter [ISO-2 country code](doc:currency-and-country-codes). |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**CorporateDetailResponseDTO**](CorporateDetailResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## regenerate_kycurl

> <RegenerateUrlResponse> regenerate_kycurl(client_hash_id, customer_hash_id, opts)

Regenerate KYC URL

This api will be used to regenerate kyc url

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

api_instance = NiumClient::CustomerAccountCorporateApi.new
client_hash_id = 'client_hash_id_example' # String | The unique client hash id of customer
customer_hash_id = 'customer_hash_id_example' # String | The unique customer hash id of customer
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Regenerate KYC URL
  result = api_instance.regenerate_kycurl(client_hash_id, customer_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->regenerate_kycurl: #{e}"
end
```

#### Using the regenerate_kycurl_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegenerateUrlResponse>, Integer, Hash)> regenerate_kycurl_with_http_info(client_hash_id, customer_hash_id, opts)

```ruby
begin
  # Regenerate KYC URL
  data, status_code, headers = api_instance.regenerate_kycurl_with_http_info(client_hash_id, customer_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegenerateUrlResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->regenerate_kycurl_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client hash id of customer |  |
| **customer_hash_id** | **String** | The unique customer hash id of customer |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**RegenerateUrlResponse**](RegenerateUrlResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## respondto_rf_ifor_corporate_customer

> <RespondRfiResponseDTO> respondto_rf_ifor_corporate_customer(client_hash_id, respond_rfi_request_dto, opts)

Respond to RFI for Corporate Customer

This API allows you to respond to an RFI raised for a corporate customer. You may use this API to respond to an RFI for data or documents when the corporate customer's compliance status is RFI_REQUESTED.

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

api_instance = NiumClient::CustomerAccountCorporateApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
respond_rfi_request_dto = NiumClient::RespondRfiRequestDTO.new # RespondRfiRequestDTO | respondRfiRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Respond to RFI for Corporate Customer
  result = api_instance.respondto_rf_ifor_corporate_customer(client_hash_id, respond_rfi_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->respondto_rf_ifor_corporate_customer: #{e}"
end
```

#### Using the respondto_rf_ifor_corporate_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RespondRfiResponseDTO>, Integer, Hash)> respondto_rf_ifor_corporate_customer_with_http_info(client_hash_id, respond_rfi_request_dto, opts)

```ruby
begin
  # Respond to RFI for Corporate Customer
  data, status_code, headers = api_instance.respondto_rf_ifor_corporate_customer_with_http_info(client_hash_id, respond_rfi_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RespondRfiResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->respondto_rf_ifor_corporate_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **respond_rfi_request_dto** | [**RespondRfiRequestDTO**](RespondRfiRequestDTO.md) | respondRfiRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**RespondRfiResponseDTO**](RespondRfiResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_corporate_customer_using_post

> <UpdateCorporateKybResponseDTO> update_corporate_customer_using_post(client_hash_id, customer_hash_id, corporate_customer_requests_dto, opts)

Update Corporate Customer

This API allows you to update a corporate customer under existing client.

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

api_instance = NiumClient::CustomerAccountCorporateApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
corporate_customer_requests_dto = NiumClient::CorporateCustomerRequestsDTO.new # CorporateCustomerRequestsDTO | updateCorporateCustomerRequestsDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Update Corporate Customer
  result = api_instance.update_corporate_customer_using_post(client_hash_id, customer_hash_id, corporate_customer_requests_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->update_corporate_customer_using_post: #{e}"
end
```

#### Using the update_corporate_customer_using_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateCorporateKybResponseDTO>, Integer, Hash)> update_corporate_customer_using_post_with_http_info(client_hash_id, customer_hash_id, corporate_customer_requests_dto, opts)

```ruby
begin
  # Update Corporate Customer
  data, status_code, headers = api_instance.update_corporate_customer_using_post_with_http_info(client_hash_id, customer_hash_id, corporate_customer_requests_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateCorporateKybResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->update_corporate_customer_using_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **corporate_customer_requests_dto** | [**CorporateCustomerRequestsDTO**](CorporateCustomerRequestsDTO.md) | updateCorporateCustomerRequestsDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**UpdateCorporateKybResponseDTO**](UpdateCorporateKybResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_documentfor_corporate_customer

> <CorporateComplianceDocumentResponseDTO> upload_documentfor_corporate_customer(client_hash_id, customer_hash_id, corporate_compliance_document_request_dto, opts)

Upload Document for Corporate Customer

This API allows you to upload document for corporate customers.

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

api_instance = NiumClient::CustomerAccountCorporateApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
corporate_compliance_document_request_dto = NiumClient::CorporateComplianceDocumentRequestDTO.new # CorporateComplianceDocumentRequestDTO | corporateComplianceDocumentRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Upload Document for Corporate Customer
  result = api_instance.upload_documentfor_corporate_customer(client_hash_id, customer_hash_id, corporate_compliance_document_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->upload_documentfor_corporate_customer: #{e}"
end
```

#### Using the upload_documentfor_corporate_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CorporateComplianceDocumentResponseDTO>, Integer, Hash)> upload_documentfor_corporate_customer_with_http_info(client_hash_id, customer_hash_id, corporate_compliance_document_request_dto, opts)

```ruby
begin
  # Upload Document for Corporate Customer
  data, status_code, headers = api_instance.upload_documentfor_corporate_customer_with_http_info(client_hash_id, customer_hash_id, corporate_compliance_document_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CorporateComplianceDocumentResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling CustomerAccountCorporateApi->upload_documentfor_corporate_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **corporate_compliance_document_request_dto** | [**CorporateComplianceDocumentRequestDTO**](CorporateComplianceDocumentRequestDTO.md) | corporateComplianceDocumentRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**CorporateComplianceDocumentResponseDTO**](CorporateComplianceDocumentResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

