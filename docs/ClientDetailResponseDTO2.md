# NiumClient::ClientDetailResponseDTO2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_validation** | **Boolean** | This is applicable to RHA clients. This field will ensure whether the account-validation transactions are forwarded to client or not | [optional] |
| **allow_inter_client_wallet_transfer** | **Boolean** | This field indicates if inter client wallet transfer is enabled. | [optional] |
| **allow_third_party_funding** | **Boolean** | This field specifies if third party funding is allowed or not. | [optional] |
| **apple_pay_support** | **Boolean** | This field contains the flag for apple pay support. | [optional] |
| **auto_sweep_bank_details** | [**AutoSweepBankDetails**](AutoSweepBankDetails.md) |  | [optional] |
| **billing_address_as_corporate** | **Boolean** | This field indicates whether an individual customer at the child level should have the same billing address as the business address of the corporate customer at the parent level. | [optional] |
| **card_txn_narrative** | **String** | This field specifies the default transaction narrative. | [optional] |
| **card_txn_product_code** | **String** | This field specifies the internal card transaction product code. | [optional] |
| **card_txn_redirect_url** | **String** | This field contains the card transaction redirected URL. | [optional] |
| **child_must_have_parent** | **Boolean** | This field indicates whether an individual customer must be treated as a child card and be associated with a corporate customer at the parent level. | [optional] |
| **client_hash_id** | **String** | This field contains the unique client identifier generated and shared before API handshake. | [optional] |
| **client_id_number** | **String** | This field shall be deprecated in future. | [optional] |
| **compliance_callback_url** | **String** | This field specifies the compliance callback URL. | [optional] |
| **compliance_status_callback_url** | **String** | This field contains the redirection URL for compliance callback. | [optional] |
| **confirmation_of_payee** | **Boolean** | This field indicates whether Confirmation of Payee is allowed or not. | [optional] |
| **contact_no** | **String** | This field contains the client&#39;s contact number. | [optional] |
| **country_code** | **String** | This field contains the 3-letter ISO-4217 currency code. | [optional] |
| **currencies** | [**Array&lt;ClientCurrencyResponseDTO&gt;**](ClientCurrencyResponseDTO.md) | This is an array objects which holds currency details. | [optional] |
| **currency_authorization_type** | **String** | This field denotes the authorization type of a client. The valid values are SINGLE, DUAL, MULTI, and AUTO_SWEEP. | [optional] |
| **custom_fee_enabled** | **Boolean** | This field contains the client preference to levy custom fee. | [optional] |
| **customer_auth_url** | **String** | This field contains the customer authorization URL. | [optional] |
| **deduplication_flag** | **Boolean** | This field contains the mobile/email uniqueness flag. | [optional] |
| **ekyc_redirect_url** | **String** |  | [optional] |
| **email** | **String** | This field contains the client&#39;s email Id. | [optional] |
| **funding_instrument_type** | **String** | This field is used to define whether the customer is allowed to fund their wallet or not. If yes that is not RESTRICTED, then either using DEBIT CARD or both DEBIT and CREDIT cards. | [optional] |
| **google_pay_support** | **Boolean** | This field contains the flag for google pay support. | [optional] |
| **license_entity** | **String** | This field contains the license ownership for a client.The possible values are: | [optional] |
| **logo_url** | **String** | This field contains the client&#39;s logo URL. | [optional] |
| **markup** | **Float** | This field contains the cross currency transaction markup value. | [optional] |
| **minimum_customer_age** | **Integer** | This field contains the minimum customer age which should be 18 years. Discuss with your NIUM account manager for any special use-cases. | [optional] |
| **name** | **String** | This field contains the name of a client. | [optional] |
| **notification_webhook** | **String** | This field contains the Webhook notification redirection URL. | [optional] |
| **payment_ids** | [**Array&lt;PaymentIdsDTO&gt;**](PaymentIdsDTO.md) | This is an array object which holds the client payment Id response details. | [optional] |
| **post_funded_payout** | **Boolean** | This field contains the Post Funded Payout of the client. | [optional] |
| **prefund_name** | **String** | This field contains the name defined for ICC transactions | [optional] |
| **regulatory_region** | **String** | This field contains the regulatory region of the client. | [optional] |
| **samsung_pay_support** | **Boolean** | This field contains the flag for samsung pay support. | [optional] |
| **whitelisted_remitter_accounts** | [**Array&lt;RemitterAccountWhiteList&gt;**](RemitterAccountWhiteList.md) | This is an array object which holds the remitter accounts which are whitelisted for the client. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ClientDetailResponseDTO2.new(
  account_validation: false,
  allow_inter_client_wallet_transfer: false,
  allow_third_party_funding: false,
  apple_pay_support: false,
  auto_sweep_bank_details: null,
  billing_address_as_corporate: false,
  card_txn_narrative: null,
  card_txn_product_code: null,
  card_txn_redirect_url: null,
  child_must_have_parent: false,
  client_hash_id: 82c68bab-3c04-3451-8d7b-cb38ad713d97,
  client_id_number: null,
  compliance_callback_url: null,
  compliance_status_callback_url: https://acme-notification.com/callback/compliance?customerHashId&#x3D;%s,
  confirmation_of_payee: false,
  contact_no: 6588008100,
  country_code: SG,
  currencies: null,
  currency_authorization_type: MULTI,
  custom_fee_enabled: false,
  customer_auth_url: null,
  deduplication_flag: false,
  ekyc_redirect_url: null,
  email: admin@acme.com,
  funding_instrument_type: RESTRICTED,
  google_pay_support: false,
  license_entity: THIRD_PARTY,
  logo_url: null,
  markup: 0.5,
  minimum_customer_age: 18,
  name: Acme In,
  notification_webhook: https://acme-notification.com/webhook,
  payment_ids: null,
  post_funded_payout: false,
  prefund_name: Acme Inc,
  regulatory_region: SG,
  samsung_pay_support: false,
  whitelisted_remitter_accounts: null
)
```

