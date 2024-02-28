# NiumClient::TransactionResponseDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Hash&lt;String, String&gt;** | This object contains the user defined key-value pairs provided by the client. | [optional] |
| **acquirer_country_code** | **String** | This field contains the country code of the acquirer. | [optional] |
| **acquiring_institution_code** | **String** | This field contains the acquiring institution code that identifies the financial institution acting as the acquirer of the transaction. | [optional] |
| **auth_amount** | **Float** | This field contains an authorization amount of the transaction. | [optional] |
| **auth_code** | **String** | This field contains the authorization code. | [optional] |
| **auth_currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) of the auth currency, the currency in which amount is deducted from wallet. | [optional] |
| **billing_amount** | **Float** | This field contains the equivalent transaction amount in base currency. | [optional] |
| **billing_conversion_rate** | **String** | This field contains the conversion rate of transaction currency to billing currency which is present for all card transactions. | [optional] |
| **billing_currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the billing currency or base currency | [optional] |
| **billing_replacement_amount** | **Float** | The corrected amount of a transaction in a partial reversal. This is defined by ISO-8583 as a fixed length field with four subfields, but only the first subfield is used. A 12 position field for the corrected, billing amount of a customer&#39;s transaction, in the billing currency. The field is right justified, with lead zero fill. | [optional] |
| **business_transaction** | **Boolean** | This flag is used to mark or unmark a transaction as a business transaction. | [optional] |
| **card_hash_id** | **String** | This field contains the unique card identifier generated while new/add-on card issuance. | [optional] |
| **card_transaction_amount** | **Float** | This field contains the amount of a card transaction. | [optional] |
| **child_customer_hash_id** | **String** | This field refers to a unique identifier, known as customerHashId, assigned to an individual customer who is associated with a corporate customer at the parent level. This identifier serves the purpose of distinguishing and tracking the child-level customer within a given client&#39;s program. By utilizing this identifier, it becomes possible to establish and maintain the appropriate linkage between the child customer and their parent corporate customer, ensuring accurate association and management of customer data. | [optional] |
| **client_hash_id** | **String** | Unique client identifier generated and shared before API handshake. | [optional] |
| **comments** | **String** | This field contains the auto-generated comments with details on the transactions such as reason for transaction decline. | [optional] |
| **compliance_status** | **String** | This field contains the compliance status of the transaction.The possible values are: NULL IN_PROGRESS ACTION_REQUIRED RFI_REQUESTED RFI_RESPONDED COMPLETED ERROR REJECT EXPIRED | [optional] |
| **created_at** | **Time** | This field contains the date and time of transaction when created in UTC. | [optional] |
| **current_with_holding_balance** | **Float** | This field will be deprecated in the future. | [optional] |
| **customer_hash_id** | **String** | This field contains the unique customer identifier generated while new customer created. | [optional] |
| **date_of_transaction** | **Time** | This field contains the date on which the transaction occurred in yyyy-MM-dd format. | [optional] |
| **debit** | **Boolean** | This field contains the flag signifies if the transaction is a debit transaction. | [optional] |
| **effective_auth_amount** | **Float** | This field contains an effective authorization amount which includes fees, markup, etc. | [optional] |
| **labels** | **Hash&lt;String, String&gt;** | This object will contain different key-value pairs depending upon the type of transaction. Essentially, this object will contain different labels based on the type of transaction. The list will change over time depending on different use-cases. Refer to the [Glossary of Labels](/apis/docs/transaction-response-labels). | [optional] |
| **local_date** | **String** | This field contains the local date of the transaction. | [optional] |
| **local_time** | **String** | This field contains the local time of the transaction. | [optional] |
| **masked_card_number** | **String** | This field contains the 16-digit masked card number in format 1234-56xx-xxxx-3456. | [optional] |
| **mcc** | **String** | This field contains the four-digit Merchant Category Code. | [optional] |
| **merchant_category** | **String** | This field contains the merchant category such as Airlines, Hotels, Shopping, etc. | [optional] |
| **merchant_city** | **String** | This field contains the city name of the merchant. | [optional] |
| **merchant_country** | **String** | This field contains the country of the merchant. | [optional] |
| **merchant_id** | **String** | This field contains the unique merchant identifier. | [optional] |
| **merchant_latitude** | **String** | This field contains the latitude of the merchant captured during geo-tagging. | [optional] |
| **merchant_longitude** | **String** | This field contains the longitude of the merchant captured during geo-tagging. | [optional] |
| **merchant_name** | **String** | This field contains the name of the merchant. | [optional] |
| **merchant_name_location** | **String** | This field contains the full merchant name and location data as received from network. | [optional] |
| **merchant_tagged_name** | **String** | This field contains the tagged name of the merchant. | [optional] |
| **merchant_zoom_index** | **String** | This field contains the merchant map zoom index. | [optional] |
| **original_authorization_code** | **String** | This field contains the authorization code of the original transaction in case of reversal. | [optional] |
| **partner_reference_number** | **String** | This field contains the provided by an RHA client in response to an authorization. | [optional] |
| **payment_instrument_hash_id** | **String** | This field contains the unique payment instrument identifier generated for the linked card. | [optional] |
| **pos_condition_code** | **String** | This field contains the pos condition code that describes the condition under which the transaction takes place at the point of service. 00 - Normal transaction 01 - Cardholder not present 03 - Merchant suspicious 08 - Mail/telephone order 51 - Account Verification Message(AVM) 55 - ICC Capable Branch ATM 59 - Electronic Commerce 90 - Recurring Payment | [optional] |
| **pos_entry_capability_code** | **String** | This field provides information about the terminal used at the point of service.Type of terminal field values include:0 - Unspecified 2 - Unattended terminal(customer-operated) 4 - Electronic cash register 7 - Telephone device 8 - MCAS device 9 - Mobile acceptance solution(mPOS) Capability of terminal field values include: 0 - Unspecified 1 - Terminal not used 2 - Magnetic stripe read capability 3 - Bar code read capability 4 - OCR read capability 5 - Integrated circuit card read capability 9 - Terminal does not read card data  | [optional] |
| **pos_entry_mode** | **String** | This field contains the pos entry code that identifies the actual method used to capture the account number and expiration date, and the PIN capture capability of the terminal.This is a fixed‑length field with three subfields, as follows: 1. Positions 1‑2 - PAN and Date Entry Mode: This is a two‑digit code that identifies the actual method used at the point of service to enter the cardholder account number and card expiry date. 00 - Unknown 01 - Keyed transaction 02 - Magnetic stripe read 05 - Chip was read at the terminal 07 - Contactless 90 - Magnetic stripe read and transmitted unaltered 91 - Contactless - Magnetic stripe data (MSD) transmitted 2. Position 3 - PIN Entry Capability: This is a one‑digit code that identifies the capability of the authorization terminal, if one was used, to capture PINs. This coding does not necessarily mean that a PIN was entered or is included in this message: 0 - Unknown 1 - Terminal can accept PINs 2 - Terminal cannot accept PINs 3 - mPOS terminal can accept software-based PINs (Mastercard only) 3. Position 4 - Unused(filler): This is one digit of filler, which must be zero.  | [optional] |
| **previous_balance** | **Float** | This field contains the previous balance in the wallet. | [optional] |
| **processing_code** | **String** | This field contains the processing code is a 6 character Visa field. Refer to the [link](https://en.wikipedia.org/wiki/ISO_8583#Processing_code) for more details on the processing code. | [optional] |
| **receipt_file_name** | **String** | This field contains the name of the receipt file. | [optional] |
| **receipt_type** | **String** | This field contains the receipt type.Expected values are as follows:  image/png image/jpg image/jpeg application/pdf | [optional] |
| **retrieval_reference_number** | **String** | This field contains the 12 digit number that is used with other data elements as a key to identify and track all messages related to a given customer transaction. | [optional] |
| **rfi_details** | [**Array&lt;TransactionRfiDetailsResponse&gt;**](TransactionRfiDetailsResponse.md) | This field is an array that holds RFI details. | [optional] |
| **rha_transaction_id** | **String** | This field contains the transaction Id for an RHA client. | [optional] |
| **settlement_amount** | **Float** | This field contains the settlement amount of a transaction. This amount is valid only for a settled transaction. | [optional] |
| **settlement_auth_amount** | **Float** | This field contains the settlement auth amount of a transaction. This amount is valid only for a settled transaction. | [optional] |
| **settlement_billing_amount** | **Float** |  | [optional] |
| **settlement_currency** | **String** |  | [optional] |
| **settlement_date** | **String** | This field contains the settlement date in case of a Settled transaction. Otherwise, it is null. | [optional] |
| **settlement_status** | **String** | This field contains the settlement status.This field can take the following values: Unsettled Settled  Released Disputed DisputeClosed Waived | [optional] |
| **settlement_transaction_amount** | **Float** |  | [optional] |
| **status** | **String** | This field contains the status. This field can take the following values: Pending: Transaction authorization is awaiting success or failure. Approved: Transaction is successfully authorized. Rejected: Transaction is rejected due to NIUM risk and compliance policies. Declined: Transaction is declined. Reversal: Transaction is reversed. Blocked: Transaction is blocked | [optional] |
| **system_trace_audit_number** | **String** | This field contains the system trace audit number assigned to uniquely identify a transaction. | [optional] |
| **terminal_id** | **String** | This field contains the unique terminal ID. | [optional] |
| **transaction_currency_code** | **String** | This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the transaction currency. | [optional] |
| **transaction_replacement_amount** | **Float** | The corrected amount of a transaction in a partial reversal. This is defined by ISO-8583 as a fixed length field with four subfields, but only the first subfield is used. A 12 position field for the corrected, actual amount of a customer&#39;s transaction, in the transaction currency. The field is right justified, with lead zero fill. | [optional] |
| **transaction_type** | **String** | This field contains the transaction can be one of the complete list of transactions mentioned in [Transaction Types](doc:transactions#transaction-types). | [optional] |
| **updated_at** | **Time** | This field contains the date and time when the transaction was last updated in UTC. | [optional] |
| **wallet_hash_id** | **String** | This field contains the unique wallet identifier generated while new wallet created. | [optional] |

## Example

```ruby
require 'nium_client'

instance = NiumClient::TransactionResponseDTO.new(
  tags: null,
  acquirer_country_code: null,
  acquiring_institution_code: null,
  auth_amount: null,
  auth_code: null,
  auth_currency_code: null,
  billing_amount: null,
  billing_conversion_rate: null,
  billing_currency_code: null,
  billing_replacement_amount: null,
  business_transaction: null,
  card_hash_id: null,
  card_transaction_amount: null,
  child_customer_hash_id: null,
  client_hash_id: null,
  comments: null,
  compliance_status: null,
  created_at: null,
  current_with_holding_balance: null,
  customer_hash_id: null,
  date_of_transaction: null,
  debit: null,
  effective_auth_amount: null,
  labels: null,
  local_date: null,
  local_time: null,
  masked_card_number: null,
  mcc: null,
  merchant_category: null,
  merchant_city: null,
  merchant_country: null,
  merchant_id: null,
  merchant_latitude: null,
  merchant_longitude: null,
  merchant_name: null,
  merchant_name_location: null,
  merchant_tagged_name: null,
  merchant_zoom_index: null,
  original_authorization_code: null,
  partner_reference_number: null,
  payment_instrument_hash_id: null,
  pos_condition_code: null,
  pos_entry_capability_code: null,
  pos_entry_mode: null,
  previous_balance: null,
  processing_code: null,
  receipt_file_name: null,
  receipt_type: null,
  retrieval_reference_number: null,
  rfi_details: null,
  rha_transaction_id: null,
  settlement_amount: null,
  settlement_auth_amount: null,
  settlement_billing_amount: null,
  settlement_currency: null,
  settlement_date: null,
  settlement_status: null,
  settlement_transaction_amount: null,
  status: null,
  system_trace_audit_number: null,
  terminal_id: null,
  transaction_currency_code: null,
  transaction_replacement_amount: null,
  transaction_type: null,
  updated_at: null,
  wallet_hash_id: null
)
```

