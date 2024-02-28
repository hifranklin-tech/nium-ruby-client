# NiumClient::CustomerRfiDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | This field contains the RFI description or field for which RFI is raised. The example values are passport, gender, etc. | [optional] |
| **document_type** | **String** | This field contains the type of document requested as part of RFI. The possible values are POI, POA, or NA. | [optional] |
| **mandatory** | **Boolean** | This flag determines the mandatory nature of the RFI. | [optional] |
| **remarks** | **String** | This field contains the compliance officer’s remarks while raising the RFI. | [optional] |
| **required_data** | [**Array&lt;RfiAttributeResponse&gt;**](RfiAttributeResponse.md) | This array contains objects with details of each mandatory RFI field that is required by NIUM team. It is mandatory to respond to an RFI with all the required fields. While responding to an RFI, you may refer these details. Example, Passport has many fields and an RFI may be raised for passport number. Referring this array, you may determine which field/value is needed and if it is an RFI for data or document. | [optional] |
| **rfi_hash_id** | **String** | This field contains the unique identifier for each RFI raised for the customer. | [optional] |
| **rfi_id** | **String** | This field contains the unique identifier for group of RFI raised for the customer. | [optional] |
| **rfi_status** | **String** | This field contains status of the RFI | [optional] |
| **rfi_type** | **String** | This field contains type of the RFI | [optional] |
| **type** | **String** | This field contains the type of RFI. The possible values are data or document. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::CustomerRfiDetailsResponse.new(
  description: dateOfBirth,
  document_type: POA,
  mandatory: true,
  remarks: DOB does not match the PO,
  required_data: null,
  rfi_hash_id: ee8e7875-d835-4175-9df1-ab9272db445f,
  rfi_id: ee8e7875-d835-4175-9df1-ab9272db445f,
  rfi_status: RFI_REQUESTED,
  rfi_type: INTERNAL,
  type: data
)
```

