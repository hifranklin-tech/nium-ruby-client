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

# Unit tests for NiumClient::FundTransferResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe NiumClient::FundTransferResponse do
  let(:instance) { NiumClient::FundTransferResponse.new }

  describe 'test an instance of FundTransferResponse' do
    it 'should create an instance of FundTransferResponse' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(NiumClient::FundTransferResponse)
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ACTIVE", "INACTIVE", "BLOCKED", "SUSPENDED", "UPLOADED", "APPROVED", "REJECTED", "FAILED", "SUCCESS", "FAILURE", "PARTIALLY SUCCESS", "SYNC", "NOT SYNC", "PENDING", "REQUIRES_ACTION", "CLEAR", "DECLINED", "ACCOUNT_BLOCKED", "AMOUNT_BLOCKED"])
      # validator.allowable_values.each do |value|
      #   expect { instance.status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "system_reference_number"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
