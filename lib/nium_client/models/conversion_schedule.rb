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
  class ConversionSchedule
    IMMEDIATE = "immediate".freeze
    END_OF_DAY = "end_of_day".freeze
    NEXT_DAY = "next_day".freeze
    N2_DAYS = "2_days".freeze

    def self.all_vars
      @all_vars ||= [IMMEDIATE, END_OF_DAY, NEXT_DAY, N2_DAYS].freeze
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
      return value if ConversionSchedule.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ConversionSchedule"
    end
  end
end
