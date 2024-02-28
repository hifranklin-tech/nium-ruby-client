# NiumClient::BlockCustomerRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | This field accepts the action type of block/unblock. |  |
| **comment** | **String** | This field accepts comment which describes the action or reason. Maximum character limit: 255 | [optional] |
| **reason** | **String** | This field accepts the reason for block/unblock for customer. Following are the valid values with respect to action: &#x3D;&gt; PERMANENT_BLOCK: • CUSTOMER_REQUEST • CLIENT_REQUEST • DECEASED • ACCOUNT_CLOSURE • SUSPICIOUS_ACTIVITY • FRAUDULENT_ACTIVITY • POTENTIAL_SANCTION • SANCTIONED_CUSTOMER • BLACKLISTED_CUSTOMER   &#x3D;&gt; TEMPORARY_BLOCK: • CUSTOMER_REQUEST • CLIENT_REQUEST • SUSPICIOUS_ACTIVITY • POTENTIAL_SANCTION   &#x3D;&gt; UNBLOCK: • CUSTOMER_REQUEST • CLIENT_REQUEST |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BlockCustomerRequestDTO.new(
  action: null,
  comment: null,
  reason: null
)
```

