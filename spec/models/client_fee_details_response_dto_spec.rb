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

# Unit tests for NiumClient::ClientFeeDetailsResponseDTO
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe NiumClient::ClientFeeDetailsResponseDTO do
  let(:instance) { NiumClient::ClientFeeDetailsResponseDTO.new }

  describe 'test an instance of ClientFeeDetailsResponseDTO' do
    it 'should create an instance of ClientFeeDetailsResponseDTO' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(NiumClient::ClientFeeDetailsResponseDTO)
    end
  end

  describe 'test attribute "default"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "fees"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "segment"' do
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

end