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

# Unit tests for NiumClient::PartialSearchDTO
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe NiumClient::PartialSearchDTO do
  let(:instance) { NiumClient::PartialSearchDTO.new }

  describe 'test an instance of PartialSearchDTO' do
    it 'should create an instance of PartialSearchDTO' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(NiumClient::PartialSearchDTO)
    end
  end

  describe 'test attribute "country_code"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "currency_code"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "payout_method"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "routing_code_type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["IFSC", "SWIFT", "ACH CODE", "BSB CODE", "SORT CODE", "BANK CODE", "LOCATION ID", "BRANCH CODE", "BRANCH NAME", "TRANSIT NUMBER"])
      # validator.allowable_values.each do |value|
      #   expect { instance.routing_code_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "search_key"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["bank_name", "branch_name"])
      # validator.allowable_values.each do |value|
      #   expect { instance.search_key = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "search_value"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end