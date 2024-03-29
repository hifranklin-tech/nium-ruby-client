=begin
#NIUM Platform

#NIUM Platform

The version of the OpenAPI document: 2023.12.12
Contact: experience@nium.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NiumClient::CustomerAccountCorporateApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CustomerAccountCorporateApi' do
  before do
    # run before each test
    @api_instance = NiumClient::CustomerAccountCorporateApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomerAccountCorporateApi' do
    it 'should create an instance of CustomerAccountCorporateApi' do
      expect(@api_instance).to be_instance_of(NiumClient::CustomerAccountCorporateApi)
    end
  end

  # unit tests for exhaustive_corporate_details_using_business_id
  # Exhaustive Corporate Details using Business ID
  # This API allows you to fetch both public and non-public exhaustive corporate details using business ID.  &gt;ℹ️ INFO   &gt;Every call for this API incurs a fee. Contact your Nium account manager to use it. This API only supports the corporate customer onboarding process. Avoid unnecessary API calls by using the throttling and debouncing techniques. This API should only be called after getting a successful response from [Public Corporate Details using Business ID API](/apis/reference/publiccorporatedetailsusingbusinessid).
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param country_code This field accepts the 2-letter [ISO-2 country code](https://nium-documents.s3-eu-west-1.amazonaws.com/spend-documents/Country+Code.pdf) of the corporate customer.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search_reference_id This field accepts the search reference id of the corporate customer as received in response of public corporate details api.
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [CorporateEnrichedDetailResponseDTO]
  describe 'exhaustive_corporate_details_using_business_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for fetch_corporate_constants_using_get
  # Fetch corporate constants
  # This API returns the acceptable values for the &#x60;category&#x60; query param to be used as input in the corporate onboarding flow. Refer to the [Fetch Corporate Constants](doc:fetch-corporate-constants-api) user guide for details on usage instructions on this API.
  # @param category This field is used to select one of the category used during corporate customer onboarding. The API response will return list of allowed values for the selected category.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param region The response will be filtered based on the value selected in this field for regulatory region of the customer.
  # @param type Type of Customer being onboarded.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [AddCategoryResponseDTO]
  describe 'fetch_corporate_constants_using_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for fetch_corporate_customer_rfi_details
  # Fetch Corporate Customer RFI Details
  # This API allows you to fetch details of RFI raised as part of corporate customer onboarding.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :case_id This field contains unique case ID generated and returned in Onboard API response.
  # @option opts [String] :client_id This field contains unique client ID generated and returned in Onboard API response.
  # @option opts [String] :customer_hash_id This field contains the customerHashId, For example, 909ffc5f-c8ab-4df0-bcb2-111fcdd6f735.
  # @option opts [String] :region This field contains the region code for which onboarding has been triggered, For example, AU, EU, UK, SG.
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [ComplianceRFITemplateMetadataResponseDTO]
  describe 'fetch_corporate_customer_rfi_details test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for onboard_corporate_customer
  # Onboard Corporate Customer
  # This API allows you to onboard a corporate customer under existing client.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param corporate_customer_requests_dto corporateCustomerRequestsDTO
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [ProductCorporateCustomerResponseDTO]
  describe 'onboard_corporate_customer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for public_corporate_details_using_business_id
  # Public Corporate Details using Business ID
  # This API will help you to fetch the publicly available corporate details using business Id.
  # @param business_registration_number This field contains the business registration number of the entity.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param country_code This field contains the 2-letter [ISO-2 country code](doc:currency-and-country-codes).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [CorporateDetailResponseDTO]
  describe 'public_corporate_details_using_business_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for regenerate_kycurl
  # Regenerate KYC URL
  # This api will be used to regenerate kyc url
  # @param client_hash_id The unique client hash id of customer
  # @param customer_hash_id The unique customer hash id of customer
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [RegenerateUrlResponse]
  describe 'regenerate_kycurl test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for respondto_rf_ifor_corporate_customer
  # Respond to RFI for Corporate Customer
  # This API allows you to respond to an RFI raised for a corporate customer. You may use this API to respond to an RFI for data or documents when the corporate customer&#39;s compliance status is RFI_REQUESTED.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param respond_rfi_request_dto respondRfiRequestDTO
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [RespondRfiResponseDTO]
  describe 'respondto_rf_ifor_corporate_customer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_corporate_customer_using_post
  # Update Corporate Customer
  # This API allows you to update a corporate customer under existing client.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param corporate_customer_requests_dto updateCorporateCustomerRequestsDTO
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [UpdateCorporateKybResponseDTO]
  describe 'update_corporate_customer_using_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for upload_documentfor_corporate_customer
  # Upload Document for Corporate Customer
  # This API allows you to upload document for corporate customers.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param corporate_compliance_document_request_dto corporateComplianceDocumentRequestDTO
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [CorporateComplianceDocumentResponseDTO]
  describe 'upload_documentfor_corporate_customer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
