# NiumClient::LifecycleApi

All URIs are relative to *https://gateway.nium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate_card**](LifecycleApi.md#activate_card) | **POST** /api/v2/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/activate | Activate Card V2 |
| [**activate_card1**](LifecycleApi.md#activate_card1) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/activate | Activate Card |
| [**add_card**](LifecycleApi.md#add_card) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card | Add Card |
| [**add_card_v2**](LifecycleApi.md#add_card_v2) | **POST** /api/v2/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card | Add Card V2 |
| [**assign_card**](LifecycleApi.md#assign_card) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/assignCard | Assign Card |
| [**block_and_replace_card_v2**](LifecycleApi.md#block_and_replace_card_v2) | **POST** /api/v2/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/blockAndReplace | Block and Replace Card |
| [**block_unblock_cards**](LifecycleApi.md#block_unblock_cards) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/cardAction | Block/Unblock Cards |
| [**card_details**](LifecycleApi.md#card_details) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId} | Card Details |
| [**card_details_v2**](LifecycleApi.md#card_details_v2) | **GET** /api/v2/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId} | Card Details V2 |
| [**card_list**](LifecycleApi.md#card_list) | **GET** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/cards | Card List |
| [**card_list_v2**](LifecycleApi.md#card_list_v2) | **GET** /api/v2/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/cards | Card List V2 |
| [**get_card_widget**](LifecycleApi.md#get_card_widget) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/widget/showCardDetails | Get Card Details Widget |
| [**issue_replacement_card**](LifecycleApi.md#issue_replacement_card) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/replaceCard | Issue Replacement Card |
| [**lock_unlock_card_v2**](LifecycleApi.md#lock_unlock_card_v2) | **PUT** /api/v2/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/lockAction | Lock/Unlock Cards |
| [**renew_card**](LifecycleApi.md#renew_card) | **POST** /api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId}/renewCard | Renew Card |
| [**update_card_details_v2**](LifecycleApi.md#update_card_details_v2) | **POST** /api/v2/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/card/{cardHashId} | Update Card Details V2 |


## activate_card

> <ActivateCardResponseV2DTO> activate_card(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, activate_card_request_v2_dto, opts)

Activate Card V2

This API allows you to activate a card after delivery to the customer.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = 'client_hash_id_example' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | The unique card identifier generated while new/add-on card issuance.
activate_card_request_v2_dto = NiumClient::ActivateCardRequestV2DTO.new({activation_code: '90090012'}) # ActivateCardRequestV2DTO | Activate card request
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Activate Card V2
  result = api_instance.activate_card(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, activate_card_request_v2_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->activate_card: #{e}"
end
```

#### Using the activate_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActivateCardResponseV2DTO>, Integer, Hash)> activate_card_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, activate_card_request_v2_dto, opts)

```ruby
begin
  # Activate Card V2
  data, status_code, headers = api_instance.activate_card_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, activate_card_request_v2_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActivateCardResponseV2DTO>
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->activate_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | The unique card identifier generated while new/add-on card issuance. |  |
| **activate_card_request_v2_dto** | [**ActivateCardRequestV2DTO**](ActivateCardRequestV2DTO.md) | Activate card request |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**ActivateCardResponseV2DTO**](ActivateCardResponseV2DTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## activate_card1

> <ActivateCardResponseDTO> activate_card1(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

Activate Card

This API allows you to activate a card after delivery to a customer.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = '{{clientHashId}}' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | The unique card identifier generated while new/add-on card issuance.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Activate Card
  result = api_instance.activate_card1(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->activate_card1: #{e}"
end
```

#### Using the activate_card1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActivateCardResponseDTO>, Integer, Hash)> activate_card1_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

```ruby
begin
  # Activate Card
  data, status_code, headers = api_instance.activate_card1_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActivateCardResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->activate_card1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | The unique card identifier generated while new/add-on card issuance. |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**ActivateCardResponseDTO**](ActivateCardResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## add_card

> <AddCardResponseDTO> add_card(client_hash_id, customer_hash_id, wallet_hash_id, add_card_request, opts)

Add Card

This API allows you to issue a card for a customer.   >⚠️ WARNING   >This API version is deprecated. Eventually, a deprecated API version becomes unsupported. [Add Card V2](ref:addcardv2) is the latest version of this API.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = '{{clientHashId}}' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
add_card_request = NiumClient::AddCardRequest.new({logo_identifier: 'logo_identifier_example', plastic_id: '100100', card_type: 'GPR_VIR', card_issuance_action: 'NEW', card_fee_currency_code: 'SGD', card_expiry: '1122'}) # AddCardRequest | addCardRequest
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Add Card
  result = api_instance.add_card(client_hash_id, customer_hash_id, wallet_hash_id, add_card_request, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->add_card: #{e}"
end
```

#### Using the add_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddCardResponseDTO>, Integer, Hash)> add_card_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, add_card_request, opts)

```ruby
begin
  # Add Card
  data, status_code, headers = api_instance.add_card_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, add_card_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddCardResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->add_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **add_card_request** | [**AddCardRequest**](AddCardRequest.md) | addCardRequest |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**AddCardResponseDTO**](AddCardResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## add_card_v2

> <AddCardV2ResponseDTO> add_card_v2(client_hash_id, customer_hash_id, wallet_hash_id, add_card_v2_request, opts)

Add Card V2

This API allows you to issue a card for a customer.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = 'client_hash_id_example' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
add_card_v2_request = NiumClient::AddCardV2Request.new # AddCardV2Request | The request body to add a new card.
opts = {
  x_request_id: 'x_request_id_example' # String | Enter a unique UUID value.
}

begin
  # Add Card V2
  result = api_instance.add_card_v2(client_hash_id, customer_hash_id, wallet_hash_id, add_card_v2_request, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->add_card_v2: #{e}"
end
```

#### Using the add_card_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddCardV2ResponseDTO>, Integer, Hash)> add_card_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, add_card_v2_request, opts)

```ruby
begin
  # Add Card V2
  data, status_code, headers = api_instance.add_card_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, add_card_v2_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddCardV2ResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->add_card_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **add_card_v2_request** | [**AddCardV2Request**](AddCardV2Request.md) | The request body to add a new card. |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**AddCardV2ResponseDTO**](AddCardV2ResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## assign_card

> <CardAssignResponseDTO> assign_card(client_hash_id, customer_hash_id, wallet_hash_id, assign_card_dto, opts)

Assign Card

This API is used to assign a card to a customer. In this use case, the client has an unassigned card with him/her. The client hands over the card to the customer and assigns it to him/her.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = '{{clientHashId}}' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
assign_card_dto = NiumClient::AssignCardDTO.new({account_number: '0007560030000012140', card_number_last4_digits: '2197'}) # AssignCardDTO | assignCardDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Assign Card
  result = api_instance.assign_card(client_hash_id, customer_hash_id, wallet_hash_id, assign_card_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->assign_card: #{e}"
end
```

#### Using the assign_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CardAssignResponseDTO>, Integer, Hash)> assign_card_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, assign_card_dto, opts)

```ruby
begin
  # Assign Card
  data, status_code, headers = api_instance.assign_card_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, assign_card_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CardAssignResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->assign_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **assign_card_dto** | [**AssignCardDTO**](AssignCardDTO.md) | assignCardDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**CardAssignResponseDTO**](CardAssignResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## block_and_replace_card_v2

> <BlockAndReplaceCardResponseDTO> block_and_replace_card_v2(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, block_and_replace_card_request_dto, opts)

Block and Replace Card

Use this API to block and replace a card.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = 'client_hash_id_example' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | The unique card identifier generated while new/add-on card issuance.
block_and_replace_card_request_dto = NiumClient::BlockAndReplaceCardRequestDTO.new({reason: 'fraud, lost, stolen, damaged', replace_card: true}) # BlockAndReplaceCardRequestDTO | A card can be blocked and replaced using the Block And Replace Card API.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Block and Replace Card
  result = api_instance.block_and_replace_card_v2(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, block_and_replace_card_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->block_and_replace_card_v2: #{e}"
end
```

#### Using the block_and_replace_card_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlockAndReplaceCardResponseDTO>, Integer, Hash)> block_and_replace_card_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, block_and_replace_card_request_dto, opts)

```ruby
begin
  # Block and Replace Card
  data, status_code, headers = api_instance.block_and_replace_card_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, block_and_replace_card_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlockAndReplaceCardResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->block_and_replace_card_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | The unique card identifier generated while new/add-on card issuance. |  |
| **block_and_replace_card_request_dto** | [**BlockAndReplaceCardRequestDTO**](BlockAndReplaceCardRequestDTO.md) | A card can be blocked and replaced using the Block And Replace Card API. |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**BlockAndReplaceCardResponseDTO**](BlockAndReplaceCardResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## block_unblock_cards

> <BlockCodeCardResponseDTO> block_unblock_cards(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, block_code_dto, opts)

Block/Unblock Cards

This API helps you perform the following operations: Permanent block card Temporary block card Unblock card.  >⚠️ WARNING   >This API version is deprecated. Eventually, a deprecated API version becomes unsupported. For a temporary lock and unlock, [Lock/Unlock Card API](ref:lockunlockcardv2) is the latest version of this API. For a permanent block and replacing the card, [Block and Replace API](ref:blockandreplacecardv2) is the latest version of this API.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = '{{clientHashId}}' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | The unique card identifier generated while new/add-on card issuance.
block_code_dto = NiumClient::BlockCodeDTO.new({block_action: 'permanentBlock'}) # BlockCodeDTO | blockCode
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Block/Unblock Cards
  result = api_instance.block_unblock_cards(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, block_code_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->block_unblock_cards: #{e}"
end
```

#### Using the block_unblock_cards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlockCodeCardResponseDTO>, Integer, Hash)> block_unblock_cards_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, block_code_dto, opts)

```ruby
begin
  # Block/Unblock Cards
  data, status_code, headers = api_instance.block_unblock_cards_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, block_code_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlockCodeCardResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->block_unblock_cards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | The unique card identifier generated while new/add-on card issuance. |  |
| **block_code_dto** | [**BlockCodeDTO**](BlockCodeDTO.md) | blockCode |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**BlockCodeCardResponseDTO**](BlockCodeCardResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## card_details

> <CardResponseDTO> card_details(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

Card Details

This API allows you to fetch the card details of a particular card.  >⚠️ WARNING   >This API version is deprecated. Eventually, a deprecated API version becomes unsupported. [Card Details V2](ref:carddetailsv2) is the latest version of this API.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = '{{clientHashId}}' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | The unique card identifier generated while new/add-on card issuance.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Card Details
  result = api_instance.card_details(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->card_details: #{e}"
end
```

#### Using the card_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CardResponseDTO>, Integer, Hash)> card_details_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

```ruby
begin
  # Card Details
  data, status_code, headers = api_instance.card_details_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CardResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->card_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | The unique card identifier generated while new/add-on card issuance. |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**CardResponseDTO**](CardResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## card_details_v2

> <CardDetails> card_details_v2(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

Card Details V2

This API allows you to get details about a card.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = 'client_hash_id_example' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | The unique card identifier generated while new/add-on card issuance.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Card Details V2
  result = api_instance.card_details_v2(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->card_details_v2: #{e}"
end
```

#### Using the card_details_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CardDetails>, Integer, Hash)> card_details_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)

```ruby
begin
  # Card Details V2
  data, status_code, headers = api_instance.card_details_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CardDetails>
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->card_details_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | The unique card identifier generated while new/add-on card issuance. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**CardDetails**](CardDetails.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## card_list

> Hash&lt;String, Object&gt; card_list(client_hash_id, customer_hash_id, wallet_hash_id, opts)

Card List

This API will return all the cards issued, for a given wallet.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Card List
  result = api_instance.card_list(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->card_list: #{e}"
end
```

#### Using the card_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> card_list_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)

```ruby
begin
  # Card List
  data, status_code, headers = api_instance.card_list_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->card_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## card_list_v2

> <PageResponseCardDetails> card_list_v2(client_hash_id, customer_hash_id, wallet_hash_id, opts)

Card List V2

This API returns all the cards issued for a given customer wallet.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = 'client_hash_id_example' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
opts = {
  child_customer_hash_id: 'child_customer_hash_id_example', # String | This field refers to a unique identifier, known as the customerHashId, assigned to an individual customer who is associated with a corporate customer at the parent level. This identifier distinguishes and tracks the child-level customer within a given client's program. By utilizing this identifier, it becomes possible to establish and maintain the appropriate linkage between the child customer and their parent corporate customer, ensuring accurate association and management of customer data.
  page: 56, # Integer | This field accepts the page number to be returned. The acceptable values are 0-N.  This field works with size field such that total number of records/size of each page = number of pages(N).  This field can then give a particular page.
  size: 56, # Integer | This field accepts the number of elements per page.
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Card List V2
  result = api_instance.card_list_v2(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->card_list_v2: #{e}"
end
```

#### Using the card_list_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PageResponseCardDetails>, Integer, Hash)> card_list_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)

```ruby
begin
  # Card List V2
  data, status_code, headers = api_instance.card_list_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PageResponseCardDetails>
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->card_list_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **child_customer_hash_id** | **String** | This field refers to a unique identifier, known as the customerHashId, assigned to an individual customer who is associated with a corporate customer at the parent level. This identifier distinguishes and tracks the child-level customer within a given client&#39;s program. By utilizing this identifier, it becomes possible to establish and maintain the appropriate linkage between the child customer and their parent corporate customer, ensuring accurate association and management of customer data. | [optional] |
| **page** | **Integer** | This field accepts the page number to be returned. The acceptable values are 0-N.  This field works with size field such that total number of records/size of each page &#x3D; number of pages(N).  This field can then give a particular page. | [optional] |
| **size** | **Integer** | This field accepts the number of elements per page. | [optional] |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**PageResponseCardDetails**](PageResponseCardDetails.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, */*


## get_card_widget

> <CardWidgetTokenResponse> get_card_widget(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, card_widget_token_request_dto, opts)

Get Card Details Widget

Use this API to fetch card widget url and token for Non-PCI DSS compliant Clients

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = 'client_hash_id_example' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | Unique card identifier generated while new/add-on card issuance.
card_widget_token_request_dto = NiumClient::CardWidgetTokenRequestDTO.new # CardWidgetTokenRequestDTO | 
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Get Card Details Widget
  result = api_instance.get_card_widget(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, card_widget_token_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->get_card_widget: #{e}"
end
```

#### Using the get_card_widget_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CardWidgetTokenResponse>, Integer, Hash)> get_card_widget_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, card_widget_token_request_dto, opts)

```ruby
begin
  # Get Card Details Widget
  data, status_code, headers = api_instance.get_card_widget_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, card_widget_token_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CardWidgetTokenResponse>
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->get_card_widget_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. |  |
| **card_widget_token_request_dto** | [**CardWidgetTokenRequestDTO**](CardWidgetTokenRequestDTO.md) |  |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**CardWidgetTokenResponse**](CardWidgetTokenResponse.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*, application/json


## issue_replacement_card

> <AddCardResponseDTO> issue_replacement_card(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, replace_card_request, opts)

Issue Replacement Card

Use this API for issuing a card replacement.  >⚠️ WARNING   >This API version is deprecated. Eventually, a deprecated API version becomes unsupported. For a permanent block and replacing the card, [Block and Replace API](ref:blockandreplacecardv2) is the latest version of this API.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = '{{clientHashId}}' # String | Unique client identifier generated and shared before API handshake.
customer_hash_id = 'customer_hash_id_example' # String | Unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | Unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | Unique card identifier generated while new/add-on card issuance.
replace_card_request = NiumClient::ReplaceCardRequest.new({card_fee_currency_code: 'SGD'}) # ReplaceCardRequest | A card can be replaced using the Replace Card API only if it is permanently blocked. A permanently blocked card cannot be replaced on the same date as date of issuance. For example, a customer issued a card today and request to block the card permanently, on the same day. However, a customer may not call the Replace Card API to issue a replacement on the same date.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value
}

begin
  # Issue Replacement Card
  result = api_instance.issue_replacement_card(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, replace_card_request, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->issue_replacement_card: #{e}"
end
```

#### Using the issue_replacement_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddCardResponseDTO>, Integer, Hash)> issue_replacement_card_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, replace_card_request, opts)

```ruby
begin
  # Issue Replacement Card
  data, status_code, headers = api_instance.issue_replacement_card_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, replace_card_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddCardResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->issue_replacement_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. |  |
| **customer_hash_id** | **String** | Unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | Unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | Unique card identifier generated while new/add-on card issuance. |  |
| **replace_card_request** | [**ReplaceCardRequest**](ReplaceCardRequest.md) | A card can be replaced using the Replace Card API only if it is permanently blocked. A permanently blocked card cannot be replaced on the same date as date of issuance. For example, a customer issued a card today and request to block the card permanently, on the same day. However, a customer may not call the Replace Card API to issue a replacement on the same date. |  |
| **x_request_id** | **String** | Enter a unique UUID value | [optional] |

### Return type

[**AddCardResponseDTO**](AddCardResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## lock_unlock_card_v2

> <LockStatusUpdateResponseDTO> lock_unlock_card_v2(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, lock_status_update_request_dto, opts)

Lock/Unlock Cards

This API allows you to temporarily lock or unlock a card.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = 'client_hash_id_example' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | The unique card identifier generated while new/add-on card issuance.
lock_status_update_request_dto = NiumClient::LockStatusUpdateRequestDTO.new({action: 'lock'}) # LockStatusUpdateRequestDTO | lockStatusUpdateRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Lock/Unlock Cards
  result = api_instance.lock_unlock_card_v2(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, lock_status_update_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->lock_unlock_card_v2: #{e}"
end
```

#### Using the lock_unlock_card_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LockStatusUpdateResponseDTO>, Integer, Hash)> lock_unlock_card_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, lock_status_update_request_dto, opts)

```ruby
begin
  # Lock/Unlock Cards
  data, status_code, headers = api_instance.lock_unlock_card_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, lock_status_update_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LockStatusUpdateResponseDTO>
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->lock_unlock_card_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | The unique card identifier generated while new/add-on card issuance. |  |
| **lock_status_update_request_dto** | [**LockStatusUpdateRequestDTO**](LockStatusUpdateRequestDTO.md) | lockStatusUpdateRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**LockStatusUpdateResponseDTO**](LockStatusUpdateResponseDTO.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*


## renew_card

> String renew_card(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, renew_card_request, opts)

Renew Card

Use this API for card renewal.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = 'client_hash_id_example' # String | The unique client identifier generated and shared before the API handshake.
customer_hash_id = 'customer_hash_id_example' # String | The unique customer identifier generated on customer creation.
wallet_hash_id = 'wallet_hash_id_example' # String | The unique wallet identifier generated simultaneously with customer creation.
card_hash_id = 'card_hash_id_example' # String | The unique card identifier generated while new/add-on card issuance.
renew_card_request = NiumClient::RenewCardRequest.new # RenewCardRequest | A card can be renewed using the Renew Card API on or before 45 days from the expiration date.
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Renew Card
  result = api_instance.renew_card(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, renew_card_request, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->renew_card: #{e}"
end
```

#### Using the renew_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> renew_card_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, renew_card_request, opts)

```ruby
begin
  # Renew Card
  data, status_code, headers = api_instance.renew_card_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, renew_card_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->renew_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | The unique client identifier generated and shared before the API handshake. |  |
| **customer_hash_id** | **String** | The unique customer identifier generated on customer creation. |  |
| **wallet_hash_id** | **String** | The unique wallet identifier generated simultaneously with customer creation. |  |
| **card_hash_id** | **String** | The unique card identifier generated while new/add-on card issuance. |  |
| **renew_card_request** | [**RenewCardRequest**](RenewCardRequest.md) | A card can be renewed using the Renew Card API on or before 45 days from the expiration date. |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

**String**

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_card_details_v2

> <ApiResponse2> update_card_details_v2(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, update_contact_info_request_dto, opts)

Update Card Details V2

This API allows you to update the contact information of the cardholder.

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

api_instance = NiumClient::LifecycleApi.new
client_hash_id = 'client_hash_id_example' # String | clientHashId
customer_hash_id = 'customer_hash_id_example' # String | customerHashId
wallet_hash_id = 'wallet_hash_id_example' # String | walletHashId
card_hash_id = 'card_hash_id_example' # String | cardHashId
update_contact_info_request_dto = NiumClient::UpdateContactInfoRequestDTO.new # UpdateContactInfoRequestDTO | updateContactInfoRequestDTO
opts = {
  x_request_id: '{{$guid}}' # String | Enter a unique UUID value.
}

begin
  # Update Card Details V2
  result = api_instance.update_card_details_v2(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, update_contact_info_request_dto, opts)
  p result
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->update_card_details_v2: #{e}"
end
```

#### Using the update_card_details_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiResponse2>, Integer, Hash)> update_card_details_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, update_contact_info_request_dto, opts)

```ruby
begin
  # Update Card Details V2
  data, status_code, headers = api_instance.update_card_details_v2_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, card_hash_id, update_contact_info_request_dto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiResponse2>
rescue NiumClient::ApiError => e
  puts "Error when calling LifecycleApi->update_card_details_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_hash_id** | **String** | clientHashId |  |
| **customer_hash_id** | **String** | customerHashId |  |
| **wallet_hash_id** | **String** | walletHashId |  |
| **card_hash_id** | **String** | cardHashId |  |
| **update_contact_info_request_dto** | [**UpdateContactInfoRequestDTO**](UpdateContactInfoRequestDTO.md) | updateContactInfoRequestDTO |  |
| **x_request_id** | **String** | Enter a unique UUID value. | [optional] |

### Return type

[**ApiResponse2**](ApiResponse2.md)

### Authorization

[default](../README.md#default)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, */*

