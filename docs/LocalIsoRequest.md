# NiumClient::LocalIsoRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acceptor_id42** | **String** | This field contains the 15 character acceptor id | [optional] |
| **acceptor_name_location43** | **String** | This field contains the acceptor name and location | [optional] |
| **acceptor_terminal_id41** | **String** | This field contains the 8 character acceptor terminal id | [optional] |
| **ai_country_code19** | **String** | This field contains the 3 character ai country code | [optional] |
| **ai_identity_code32** | **String** | This field contains the ai identity code | [optional] |
| **authorization_code38** | **String** | This field contains the 6 character authorization code | [optional] |
| **billing_amount6** | **String** | This field contains the 12 character billing amount | [optional] |
| **billing_amount_fee30** | **String** | This field contains the billing amount fee30 | [optional] |
| **billing_amount_fee8** | **String** | This field contains the billing amount fee8 | [optional] |
| **billing_conversion_rate10** | **String** | This field contains the billing conversion rate10 | [optional] |
| **billing_currency_code51** | **String** | This field contains the 3 character billing currency code | [optional] |
| **capture_date_yymm17** | **String** | This field contains the capture date | [optional] |
| **card_sequence_number23** | **String** | This field contains the card sequence number | [optional] |
| **conversion_date_yymm16** | **String** | This field contains the conversion date | [optional] |
| **expiry_date_yymm14** | **String** | This field contains the expiry date | [optional] |
| **fi_country_code21** | **String** | This field contains the 3 character fi country code | [optional] |
| **fi_identity_code33** | **String** | This field contains the fi identity code | [optional] |
| **local_date13** | **String** | This field contains the local date13 | [optional] |
| **local_time12** | **String** | This field contains the local time12 | [optional] |
| **merchant_type18** | **String** | This field contains the 4 character merchant type | [optional] |
| **message_type0** | **String** | This field contains the 4 character message type | [optional] |
| **mid62** | **String** | This field contains the mid62 | [optional] |
| **misc_data58** | **String** | This field contains the misc data | [optional] |
| **network_international_id24** | **String** | This field contains the network international id | [optional] |
| **original_data_element90** | **String** | This field contains the original data element | [optional] |
| **pan2** | **String** | This field contains the 16 character pan2 | [optional] |
| **pos_condition_code25** | **String** | This field contains the 2 character pos condition code | [optional] |
| **pos_entry_capability_code60** | **String** | This field contains the pos entry capability code | [optional] |
| **pos_entry_mode22** | **String** | This field contains the 4 character pos entry mode | [optional] |
| **pos_pin_capture_code26** | **String** | This field contains the pos pin capture code | [optional] |
| **processing_code3** | **String** | This field contains the 6 character processing code | [optional] |
| **replacement_amount95** | **String** | This field contains the replacement amount | [optional] |
| **response_code39** | **String** | This field contains the 2 character response code | [optional] |
| **rrn** | **String** | This field contains the rrn | [optional] |
| **settlement_amount5** | **String** | This field contains the settlement amount | [optional] |
| **settlement_amount_fee29** | **String** | This field contains the settlement amount fee | [optional] |
| **settlement_conversion_rate9** | **String** | This field contains the settlement conversion rate9 | [optional] |
| **settlement_currency_code50** | **String** | This field contains the settlement currency code | [optional] |
| **settlement_date_yymm15** | **String** | This field contains the settlement date | [optional] |
| **settlement_processing_amount_fee31** | **String** | This field contains the settlement processing amount fee | [optional] |
| **stan** | **String** | This field contains the stan | [optional] |
| **trace_identifier115** | **String** | This field contains the trace identifier | [optional] |
| **track2_data35** | **String** | This field contains the track 2 Data | [optional] |
| **transaction_amount4** | **String** | This field contains the 12 character transaction amount | [optional] |
| **transaction_amount_fee28** | **String** | This field contains the transaction amount fee | [optional] |
| **transaction_currency_code49** | **String** | This field contains the 3 character transaction currency code | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::LocalIsoRequest.new(
  acceptor_id42: null,
  acceptor_name_location43: null,
  acceptor_terminal_id41: null,
  ai_country_code19: 702,
  ai_identity_code32: null,
  authorization_code38: null,
  billing_amount6: 000000000100,
  billing_amount_fee30: null,
  billing_amount_fee8: null,
  billing_conversion_rate10: null,
  billing_currency_code51: 840,
  capture_date_yymm17: 2411,
  card_sequence_number23: null,
  conversion_date_yymm16: 2411,
  expiry_date_yymm14: 2411,
  fi_country_code21: 702,
  fi_identity_code33: null,
  local_date13: null,
  local_time12: null,
  merchant_type18: 4563,
  message_type0: 0100,
  mid62: null,
  misc_data58: null,
  network_international_id24: null,
  original_data_element90: null,
  pan2: 4611350118036518,
  pos_condition_code25: 07,
  pos_entry_capability_code60: 05,
  pos_entry_mode22: 1020,
  pos_pin_capture_code26: null,
  processing_code3: 000000,
  replacement_amount95: null,
  response_code39: null,
  rrn: null,
  settlement_amount5: null,
  settlement_amount_fee29: null,
  settlement_conversion_rate9: null,
  settlement_currency_code50: 702,
  settlement_date_yymm15: 2411,
  settlement_processing_amount_fee31: null,
  stan: null,
  trace_identifier115: null,
  track2_data35: null,
  transaction_amount4: 000000000100,
  transaction_amount_fee28: null,
  transaction_currency_code49: 702
)
```

