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
  class ExchangeRatesGetResponse
    # 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the source amount.
    attr_accessor :source_currency_code

    # 3-letter [ISO-4217 currency code](https://www.iso.org/iso-4217-currency-codes.html) for the destination amount.
    attr_accessor :destination_currency_code

    attr_accessor :start

    attr_accessor :_end

    attr_accessor :window

    attr_accessor :exchange_rates

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'source_currency_code' => :'sourceCurrencyCode',
        :'destination_currency_code' => :'destinationCurrencyCode',
        :'start' => :'start',
        :'_end' => :'end',
        :'window' => :'window',
        :'exchange_rates' => :'exchangeRates'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'source_currency_code' => :'String',
        :'destination_currency_code' => :'String',
        :'start' => :'Time',
        :'_end' => :'Time',
        :'window' => :'Window',
        :'exchange_rates' => :'Array<ExchangeRateGetResponse>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::ExchangeRatesGetResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::ExchangeRatesGetResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'source_currency_code')
        self.source_currency_code = attributes[:'source_currency_code']
      end

      if attributes.key?(:'destination_currency_code')
        self.destination_currency_code = attributes[:'destination_currency_code']
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.key?(:'_end')
        self._end = attributes[:'_end']
      end

      if attributes.key?(:'window')
        self.window = attributes[:'window']
      else
        self.window = '1_day'
      end

      if attributes.key?(:'exchange_rates')
        if (value = attributes[:'exchange_rates']).is_a?(Array)
          self.exchange_rates = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@source_currency_code.nil? && @source_currency_code.to_s.length > 3
        invalid_properties.push('invalid value for "source_currency_code", the character length must be smaller than or equal to 3.')
      end

      if !@source_currency_code.nil? && @source_currency_code.to_s.length < 3
        invalid_properties.push('invalid value for "source_currency_code", the character length must be great than or equal to 3.')
      end

      if !@destination_currency_code.nil? && @destination_currency_code.to_s.length > 3
        invalid_properties.push('invalid value for "destination_currency_code", the character length must be smaller than or equal to 3.')
      end

      if !@destination_currency_code.nil? && @destination_currency_code.to_s.length < 3
        invalid_properties.push('invalid value for "destination_currency_code", the character length must be great than or equal to 3.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@source_currency_code.nil? && @source_currency_code.to_s.length > 3
      return false if !@source_currency_code.nil? && @source_currency_code.to_s.length < 3
      return false if !@destination_currency_code.nil? && @destination_currency_code.to_s.length > 3
      return false if !@destination_currency_code.nil? && @destination_currency_code.to_s.length < 3
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] source_currency_code Value to be assigned
    def source_currency_code=(source_currency_code)
      if source_currency_code.nil?
        fail ArgumentError, 'source_currency_code cannot be nil'
      end

      if source_currency_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "source_currency_code", the character length must be smaller than or equal to 3.'
      end

      if source_currency_code.to_s.length < 3
        fail ArgumentError, 'invalid value for "source_currency_code", the character length must be great than or equal to 3.'
      end

      @source_currency_code = source_currency_code
    end

    # Custom attribute writer method with validation
    # @param [Object] destination_currency_code Value to be assigned
    def destination_currency_code=(destination_currency_code)
      if destination_currency_code.nil?
        fail ArgumentError, 'destination_currency_code cannot be nil'
      end

      if destination_currency_code.to_s.length > 3
        fail ArgumentError, 'invalid value for "destination_currency_code", the character length must be smaller than or equal to 3.'
      end

      if destination_currency_code.to_s.length < 3
        fail ArgumentError, 'invalid value for "destination_currency_code", the character length must be great than or equal to 3.'
      end

      @destination_currency_code = destination_currency_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          source_currency_code == o.source_currency_code &&
          destination_currency_code == o.destination_currency_code &&
          start == o.start &&
          _end == o._end &&
          window == o.window &&
          exchange_rates == o.exchange_rates
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [source_currency_code, destination_currency_code, start, _end, window, exchange_rates].hash
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
