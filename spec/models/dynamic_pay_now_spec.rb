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

# Unit tests for NiumClient::DynamicPayNow
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe NiumClient::DynamicPayNow do
  let(:instance) { NiumClient::DynamicPayNow.new }

  describe 'test an instance of DynamicPayNow' do
    it 'should create an instance of DynamicPayNow' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(NiumClient::DynamicPayNow)
    end
  end

  describe 'test attribute "uen"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["dynamicPayNow"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

end
