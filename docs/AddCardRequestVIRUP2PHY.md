# NiumClient::AddCardRequestVIRUP2PHY

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_expiry** | **String** | The expiry date is applicable only for Virtual cards and not applicable for physical cards. This field is in MMYY format. For Virtual cards, the expiry date can be a maximum of 5 years from when the API is used. |  |
| **card_product_id** | **String** | Pre-defined product Id, defined at NIUM and communicated to client for card issuance. |  |
| **card_type** | **String** | This field accepts the card type to be issued. The acceptable values are: \&quot; + \&quot;PHY: This value is used to issue a physical card \&quot; + \&quot;VIR: This value is used to issue a virtual card \&quot; + \&quot;VIRUP2PHY: This value is used to issue a virtual upgrade to physical card |  |
| **name_on_card** | **String** | This field can be used to print the customer name. The value sent in this field will be printed on the card.If this field is left empty, line 1 will not be printed on the card. This field accepts alphanumeric characters along with space(s) The maximum character limit is 26. | [optional] |
| **additional_line** | **String** | This field can be used to send the company name or employeeID. Anything sent in this field will be printed on the card.  This field accepts alphanumeric characters along with space(s). The maximum character limit is 26. | [optional] |
| **email** | **String** | Email of the card holder. | [optional] |
| **child_customer_hash_id** | **String** | This field refers to a unique identifier, known as customerHashId, assigned to an individual customer who is associated with a corporate customer at the parent level. This identifier serves the purpose of distinguishing and tracking the child-level customer within a given client&#39;s program. By utilizing this identifier, it becomes possible to establish and maintain the appropriate linkage between the child customer and their parent corporate customer, ensuring accurate association and management of customer data. | [optional] |
| **country_code** | **String** | Country code of recipient&#39;s phone number accepted in [2-letter ISO Alpha-2 country code](doc:currency-and-country-codes). | [optional] |
| **mobile** | **String** | Mobile field is where the recipient&#39;s mobile phone number. | [optional] |
| **issuance_mode** | **String** | This field is only required for physical cards(PHY) mode of delivery of a card. Possible values are: NORMAL_DELIVERY_LOCAL EXPRESS_DELIVERY_LOCAL INTERNATIONAL_DELIVERY | [optional] |
| **plastic_id** | **String** | Pre-defined plastic Id defined at NIUM and communicated to client. It is used to determine the card design |  |
| **delivery** | [**CardAddress**](CardAddress.md) |  | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AddCardRequestVIRUP2PHY.new(
  card_expiry: 1126,
  card_product_id: 100,
  card_type: null,
  name_on_card: John Doe,
  additional_line: John Doe,
  email: example@domain.com,
  child_customer_hash_id: dcfe0a79-9386-4b50-a1e1-7299f6bfb0c0,
  country_code: 01,
  mobile: 9876543210,
  issuance_mode: NORMAL_DELIVERY_LOCAL,
  plastic_id: 100100,
  delivery: null
)
```

