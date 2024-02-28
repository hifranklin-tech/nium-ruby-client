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

# Unit tests for NiumClient::BlockCustomerRequestDTO
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe NiumClient::BlockCustomerRequestDTO do
  let(:instance) { NiumClient::BlockCustomerRequestDTO.new }

  describe 'test an instance of BlockCustomerRequestDTO' do
    it 'should create an instance of BlockCustomerRequestDTO' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(NiumClient::BlockCustomerRequestDTO)
    end
  end

  describe 'test attribute "action"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["TEMPORARY_BLOCK", "PERMANENT_BLOCK", "UNBLOCK"])
      # validator.allowable_values.each do |value|
      #   expect { instance.action = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "comment"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "reason"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CUSTOMER_REQUEST", "CLIENT_REQUEST", "DECEASED", "ACCOUNT_CLOSURE", "SUSPICIOUS_ACTIVITY", "FRAUDULENT_ACTIVITY", "POTENTIAL_SANCTION", "SANCTIONED_CUSTOMER", "BLACKLISTED_CUSTOMER", "NO_OBJECTION"])
      # validator.allowable_values.each do |value|
      #   expect { instance.reason = value }.not_to raise_error
      # end
    end
  end

end