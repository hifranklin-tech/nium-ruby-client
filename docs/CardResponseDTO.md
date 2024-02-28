# NiumClient::CardResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_hash_id** | **String** | This field contains the unique card identifier generated while new/add-on card issuance. | [optional] |
| **card_type** | **String** | This field contains the card type to be issued. The acceptable values are: GPR_PHY: This value is used to issue a physical card. GPR_VIR: This value is used to issue a virtual card. GPR_VIR_UP2PHY: This value is used to issue a virtual upgrade to physical card. | [optional] |
| **card_status** | **String** | This field contains the activation status of the card. | [optional] |
| **masked_card_number** | **String** | This field contains the 16-digit masked card number in format 1234-56xx-xxxx-3456. | [optional] |
| **proxy_number** | **String** | This field contains the reference number for the card. | [optional] |
| **logo_id** | **String** | This field contains the pre-defined logo for card issuance. | [optional] |
| **plastic_id** | **String** | This field contains the pre-defined plastic ID which is used to determine card design. | [optional] |
| **region_code** | **String** | This field contains the 2-letter [region code](doc:currency-and-country-codes) for the card. | [optional] |
| **block_reason** | **String** | This field contains the reason for card block. | [optional] |
| **replaced_on** | **String** | This field contains the timestamp when the card was replaced, otherwise null. | [optional] |
| **issuance_mode** | **String** | This field contains the mode of delivery of a card. | [optional] |
| **issuance_type** | **String** | This field contains the type of the card issued.The values can be primaryCard, additionalCard, or replaceCard. | [optional] |
| **embossing_line1** | **String** | This field contains the printed name on line 1. | [optional] |
| **embossing_line2** | **String** | This field contains the printed name on line 2. | [optional] |
| **first_name** | **String** | This field contains the first name of the card holder. | [optional] |
| **middle_name** | **String** | This field contains the middle name of the card holder. | [optional] |
| **last_name** | **String** | This field contains the last name of the card holder. | [optional] |
| **email** | **String** | This field contains the email ID of the card holder. | [optional] |
| **country_code** | **String** | This field contains the 2-letter [ISO-2 country code](doc:currency-and-country-codes) for identifying the country prefix to a mobile number. | [optional] |
| **mobile** | **String** | This field contains the mobile number of the card holder--digits only--without the country code. | [optional] |
| **demog_overridden** | **Boolean** | This field is required in case of ADD_ON cards. If sent as false, the card shall be issued in the name of the customer(primary card holder). If sent as true, the card shall be issued in the name of the add-on card holder whose full details need to be provided. | [optional] |
| **created_at** | **String** | This field contains the date and time of card creation | [optional] |
| **updated_at** | **String** | This field contains the date and time of card updation | [optional] |
| **tokens** | [**Array&lt;CardTokensDTO&gt;**](CardTokensDTO.md) | This array contains the token details. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CardResponseDTO.new(
  card_hash_id: dcfe0a79-9386-4b50-a1e1-7299f6bfb0c0,
  card_type: GPR_VIR,
  card_status: VIRTUAL_ACTIVE,
  masked_card_number: 4572-50xx-xxxx-0123,
  proxy_number: 0007570020000010123,
  logo_id: 177,
  plastic_id: 750065001,
  region_code: AU,
  block_reason: fraud,
  replaced_on: null,
  issuance_mode: NORMAL_DELIVERY_LOCAL,
  issuance_type: primaryCard,
  embossing_line1: John Smith,
  embossing_line2: null,
  first_name: John,
  middle_name: W,
  last_name: Smith,
  email: johnsmith@xyzmail.com,
  country_code: AU,
  mobile: 0412345111,
  demog_overridden: false,
  created_at: 2021-03-12 04:16:46,
  updated_at: 2021-03-12 04:16:46,
  tokens: null
)
```

