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

# Unit tests for NiumClient::ConversionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ConversionsApi' do
  before do
    # run before each test
    @api_instance = NiumClient::ConversionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConversionsApi' do
    it 'should create an instance of ConversionsApi' do
      expect(@api_instance).to be_instance_of(NiumClient::ConversionsApi)
    end
  end

  # unit tests for cancel_conversion
  # Cancel Conversion
  # This API allows you to cancel a conversion prior to the execution time.
  # @param client_hash_id Unique identifier of the client.
  # @param customer_hash_id Unique identifier of the customer.
  # @param wallet_hash_id Unique identifier of the wallet.
  # @param conversion_id 
  # @param conversion_cancel_request ConversionCancelRequest
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [ConversionCancelResponse]
  describe 'cancel_conversion test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_conversion
  # Create Conversion
  # This API allows you to convert the balance from one currency to another within the same customer wallet either at the current market rate or using a previous exchange rate quote. This API allows you to select a settlement schedule for the conversion.
  # @param client_hash_id Unique identifier of the client.
  # @param customer_hash_id Unique identifier of the customer.
  # @param wallet_hash_id Unique identifier of the wallet.
  # @param conversion_creation_request ConversionCreationRequest
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [ConversionCreationResponse]
  describe 'create_conversion test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for fetch_conversion
  # Fetch Conversion by id
  # This API will retrieve an existing conversion with the conversionId.
  # @param client_hash_id Unique identifier of the client.
  # @param customer_hash_id Unique identifier of the customer.
  # @param wallet_hash_id Unique identifier of the wallet.
  # @param conversion_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [ConversionCreationResponse]
  describe 'fetch_conversion test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
