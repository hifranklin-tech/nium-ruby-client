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
  class WalletFundResponseDTO
    # The credited amount.
    attr_accessor :destination_amount

    # This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the destination amount.
    attr_accessor :destination_currency_code

    # It is an array composed of three types of objects:  1. Bank transfer data 2. Dynamic pay now code 3. Static pay now code 
    attr_accessor :payment_methods

    # This is 3DS stripe URL generated for entering OTP.
    attr_accessor :return_url

    # An amount to be converted.
    attr_accessor :source_amount

    # This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) for the source amount.
    attr_accessor :source_currency_code

    # This field can take the following values:  Pending: Transaction authorization is awaiting success or failure Approved: Transaction is successfully authorized Rejected: Transaction is rejected due to NIUM risk and compliance policies Declined: Transaction is declined Reversal: Transaction is reversed Disputed: A dispute has been raised for the transaction DisputeClosed: Dispute raised for the transaction is resolved.
    attr_accessor :status

    # Transaction reference number generated by card issuance platform.
    attr_accessor :system_reference_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'destination_amount' => :'destinationAmount',
        :'destination_currency_code' => :'destinationCurrencyCode',
        :'payment_methods' => :'paymentMethods',
        :'return_url' => :'returnUrl',
        :'source_amount' => :'sourceAmount',
        :'source_currency_code' => :'sourceCurrencyCode',
        :'status' => :'status',
        :'system_reference_number' => :'systemReferenceNumber'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'destination_amount' => :'Float',
        :'destination_currency_code' => :'String',
        :'payment_methods' => :'Array<WalletFundResponseDTOPaymentMethodsInner>',
        :'return_url' => :'String',
        :'source_amount' => :'Float',
        :'source_currency_code' => :'String',
        :'status' => :'String',
        :'system_reference_number' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::WalletFundResponseDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::WalletFundResponseDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'destination_amount')
        self.destination_amount = attributes[:'destination_amount']
      end

      if attributes.key?(:'destination_currency_code')
        self.destination_currency_code = attributes[:'destination_currency_code']
      end

      if attributes.key?(:'payment_methods')
        if (value = attributes[:'payment_methods']).is_a?(Array)
          self.payment_methods = value
        end
      end

      if attributes.key?(:'return_url')
        self.return_url = attributes[:'return_url']
      end

      if attributes.key?(:'source_amount')
        self.source_amount = attributes[:'source_amount']
      end

      if attributes.key?(:'source_currency_code')
        self.source_currency_code = attributes[:'source_currency_code']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'system_reference_number')
        self.system_reference_number = attributes[:'system_reference_number']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          destination_amount == o.destination_amount &&
          destination_currency_code == o.destination_currency_code &&
          payment_methods == o.payment_methods &&
          return_url == o.return_url &&
          source_amount == o.source_amount &&
          source_currency_code == o.source_currency_code &&
          status == o.status &&
          system_reference_number == o.system_reference_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [destination_amount, destination_currency_code, payment_methods, return_url, source_amount, source_currency_code, status, system_reference_number].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = NiumClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
