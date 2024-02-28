# NiumClient::RetrieveCardDetailsResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cvv** | **String** | This field contains the base64 encoded 3-digit CVV for the card. | [optional] |
| **expiry** | **String** | This field contains the base64 encoded expiry date of the card in MM/YY format. | [optional] |
| **un_masked_card_number** | **String** | This field contains the complete 16 digit card number in base64 encoded format. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RetrieveCardDetailsResponseDTO.new(
  cvv: NjAx,
  expiry: MjYwMQ&#x3D;&#x3D;,
  un_masked_card_number: NDYxMTk5MDM0MzU3ODEwNQ&#x3D;&#x3D;
)
```

