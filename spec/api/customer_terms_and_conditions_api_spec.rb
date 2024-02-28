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

# Unit tests for NiumClient::CustomerTermsAndConditionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CustomerTermsAndConditionsApi' do
  before do
    # run before each test
    @api_instance = NiumClient::CustomerTermsAndConditionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomerTermsAndConditionsApi' do
    it 'should create an instance of CustomerTermsAndConditionsApi' do
      expect(@api_instance).to be_instance_of(NiumClient::CustomerTermsAndConditionsApi)
    end
  end

  # unit tests for accept_termsand_conditions
  # Accept Terms and Conditions
  # This API updates the Terms and Conditions acceptance status for a customer
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param terms_and_conditions_request_dto termsAndConditionsRequestDTO
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [TermsAndConditionsAcceptResponseDTO]
  describe 'accept_termsand_conditions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for termsand_conditions
  # Terms and Conditions
  # This API allows you to fetch the mandatory Terms and Conditions for individual customer onboarding. Refer to the [T&amp;C flow chart](/apis/docs/customer-life-cycle#terms-and-conditions) for more details.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [TermsAndConditionsResponseDTO]
  describe 'termsand_conditions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end