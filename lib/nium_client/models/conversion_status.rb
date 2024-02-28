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
  class ConversionStatus
    CREATED = "created".freeze
    PROCESSING = "processing".freeze
    COMPLETED = "completed".freeze
    CANCELLED = "cancelled".freeze
    FAILED = "failed".freeze
    PENDING_CANCELLATION = "pending_cancellation".freeze

    def self.all_vars
      @all_vars ||= [CREATED, PROCESSING, COMPLETED, CANCELLED, FAILED, PENDING_CANCELLATION].freeze
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
      return value if ConversionStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ConversionStatus"
    end
  end
end
