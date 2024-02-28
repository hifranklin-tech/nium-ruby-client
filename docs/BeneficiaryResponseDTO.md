# NiumClient::BeneficiaryResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **autosweep_payout_account** | **Boolean** | This field contains the boolean value for the autosweepPayoutAccount. | [optional] |
| **beneficiary_account_number** | **String** | This field contains an account number as a payout detail. | [optional] |
| **beneficiary_account_type** | **String** | This field contains the bank account type of the beneficiary. The account type can be either Individual or Corporate. | [optional] |
| **beneficiary_address** | **String** | This field contains an address of the beneficiary. | [optional] |
| **beneficiary_bank_account_type** | **String** | This field contains one of following four bank account types given at the time of beneficiary creation: • Current • Saving • Maestra • Checking | [optional] |
| **beneficiary_bank_code** | **String** | This field contains the bank code of the payout. | [optional] |
| **beneficiary_bank_name** | **String** | This field contains the beneficiary bank name. | [optional] |
| **beneficiary_card_expiry_date** | **String** | This field contains the beneficiary’s card expiry date. | [optional] |
| **beneficiary_card_issuer_name** | **String** | This field contains the beneficiary’s card issuer name. | [optional] |
| **beneficiary_card_meta_data** | [**CardMetaDataResponseDTO**](CardMetaDataResponseDTO.md) |  | [optional] |
| **beneficiary_card_number_mask** | **String** | This field contains the 16-digit masked card number of beneficiary in the format XXXX XXXX XXXX 8351. | [optional] |
| **beneficiary_card_token** | **String** | This field contains the system generated token number to identify the card stored at NIUM&#39;s platform. | [optional] |
| **beneficiary_card_type** | **String** | This field contains the beneficiary card type, for example, VISA, geoswift. | [optional] |
| **beneficiary_city** | **String** | This field contains the city of the beneficiary. | [optional] |
| **beneficiary_contact_country_code** | **String** | This field contains the mobile country code of the beneficiary. | [optional] |
| **beneficiary_contact_name** | **String** | This field contains the name of the contact person of the business, applicable when beneficiary is a business. | [optional] |
| **beneficiary_contact_number** | **String** | This field contains the mobile number of the beneficiary--digits only--without the country code. | [optional] |
| **beneficiary_country_code** | **String** | This field contains  the 2-letter [ISO-2 country code](doc:currency-and-country-codes) for the mobile number of beneficiary. | [optional] |
| **beneficiary_created_at** | **String** | This field contains the date and time of beneficiary creation. | [optional] |
| **beneficiary_dob** | **String** |  | [optional] |
| **beneficiary_email** | **String** | This field contains an email of the beneficiary. | [optional] |
| **beneficiary_entity_type** | **String** | This field contains the entity type of the business, when the beneficiary is a business. Refer to the ENUM value list for allowed values. The value GO indicates a majority owned subsidiary of state-owned company. | [optional] |
| **beneficiary_establishment_date** | **String** |  | [optional] |
| **beneficiary_hash_id** | **String** | This field contains the unique beneficiary hash ID. | [optional] |
| **beneficiary_identification_type** | **String** | This field contains the type of identification document name for a beneficiary. | [optional] |
| **beneficiary_identification_value** | **String** | This field contains an identification document number for the beneficiary. | [optional] |
| **beneficiary_name** | **String** | This field contains the name of the beneficiary. | [optional] |
| **beneficiary_postcode** | **String** | This field contains the postal code of the beneficiary. | [optional] |
| **beneficiary_state** | **String** | This field contains the state of the beneficiary. | [optional] |
| **beneficiary_updated_at** | **String** | This field contains the date and time of beneficiary updation. | [optional] |
| **default_autosweep_payout_account** | **Boolean** | This field contains the boolean value for the defaultAutosweepPayoutAccount. | [optional] |
| **destination_country** | **String** | This field contains the 2-letter [ISO-2 country code](doc:currency-and-country-codes) for the payout bank. | [optional] |
| **destination_currency** | **String** | This field contains the 3-letter [ISO-4217 destination currency code](doc:currency-and-country-codes) of the payout as per the destination country from supported corridors. | [optional] |
| **payout_created_at** | **String** | This field contains the date and time of payout creation. | [optional] |
| **payout_hash_id** | **String** | This field contains the unique payout hash ID. | [optional] |
| **payout_method** | **String** | This field contains the payout method for the remittance payout. | [optional] |
| **payout_updated_at** | **String** | This field contains the time at which payout was updated. | [optional] |
| **proxy_type** | **String** | This field contains the proxy type sent in the payment request. • For SGD-PayNow: The proxy type can be MOBILE, UEN, NRIC, or VPA. • For INR-UPI: The proxy type should be VPA. • For BRL-PIX: The proxy type can be MOBILE, ID, EMAIL, or RANDOM_KEY. • For AUD-PayID: The proxy type can be MOBILE, EMAIL, ABN, or ORGANISATION_ID( only domestic payouts are allowed). • For MYR-DuitNow: The proxy type can be NRIC, PASSPORT, CORPORATE_REGISTRATION_NUMBER, MOBILE, or ARMY_ID. | [optional] |
| **proxy_value** | **String** | This field contains the proxy value such as VPA, UEN, or mobile number etc. | [optional] |
| **remitter_beneficiary_relationship** | **String** | This field contains the relationship of the beneficiary with the remitter. | [optional] |
| **routing_code_type1** | **String** | This field contains the routing code type 1, for example, SWIFT for all countries, IFSC for India, SORT CODE for UK, ACH CODE for USA, BRANCH CODE for Brazil and Bangladesh, BSB CODE for Australia, BANK CODE for HongKong. | [optional] |
| **routing_code_type2** | **String** | This field contains the routing code type 2, for example, SWIFT for all countries, IFSC for India, SORT CODE for UK, ACH CODE for USA, BRANCH CODE for Brazil and Bangladesh, BSB CODE for Australia, BANK CODE for HongKong. | [optional] |
| **routing_code_value1** | **String** | This field contains the routing code value 1, for example, ADCBINBB or ADCBINBB123 for SWIFT, SBIN0000058 for IFSC, 100000 for SORT CODE, 111000025 for ACH CODE, 012515 for BSB CODE, 151 for BANK CODE. | [optional] |
| **routing_code_value2** | **String** | This field contains the routing code value 2, for example, ADCBINBB or ADCBINBB123 for SWIFT, SBIN0000058 for IFSC, 100000 for SORT CODE, 111000025 for ACH CODE, 012515 for BSB CODE, 151 for BANK CODE. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::BeneficiaryResponseDTO.new(
  autosweep_payout_account: null,
  beneficiary_account_number: null,
  beneficiary_account_type: null,
  beneficiary_address: null,
  beneficiary_bank_account_type: null,
  beneficiary_bank_code: null,
  beneficiary_bank_name: null,
  beneficiary_card_expiry_date: null,
  beneficiary_card_issuer_name: null,
  beneficiary_card_meta_data: null,
  beneficiary_card_number_mask: null,
  beneficiary_card_token: null,
  beneficiary_card_type: null,
  beneficiary_city: null,
  beneficiary_contact_country_code: null,
  beneficiary_contact_name: null,
  beneficiary_contact_number: null,
  beneficiary_country_code: null,
  beneficiary_created_at: null,
  beneficiary_dob: null,
  beneficiary_email: null,
  beneficiary_entity_type: partnership,
  beneficiary_establishment_date: null,
  beneficiary_hash_id: null,
  beneficiary_identification_type: null,
  beneficiary_identification_value: null,
  beneficiary_name: null,
  beneficiary_postcode: null,
  beneficiary_state: null,
  beneficiary_updated_at: null,
  default_autosweep_payout_account: null,
  destination_country: null,
  destination_currency: null,
  payout_created_at: null,
  payout_hash_id: null,
  payout_method: null,
  payout_updated_at: null,
  proxy_type: null,
  proxy_value: null,
  remitter_beneficiary_relationship: null,
  routing_code_type1: null,
  routing_code_type2: null,
  routing_code_value1: null,
  routing_code_value2: null
)
```

