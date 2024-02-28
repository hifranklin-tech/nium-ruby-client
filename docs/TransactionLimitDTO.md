# NiumClient::TransactionLimitDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_percentage** | **Float** | This field contains the threshold percentage which is calculated on the value as a threshold or margin which is to be allowed for authorization when a transaction exceeds the specified limits. The format is Decimal(3,4). |  |
| **created_at** | **Time** | This field contains the timestamp of limit generation. | [optional] |
| **masked_card_number** | **String** | This is the 16-digit masked card number in format 1234-56xx-xxxx-3456. | [optional] |
| **status** | **String** | This field defines whether a particular limit is active or not. It can accept one of the two values: Active or Inactive. |  |
| **type** | **String** | This field accepts the limit type to be set. It can take the following values: PER_TRANSACTION_AMOUNT_LIMIT DAILY_AMOUNT_LIMIT MONTHLY_AMOUNT_LIMIT LIFETIME_AMOUNT_LIMIT LIFETIME_COUNT_LIMIT TRANSACTION_DURATION_LIMIT |  |
| **updated_at** | **Time** | This field contains the timestamp of limit updation. | [optional] |
| **value** | **String** | This field accepts the values for each card-level limits. It accepts a date range in the yyyymmdd-yyyymmdd format and UTC +00 time zone as a string when type is TRANSACTION_DURATION_LIMIT. Otherwise, it accepts the limit value. |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::TransactionLimitDTO.new(
  additional_percentage: 10,
  created_at: null,
  masked_card_number: 9876-50xx-xxxx-4321,
  status: null,
  type: MONTHLY_AMOUNT_LIMIT,
  updated_at: null,
  value: 90.0
)
```

