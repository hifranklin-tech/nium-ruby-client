# NiumClient::RemittanceTransactionsRequestDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_fees** | [**AdditionalFeesDTO**](AdditionalFeesDTO.md) |  | [optional] |
| **authentication_code** | **String** | This field accepts the authentication code generated as part of SCA (Strong Customer Authentication).  Note: Either exemption code or authentication is expected if the program&#39;s regulatory region is UK or EU. This field does not accept a value for any other region. | [optional] |
| **beneficiary** | [**Beneficiary**](Beneficiary.md) |  |  |
| **customer_comments** | **String** | This field is used to add any customer comments.  Maximum character limit is 512.  Note: Special characters are not allowed in this field. | [optional] |
| **device_details** | [**DeviceDetailsDTO**](DeviceDetailsDTO.md) |  | [optional] |
| **exemption_code** | **String** | This field accepts the reason code for the exemption provided as part of SCA (Strong Customer Authentication). This must be 2 character string and the valid values are as following: 01 - Trusted Beneficiary 03 - Recurring Transactions 04 - Payment to Self Note: Exemption code is expected if authenticationCode is not provided and regulatory region is UK or EU. | [optional] |
| **own_payment** | **Boolean** | This field applies only to licensed financial institutions. Boolean value &#39;false&#39; indicates an on-behalf payout request or &#39;true&#39; indicates a payout executed by the Financial Institution itself. If the field is absent from the request, the default flag is set to &#39;false&#39;. A valid remitter object is required to be passed for on-behalf payout. | [optional] |
| **payout** | [**Payout**](Payout.md) |  |  |
| **purpose_code** | **String** | This field accepts the purpose code for the payment. Refer to the [Glossary of Purpose Codes](doc:purpose-of-transfer-codes) to identify the correct value to be provided.  If purpose code value is not passed then the default value will be IR01802 (Advertising &amp; Public relations-related expenses).  Purpose Code - Description IR001         - Transfer to own account IR002         - Family Maintenance IR003         - Education-related student expenses IR004         - Medical Treatment IR005         - Hotel Accommodation IR006         - Travel IR007         - Utility Bills IR008         - Repayment of Loans IR009         - Tax Payment IR010         - Purchase of Residential Property IR011         - Payment of Property Rental IR012         - Insurance Premium IR013         - Product indemnity insurance IR014         - Insurance Claims Payment IR015         - Mutual Fund Investment IR016         - Investment in Shares IR017         - Donations IR01801       - Information Service Charges IR01802       - Advertising &amp; Public relations-related expenses IR01803       - Royalty fees, trademark fees, patent fees, and copyright fees IR01804       - Fees for brokers, front end fee, commitment fee, guarantee fee and custodian fee IR01805       - Fees for advisors, technical assistance, and academic knowledge, including remuneration for specialists IR01806       - Representative office expenses IR01807       - Construction costs/expenses IR01808       - Transportation fees for goods IR01809       - For payment of exported goods IR01810       - Delivery fees for goods IR01811       - General Goods Trades - Offline trade |  |
| **remitter** | [**RemitterRequestDTO**](RemitterRequestDTO.md) |  | [optional] |
| **source_of_funds** | **String** | This field accepts the source of funds. The possible values are: Salary Personal Savings Personal Wealth Retirement Funds Business Owner/Shareholder Loan Facility Personal Account Corporate Account |  |

## Example

```ruby
require 'nium_client'

instance = NiumClient::RemittanceTransactionsRequestDTO.new(
  additional_fees: null,
  authentication_code: null,
  beneficiary: null,
  customer_comments: Transfer to family,
  device_details: null,
  exemption_code: 01 - Trusted Beneficiary,
  own_payment: true,
  payout: null,
  purpose_code: IR01802,
  remitter: null,
  source_of_funds: Business Owner/Shareholder
)
```

