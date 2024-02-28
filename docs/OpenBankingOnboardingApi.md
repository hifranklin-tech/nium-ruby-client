# NiumClient::OpenBankingOnboardingApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**account_details_by_customer_consent_id**](OpenBankingOnboardingApi.md#account_details_by_customer_consent_id) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/consent/account | Account Details By Customer Consent ID. |
| [**payment_detailsby_system_reference_number**](OpenBankingOnboardingApi.md#payment_detailsby_system_reference_number) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/consent/payment | Payment Details by System Reference Number |


## account_details_by_customer_consent_id

> <ConsentDetailsResponse> account_details_by_customer_consent_id(account_consent_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)

Account Details By Customer Consent ID.

This API allows Client to get the account details using the customer's consent Id for open banking, as part of the AIS flow.

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

api_instance = NiumClient::OpenBankingOnboardingApi.new
account_consent_id = 'account_consent_id_example' # String | accountConsentId
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Account Details By Customer Consent ID.
  result = api_instance.account_details_by_customer_consent_id(account_consent_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling OpenBankingOnboardingApi->account_details_by_customer_consent_id: #{e}"
end
```

#### Using the account_details_by_customer_consent_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConsentDetailsResponse>, Integer, Hash)> account_details_by_customer_consent_id_with_http_info(account_consent_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)

```ruby
begin
  # Account Details By Customer Consent ID.
  data, status_code, headers = api_instance.account_details_by_customer_consent_id_with_http_info(account_consent_id, client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConsentDetailsResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling OpenBankingOnboardingApi->account_details_by_customer_consent_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_consent_id** | **String** | accountConsentId |  |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**ConsentDetailsResponse**](ConsentDetailsResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## payment_detailsby_system_reference_number

> <OpenBankingPaymentResponseDTO> payment_detailsby_system_reference_number(client_hash_id, customer_hash_id, system_reference_number, wallet_hash_id, opts)

Payment Details by System Reference Number

This API allows Client to fetch payment details using system reference number of the transaction, as part of the Open Banking PIS flow and based on customer's consent.

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

api_instance = NiumClient::OpenBankingOnboardingApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
system_reference_number = 'system_reference_number_example' # String | systemReferenceNumber
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Payment Details by System Reference Number
  result = api_instance.payment_detailsby_system_reference_number(client_hash_id, customer_hash_id, system_reference_number, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling OpenBankingOnboardingApi->payment_detailsby_system_reference_number: #{e}"
end
```

#### Using the payment_detailsby_system_reference_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OpenBankingPaymentResponseDTO>, Integer, Hash)> payment_detailsby_system_reference_number_with_http_info(client_hash_id, customer_hash_id, system_reference_number, wallet_hash_id, opts)

```ruby
begin
  # Payment Details by System Reference Number
  data, status_code, headers = api_instance.payment_detailsby_system_reference_number_with_http_info(client_hash_id, customer_hash_id, system_reference_number, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OpenBankingPaymentResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling OpenBankingOnboardingApi->payment_detailsby_system_reference_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **system_reference_number** | **String** | systemReferenceNumber |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**OpenBankingPaymentResponseDTO**](OpenBankingPaymentResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

