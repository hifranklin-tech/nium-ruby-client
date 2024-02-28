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
  class CancellationReason
    USER_CANCEL = "user_cancel".freeze
    INSUFFICIENT_FUND = "insufficient_fund".freeze

    def self.all_vars
      @all_vars ||= [USER_CANCEL, INSUFFICIENT_FUND].freeze
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
      return value if CancellationReason.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #CancellationReason"
    end
  end
end