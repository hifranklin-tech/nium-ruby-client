# NiumClient::CardInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_product_id** | **String** | Pre-defined product Id, defined at NIUM and communicated to client for card issuance. | [optional] |
| **plastic_id** | **String** | This field contains the pre-defined plastic Id which is used to determine card design. | [optional] |
| **region_code** | **String** | This field contains the 2-letter [region code](doc:currency-and-country-codes) for the card. | [optional] |
| **masked_card_number** | **String** | This field contains the 16-digit masked card number in format 1234-56xx-xxxx-3456. | [optional] |
| **proxy_number** | **String** | This field contains the reference number for the card. | [optional] |
| **card_type** | **String** | This field contains the issued card type. | [optional] |
| **issuance_type** | **String** | This field contains the type of the card issued. | [optional] |
| **card_status** | **String** | This field contains the activation status of the card. | [optional] |
| **child_customer_hash_id** | **String** | This field refers to a unique identifier, known as customerHashId, assigned to an individual customer who is associated with a corporate customer at the parent level. This identifier serves the purpose of distinguishing and tracking the child-level customer within a given client&#39;s program. By utilizing this identifier, it becomes possible to establish and maintain the appropriate linkage between the child customer and their parent corporate customer, ensuring accurate association and management of customer data. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CardInfo.new(
  card_product_id: 100,
  plastic_id: 750065001,
  region_code: AU,
  masked_card_number: 4572-50xx-xxxx-0123,
  proxy_number: 0007570020000010123,
  card_type: GPR_VIR,
  issuance_type: primaryCard,
  card_status: VIRTUAL_ACTIVE,
  child_customer_hash_id: null
)
```

