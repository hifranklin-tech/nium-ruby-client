# NiumClient::AddBeneficiaryRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authentication_code** | **String** | This fields accepts the authenticationCode generated as part of SCA(Strong Customer Authentication). Note: Authentication code must be passed if regulatory region of the program is UK or EU and License Entity Nium. For other regions, this field is optional.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **auto_sweep_payout_account** | **Boolean** |  | [optional] |
| **beneficiary_account_number** | **String** | This field accepts an account number.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_account_type** | **String** | This field accepts the bank account type of the beneficiary. The account type can be either Individual or Corporate. |  |
| **beneficiary_address** | **String** | This field accepts an address of the beneficiary.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_alias** | **String** | This field accepts the alias of beneficiary.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_bank_account_type** | **String** | This field accepts the type of account. This field is conditional in case of WALLET payout and the possible values are: Current Saving Maestra Checking   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_bank_code** | **String** | This field accepts the beneficiary bank code.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_bank_name** | **String** | This field accepts the beneficiary bank name.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_card_expiry_date** | **String** | This field accepts expiry date of card.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_card_issuer_name** | **String** | This field accepts issuer name of the card.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_city** | **String** | This field accepts the city of the beneficiary.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_contact_country_code** | **String** | This field accepts the mobile number country code of the beneficiary.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_contact_name** | **String** | This field accepts the name of the contact person of the business, applicable when beneficiary is a business. | [optional] |
| **beneficiary_contact_number** | **String** | This field accepts the mobile number of the beneficiary--digits only--without the country code.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_country_code** | **String** | This field accepts the [ISO-2 country code](doc:currency-and-country-codes) of the beneficiary. |  |
| **beneficiary_dob** | **String** |  | [optional] |
| **beneficiary_email** | **String** | This field accepts an email of the beneficiary.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_entity_type** | **String** | This field accepts the entity type of the business, when the beneficiary is a business. Refer to the enum value list for allowed values. The value &#x60;go&#x60; indicates a majority owned subsidiary of state-owned company. | [optional] |
| **beneficiary_establishment_date** | **String** |  | [optional] |
| **beneficiary_identification_type** | **String** | This field accepts the type of identification document name for a beneficiary.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_identification_value** | **String** | This field accepts an identification document number for the beneficiary.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_name** | **String** | This field accepts the name of the beneficiary. |  |
| **beneficiary_postcode** | **String** | This field accepts the postal code of the beneficiary.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **beneficiary_state** | **String** | This field accepts the state of the beneficiary.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **default_auto_sweep_payout_account** | **Boolean** |  | [optional] |
| **destination_country** | **String** | This field contains the 2-letter [ISO-2 country code](doc:currency-and-country-codes) of the destination country.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **destination_currency** | **String** | This field accepts the 3-letter [ISO-4217 destination currency code](doc:currency-and-country-codes). |  |
| **encrypted_beneficiary_card_token** | **String** | This field accepts the system generated token number to identify the card stored at NIUM&#39;s platform. Note: This field is mandatory if the client is non-PCI DSS compliant.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **payout_method** | **String** | This field accepts the payout method for the remittance payout. This field can accept one of the following values: LOCAL SWIFT WALLET CARD PROXY |  |
| **proxy_type** | **String** | This field indicates the proxy type sent in the payment request. For SGD-PayNow: The proxy type can be MOBILE, UEN , NRIC, or VPA  For INR-UPI: The proxy type should be VPA For BRL-PIX: The proxy type can be MOBILE, ID, EMAIL, or RANDOM_KEY  For AUD-PayID: The proxy type can be MOBILE, EMAIL, ABN, or ORGANISATION_ID (only domestic payouts are allowed) For MYR-DuitNow: The proxy type can be NRIC, PASSPORT, CORPORATE_REGISTRATION_NUMBER, MOBILE, or ARMY_ID Note: This field is mandatory when the payoutMethod type is PROXY.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **proxy_value** | **String** | This field indicates the proxy value such as VPA, UEN, or mobile number etc. Note: This field is mandatory when the payoutMethod type is PROXY The mobile number should include country code.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **remitter_beneficiary_relationship** | **String** | This field accepts the relationship of the beneficiary with the remitter.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **routing_code_type1** | **String** | This field accepts the routing code type 1, for example, SWIFT for all countries, IFSC for India, SORT CODE for UK, ACH CODE for USA, BRANCH CODE for Brazil and Bangladesh, BSB CODE for Australia, BANK CODE for HongKong.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **routing_code_type2** | **String** | This field accepts the routing code type 2, for example, SWIFT for all countries, IFSC for India, SORT CODE for UK, ACH CODE for USA, BRANCH CODE for Brazil and Bangladesh, BSB CODE for Australia, BANK CODE for HongKong.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **routing_code_value1** | **String** | This field accepts the routing code value 1, for example, ADCBINBB or ADCBINBB123 for SWIFT, SBIN0000058 for IFSC, 100000 for SORT CODE, 111000025 for ACH CODE, 012515 for BSB CODE, 151 for BANK CODE.   Note: For this conditional field, see the callout at the top of this page. | [optional] |
| **routing_code_value2** | **String** | This field accepts the routing code value 2, for example, ADCBINBB or ADCBINBB123 for SWIFT, SBIN0000058 for IFSC, 100000 for SORT CODE, 111000025 for ACH CODE, 012515 for BSB CODE, 151 for BANK CODE.   Note: For this conditional field, see the callout at the top of this page. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::AddBeneficiaryRequestDTO.new(
  authentication_code: null,
  auto_sweep_payout_account: null,
  beneficiary_account_number: null,
  beneficiary_account_type: INDIVIDUAL,
  beneficiary_address: null,
  beneficiary_alias: null,
  beneficiary_bank_account_type: null,
  beneficiary_bank_code: null,
  beneficiary_bank_name: null,
  beneficiary_card_expiry_date: null,
  beneficiary_card_issuer_name: null,
  beneficiary_city: null,
  beneficiary_contact_country_code: null,
  beneficiary_contact_name: null,
  beneficiary_contact_number: null,
  beneficiary_country_code: null,
  beneficiary_dob: null,
  beneficiary_email: null,
  beneficiary_entity_type: partnership,
  beneficiary_establishment_date: null,
  beneficiary_identification_type: null,
  beneficiary_identification_value: null,
  beneficiary_name: null,
  beneficiary_postcode: null,
  beneficiary_state: null,
  default_auto_sweep_payout_account: null,
  destination_country: null,
  destination_currency: null,
  encrypted_beneficiary_card_token: null,
  payout_method: null,
  proxy_type: null,
  proxy_value: null,
  remitter_beneficiary_relationship: null,
  routing_code_type1: null,
  routing_code_type2: null,
  routing_code_value1: null,
  routing_code_value2: null
)
```

