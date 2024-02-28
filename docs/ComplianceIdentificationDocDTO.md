# NiumClient::ComplianceIdentificationDocDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identification_doc_color** | **String** | This field accepts the color of the medicare card which may be one of three values - G, B, Y. It is mandatory for medicare card. | [optional] |
| **identification_doc_expiry** | **String** | This field accepts the identification document expiry date. The valid values are: dateOfExpiry for passport dateOfExpiry for government letter  | [optional] |
| **identification_doc_holder_name** | **String** | This field accepts the name of the document holder exactly according to the proof of identity document uploaded. | [optional] |
| **identification_doc_issuance_country** | **String** | This field accepts the country of the issuance for the document being uploaded. | [optional] |
| **identification_doc_reference_number** | **String** | This field is mandatory for medicare card and accepts the document reference number for the following documents: Government Letter Bank Statement Utility Bill Employer Letter Medicare Card | [optional] |
| **identification_document** | [**Array&lt;IdentificationDocumentDTO&gt;**](IdentificationDocumentDTO.md) | This is an array of actual Base-64 documents as required. The maximum allowed size of this payload is 10MB. A separate object is needed for each document image. | [optional] |
| **identification_issuing_authority** | **String** | This field accepts the authorized issuer of the document for example, the name of the government agency issuing the document. | [optional] |
| **identification_issuing_date** | **String** | This field accepts the identification issuing date. The valid values are: dateOfIssue for FIN dateOfIssue for passport dateOfIssue for GovernmentLetter statementGeneratedOn for BankStatement billGeneratedOn for utilityBill | [optional] |
| **identification_type** | **String** | This field accepts the identificationType for the document being uploaded for KYC. Some commonly used values are as follows: Selfie Passport Government Id NRIC FIN Driving Licence Government Letter Bank Statement Utility Bill Employer Letter Note: For EU, the acceptable values for identificationType are Passport, National ID. |  |
| **identification_value** | **String** | This field accepts the identification value. The valid values for identificationValue are: For NRIC/FIN/Passport: Unique NRIC/FIN/passport number. For GovernmentID: Unique Id number as per the document. For selfieWithId/GovernmentLetter: Blank For others(as proof of address): Unique number as per document or blank(can pass the value in identificationDocReferenceNumber) | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::ComplianceIdentificationDocDTO.new(
  identification_doc_color: null,
  identification_doc_expiry: null,
  identification_doc_holder_name: null,
  identification_doc_issuance_country: null,
  identification_doc_reference_number: null,
  identification_document: null,
  identification_issuing_authority: null,
  identification_issuing_date: null,
  identification_type: null,
  identification_value: null
)
```

