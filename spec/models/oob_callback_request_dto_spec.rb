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

# Unit tests for NiumClient::OOBCallbackRequestDTO
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe NiumClient::OOBCallbackRequestDTO do
  let(:instance) { NiumClient::OOBCallbackRequestDTO.new }

  describe 'test an instance of OOBCallbackRequestDTO' do
    it 'should create an instance of OOBCallbackRequestDTO' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(NiumClient::OOBCallbackRequestDTO)
    end
  end

  describe 'test attribute "auth_transaction_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "reference_number"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "status_code"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SSS000", "VCL001", "VCL002", "VCU001", "VCU601", "VCU602", "VCU603", "VCU701", "VWA001", "VCF001", "VCT001", "VCD001", "VII001", "VII002", "UAS001", "ISE999"])
      # validator.allowable_values.each do |value|
      #   expect { instance.status_code = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ACTIVE", "INACTIVE", "BLOCKED", "P_BLOCK", "SUSPEND", "PENDING", "APPROVED", "REJECTED", "UPLOADED", "REVIEWED", "FAILED", "SUCCESS", "ASSIGNED", "UNASSIGNED", "TEMP_BLOCK", "All", "ARCHIVED", "VIRTUAL_ACTIVE", "CLOSED", "RENEWED", "DAMAGED", "DO_NOT_HONOUR", "LOST_CARD", "REFER_TO_ISSUER", "CARD_PIN_BLOCKED", "CARD_VOIDED", "CARD_DESTROYED", "STOLEN_CARD", "CARD_EXPIRED", "FRAUD", "TEMP_BLOCK"])
      # validator.allowable_values.each do |value|
      #   expect { instance.status = value }.not_to raise_error
      # end
    end
  end

end
