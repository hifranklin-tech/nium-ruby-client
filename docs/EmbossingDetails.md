# NiumClient::EmbossingDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name_on_card** | **String** | This field contains the printed name on card. | [optional] |
| **additional_line** | **String** | This field contains the printed additional line on card. | [optional] |
| **issuance_mode** | **String** | This field contains the mode of delivery of a card. | [optional] |
| **created_on** | **String** | This field contains the card created date | [optional] |
| **processed_on** | **String** | This field contains the card processed date | [optional] |
| **printed_on** | **String** | This field contains the card printed date | [optional] |
| **dispatched_on** | **String** | This field contains the card dispatched date | [optional] |
| **dispatch_awb** | **String** | This field contains the card dispatched airway bill | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::EmbossingDetails.new(
  name_on_card: John Doe,
  additional_line: John Doe,
  issuance_mode: NORMAL_DELIVERY_LOCAL,
  created_on: 2021-03-12 04:16:46,
  processed_on: 2021-03-12 04:16:46,
  printed_on: null,
  dispatched_on: null,
  dispatch_awb: null
)
```

