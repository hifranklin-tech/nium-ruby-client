# NiumClient::Access

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;Account&gt;**](Account.md) | This is an array which holds account detail fields. | [optional] |
| **all_psd2** | **String** | Only \&quot;allAccounts\&quot; value is admitted. | [optional] |
| **available_accounts** | **String** | Only \&quot;allAccounts\&quot; or \&quot;allAccountsWithBalances\&quot; values are admitted | [optional] |
| **balances** | [**Array&lt;Balance&gt;**](Balance.md) | This is an array which holds balance detail fields. | [optional] |
| **transactions** | [**Array&lt;Transaction&gt;**](Transaction.md) | This is an array which holds transaction detail fields. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::Access.new(
  accounts: null,
  all_psd2: null,
  available_accounts: null,
  balances: null,
  transactions: null
)
```

