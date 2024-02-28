# NiumClient::AddCardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **logo_identifier** | **String** | Pre-defined logo Id, defined at NIUM and communicated to client for card issuance. |  |
| **plastic_id** | **String** | Pre-defined plastic Id defined at Nium and communicated to client. It is used to determine the card design |  |
| **card_type** | **String** | This field accepts the card type to be issued. The acceptable values are: GPR_PHY: This value is used to issue a physical card GPR_VIR: This value is used to issue a virtual card GPR_VIR_UP2PHY: This value is used to issue a virtual upgrade to physical card |  |
| **card_issuance_action** | **String** | This field determines if the card issued is primary or add-on. The possible values are: NEW(for a new card) ADD_ON(for add on card) Note that a customer may have only one primary Physical(GPR_PHY) card, one primary Virtual(GPR_VIR) and only one primary virtual upgrade to physical card(GPR_VIR_UP2PHY). Any further cards can be issued as add-on cards. |  |
| **card_fee_currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for one of the opted currencies in which the card issuance fee is to be charged |  |
| **card_expiry** | **String** | The expiry date is applicable only for Virtual cards and not applicable for physical cards. This field is in MMYY format. For Virtual cards, the expiry date can be a maximum of 5 years from when the API is used. |  |
| **embossing_line1** | **String** | This field can be used to print the customer name. The value sent in this field will be printed on the card.If this field is left empty, line 1 will not be printed on the card. This field accepts alphanumeric characters along with space(s) The maximum character limit is 26. | [optional] |
| **embossing_line2** | **String** | This field can be used to send the company name or employeeID. Anything sent in this field will be printed on the card.  This field accepts alphanumeric characters along with space(s). The maximum character limit is 26. | [optional] |
| **issuance_mode** | **String** | This field is only required for physical cards(GPR_PHY) mode of delivery of a card. Possible values are: NORMAL_DELIVERY_LOCAL EXPRESS_DELIVERY_LOCAL INTERNATIONAL_DELIVERY | [optional] |
| **demog_overridden** | **Boolean** | This flag specifies if the demogOverriden is true or false The default value of demogOverridden is false. It should always be sent as false for issuing a primary card. | [optional] |
| **country_code** | **String** | This field accepts the [2-letter ISO Alpha-2 country code](doc:currency-and-country-codes) for the add-on cardholder. This field is mandatory when demogOverridden is true. | [optional] |
| **mobile** | **String** | This field accepts the mobile number for the add-on cardholder. This field is mandatory when demogOverridden is true | [optional] |
| **email** | **String** | This field accepts the email ID for the add-on cardholder. This field is mandatory when demogOverridden is true | [optional] |
| **first_name** | **String** | This field accepts the firstname for the add-on cardholder. This field is mandatory when demogOverridden is true | [optional] |
| **last_name** | **String** | This field accepts the lastname for the add-on cardholder. This field is mandatory when demogOverridden is true | [optional] |
| **middle_name** | **String** | The middle name of the customer | [optional] |
| **card_hash_id** | **String** | This is the cardHashId of the primary(NEW) card which is already issued. It is mandatory to send this value when ADD_ON card is being issued. This field is not needed for NEW card | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AddCardRequest.new(
  logo_identifier: null,
  plastic_id: 100100,
  card_type: GPR_VIR,
  card_issuance_action: NEW,
  card_fee_currency_code: SGD,
  card_expiry: 1122,
  embossing_line1: John Doe,
  embossing_line2: John Doe,
  issuance_mode: NORMAL_DELIVERY_LOCAL,
  demog_overridden: false,
  country_code: IN,
  mobile: null,
  email: example@gmail.com,
  first_name: null,
  last_name: null,
  middle_name: null,
  card_hash_id: fadf2ddd-b726-46bf-3c0a-965b096478f4
)
```

