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

# Unit tests for NiumClient::PayinApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PayinApi' do
  before do
    # run before each test
    @api_instance = NiumClient::PayinApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PayinApi' do
    it 'should create an instance of PayinApi' do
      expect(@api_instance).to be_instance_of(NiumClient::PayinApi)
    end
  end

  # unit tests for simulate_funding_instrument_status_update
  # Simulate Funding Instrument Status Update (Sandbox Testing)
  # @param client_hash_id clientHashId
  # @param customer_hash_id customerHashId
  # @param funding_instrument_id fundingInstrumentId
  # @param funding_instrument_status_update_request_dto fundingInstrumentStatusUpdateRequestDTO
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [nil]
  describe 'simulate_funding_instrument_status_update test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for simulatereceivepayment
  # Simulate Receive Transaction
  # This API can be used in &#39;Sandbox testing&#39; to simulate inward receive transaction and credit funds into the wallet for testing purposes.  &gt;ℹ️ INFO  &gt;This API is for testing purpose only and not to be used in production. &gt;Use a unique bankReferenceNumber for every new simulated receive payment transaction request.
  # @param inward_payment_manual_request_dto inwardPaymentManualRequestDTO
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [PayinApiResponse2]
  describe 'simulatereceivepayment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
