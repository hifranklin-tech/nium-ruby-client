# NiumClient::PayinApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**simulate_funding_instrument_status_update**](PayinApi.md#simulate_funding_instrument_status_update) | **POST** /api/v1/simulations/client/{clientHashId}/customer/{customerHashId}/fundingInstruments/{fundingInstrumentId}/updateStatus | Simulate Funding Instrument Status Update (Sandbox Testing) |
| [**simulatereceivepayment**](PayinApi.md#simulatereceivepayment) | **POST** /api/v1/inward/payment/manual | Simulate Receive Transaction |


## simulate_funding_instrument_status_update

> simulate_funding_instrument_status_update(client_hash_id, customer_hash_id, funding_instrument_id, funding_instrument_status_update_request_dto, opts)

Simulate Funding Instrument Status Update (Sandbox Testing)

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

api_instance = NiumClient::PayinApi.new
client_hash_id = 'client_hash_id_example' # String | clientHashId
customer_hash_id = 'customer_hash_id_example' # String | customerHashId
funding_instrument_id = 'funding_instrument_id_example' # String | fundingInstrumentId
funding_instrument_status_update_request_dto = NiumClient::FundingInstrumentStatusUpdateRequestDTO.new({action: 'MICRODEPOSIT_REVERSED'}) # FundingInstrumentStatusUpdateRequestDTO | fundingInstrumentStatusUpdateRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Simulate Funding Instrument Status Update (Sandbox Testing)
  api_instance.simulate_funding_instrument_status_update(client_hash_id, customer_hash_id, funding_instrument_id, funding_instrument_status_update_request_dto, opts)
rescue NiumClient::ApiError => e
  puts "Error when calling PayinApi->simulate_funding_instrument_status_update: #{e}"
end
```

#### Using the simulate_funding_instrument_status_update_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> simulate_funding_instrument_status_update_with_http_info(client_hash_id, customer_hash_id, funding_instrument_id, funding_instrument_status_update_request_dto, opts)

```ruby
begin
  # Simulate Funding Instrument Status Update (Sandbox Testing)
  data, status_code, headers = api_instance.simulate_funding_instrument_status_update_with_http_info(client_hash_id, customer_hash_id, funding_instrument_id, funding_instrument_status_update_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue NiumClient::ApiError => e
  puts "Error when calling PayinApi->simulate_funding_instrument_status_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | clientHashId |  |
| **customer_hash_id** | **String** | customerHashId |  |
| **funding_instrument_id** | **String** | fundingInstrumentId |  |
| **funding_instrument_status_update_request_dto** | [**FundingInstrumentStatusUpdateRequestDTO**](FundingInstrumentStatusUpdateRequestDTO.md) | fundingInstrumentStatusUpdateRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

nil (empty response body)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## simulatereceivepayment

> <PayinApiResponse2> simulatereceivepayment(inward_payment_manual_request_dto, opts)

Simulate Receive Transaction

This API can be used in 'Sandbox testing' to simulate inward receive transaction and credit funds into the wallet for testing purposes.  >ℹ️ INFO  >This API is for testing purpose only and not to be used in production. >Use a unique bankReferenceNumber for every new simulated receive payment transaction request.

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

api_instance = NiumClient::PayinApi.new
inward_payment_manual_request_dto = NiumClient::InwardPaymentManualRequestDTO.new # InwardPaymentManualRequestDTO | inwardPaymentManualRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Simulate Receive Transaction
  result = api_instance.simulatereceivepayment(inward_payment_manual_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling PayinApi->simulatereceivepayment: #{e}"
end
```

#### Using the simulatereceivepayment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayinApiResponse2>, Integer, Hash)> simulatereceivepayment_with_http_info(inward_payment_manual_request_dto, opts)

```ruby
begin
  # Simulate Receive Transaction
  data, status_code, headers = api_instance.simulatereceivepayment_with_http_info(inward_payment_manual_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayinApiResponse2>
rescue NiumClient::ApiError => e
  puts "Error when calling PayinApi->simulatereceivepayment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inward_payment_manual_request_dto** | [**InwardPaymentManualRequestDTO**](InwardPaymentManualRequestDTO.md) | inwardPaymentManualRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**PayinApiResponse2**](PayinApiResponse2.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

