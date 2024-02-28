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
  module AddCardV2RequestSelectOneOfTheFollowingCardType
    class << self
      # List of class defined in oneOf (OpenAPI v3)
      def openapi_one_of
        [
          :'AddCardRequestPHY',
          :'AddCardRequestVIR',
          :'AddCardRequestVIRUP2PHY'
        ]
      end

      # Discriminator's property name (OpenAPI v3)
      def openapi_discriminator_name
        :'card_type'
      end

      # Discriminator's mapping (OpenAPI v3)
      def openapi_discriminator_mapping
        {
          :'PHY' => :'AddCardRequestPHY',
          :'VIR' => :'AddCardRequestVIR',
          :'VIRUP2PHY' => :'AddCardRequestVIRUP2PHY'
        }
      end

      # Builds the object
      # @param [Mixed] Data to be matched against the list of oneOf items
      # @return [Object] Returns the model or the data itself
      def build(data)
        discriminator_value = data[openapi_discriminator_name]
        return nil if discriminator_value.nil?

        klass = openapi_discriminator_mapping[discriminator_value.to_s.to_sym]
        return nil unless klass

        NiumClient.const_get(klass).build_from_hash(data)
      end
    end
  end

end
