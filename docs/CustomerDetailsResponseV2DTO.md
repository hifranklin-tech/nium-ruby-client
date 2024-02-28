# NiumClient::CustomerDetailsResponseV2DTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** |  | [optional] |
| **account_details** | [**Array&lt;CustomerAccountDetail&gt;**](CustomerAccountDetail.md) |  | [optional] |
| **block_comment** | **String** | This field contains the comment entered while blocking the customer, if applicable. Otherwise, it contains null. | [optional] |
| **block_reason** | **String** | This field contains the reason for blocking the customer, if applicable. Otherwise, it contains null. | [optional] |
| **block_updated_by** | **String** | This field contains the details of the entity updating a customer block/unblock, if applicable. Otherwise, it contains null. The possible values are CLIENT or NIUM. | [optional] |
| **compliance_level** | **String** | This field contains the compliance level for the customer. The possible values for customer type INDIVIDUAL are: SCREENING_KYC, SCREENING, SCREENING_KYB. The possible values for customer type CORPORATE is SCREENING_KYB. | [optional] |
| **compliance_remarks** | **String** | This field contains the compliance remarks from Compliance officer, if applicable. | [optional] |
| **compliance_status** | **String** |  | [optional] |
| **corporate_customer** | [**CorporateCustomerResponseDTO**](CorporateCustomerResponseDTO.md) |  | [optional] |
| **created_at** | **Time** | This field contains the timestamp of customer creation in the format YYY-MM-DD hh:mm:ss, for example, 2021-07-29 06:11:43. | [optional] |
| **customer_hash_id** | **String** |  | [optional] |
| **customer_type** | **String** |  | [optional] |
| **individual_customer** | [**IndividualCustomerResponseDTO**](IndividualCustomerResponseDTO.md) |  | [optional] |
| **kyc_mode** | **String** | This field contains the kyc mode  The possible values for customer type INDIVIDUAL are: E_KYC, MANUAL_KYC, SCREENING, EVERIFY_KYC, or NONE.  The possible values for customer type CORPORATE are: KYB or NONE. | [optional] |
| **remarks** | **String** | This field contains any system-generated compliance comments, if applicable. | [optional] |
| **segment** | **String** |  | [optional] |
| **status** | **String** | This field contains the overall KYC status of the customer | [optional] |
| **terms_and_condition_acceptance_flag** | **Boolean** | This flag denotes that the customer has accepted the Terms and Conditions. | [optional] |
| **terms_and_condition_name** | **String** | This name that the customer has accepted the Terms and Conditions. | [optional] |
| **terms_and_condition_version_id** | **String** | This version that the customer has accepted the Terms and Conditions. | [optional] |
| **updated_at** | **Time** | This field contains the timestamp of last customer updation in the format YYY-MM-DD hh:mm:ss, for example, 2021-07-29 06:11:43. | [optional] |
| **verification_consent** | **Boolean** | This flag contain the customer consent to proceed in case e-Document verification flow is initiated. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomerDetailsResponseV2DTO.new(
  tags: null,
  account_details: null,
  block_comment: null,
  block_reason: null,
  block_updated_by: NIUM,
  compliance_level: SCREENING_KY,
  compliance_remarks: APPLICANT -&gt; VERIFIED|DIRECTOR -&gt; VERIFIED,
  compliance_status: null,
  corporate_customer: null,
  created_at: null,
  customer_hash_id: null,
  customer_type: null,
  individual_customer: null,
  kyc_mode: MANUAL_KYC,
  remarks: VERIFIED,
  segment: null,
  status: Clear,
  terms_and_condition_acceptance_flag: false,
  terms_and_condition_name: B2BGENERIC,
  terms_and_condition_version_id: 1,
  updated_at: null,
  verification_consent: false
)
```

