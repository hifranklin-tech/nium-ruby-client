# NiumClient::ProductProfessionalDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **position** | **String** | This field accepts the position. Use the [Fetch Corporate Constants API](ref:fetchcorporateconstants) to get the list of valid enum values. | [optional] |
| **position_end_date** | **String** | This field accepts the end date of the position. | [optional] |
| **position_start_date** | **String** | This field accepts the start date of the position. | [optional] |
| **share_percentage** | **String** | This field accepts the percentage of shares held. Enter a number between 0 to 100. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ProductProfessionalDetails.new(
  position: null,
  position_end_date: null,
  position_start_date: null,
  share_percentage: null
)
```

