=begin
#NIUM Platform

#NIUM Platform

The version of the OpenAPI document: 2023.12.12
Contact: experience@nium.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'date'
require 'time'

module NiumClient
  class ErrorCodes400
    CONSTRAINT_VIOLATED_INPUT = "fx_constraint_violated_input".freeze
    INVALID_FORMAT_INPUT = "fx_invalid_format_input".freeze
    INVALID_CURRENCY_CODE = "fx_invalid_currency_code".freeze
    MISSING_INPUT = "fx_missing_input".freeze
    DATE_RANGE_INVALID = "fx_date_range_invalid".freeze

    def self.all_vars
      @all_vars ||= [CONSTRAINT_VIOLATED_INPUT, INVALID_FORMAT_INPUT, INVALID_CURRENCY_CODE, MISSING_INPUT, DATE_RANGE_INVALID].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if ErrorCodes400.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ErrorCodes400"
    end
  end
end
