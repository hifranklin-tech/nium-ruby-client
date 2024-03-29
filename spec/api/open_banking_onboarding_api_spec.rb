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

# Unit tests for NiumClient::OpenBankingOnboardingApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OpenBankingOnboardingApi' do
  before do
    # run before each test
    @api_instance = NiumClient::OpenBankingOnboardingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OpenBankingOnboardingApi' do
    it 'should create an instance of OpenBankingOnboardingApi' do
      expect(@api_instance).to be_instance_of(NiumClient::OpenBankingOnboardingApi)
    end
  end

  # unit tests for account_details_by_customer_consent_id
  # Account Details By Customer Consent ID.
  # This API allows Client to get the account details using the customer&#39;s consent Id for open banking, as part of the AIS flow.
  # @param account_consent_id accountConsentId
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param wallet_hash_id Unique wallet identifier generated simultaneously with customer creation.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [ConsentDetailsResponse]
  describe 'account_details_by_customer_consent_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for payment_detailsby_system_reference_number
  # Payment Details by System Reference Number
  # This API allows Client to fetch payment details using system reference number of the transaction, as part of the Open Banking PIS flow and based on customer&#39;s consent.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param system_reference_number systemReferenceNumber
  # @param wallet_hash_id Unique wallet identifier generated simultaneously with customer creation.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [OpenBankingPaymentResponseDTO]
  describe 'payment_detailsby_system_reference_number test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
