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
require 'date'

# Unit tests for NiumClient::AccountResponseDTO
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe NiumClient::AccountResponseDTO do
  let(:instance) { NiumClient::AccountResponseDTO.new }

  describe 'test an instance of AccountResponseDTO' do
    it 'should create an instance of AccountResponseDTO' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(NiumClient::AccountResponseDTO)
    end
  end

  describe 'test attribute "account_type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NIUM_POOL", "CLIENT_POOL", "WALLET_POOL", "INCOME_POOL", "EXPENSE_POOL", "RECEIVABLE_POOL", "UNSETTLED_POOL", "PAYABLE_POOL", "SUSPENSE_POOL", "HOLD_POOL", "REMIT_POOL", "NETWORK_POOL"])
      # validator.allowable_values.each do |value|
      #   expect { instance.account_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "balance"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "created_at"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "currency"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "is_default"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "updated_at"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
