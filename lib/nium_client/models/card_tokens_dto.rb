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
  # This array contains the token details.
  class CardTokensDTO
    # This field contains the wallet provider.It can contain two values - googlePay applePay
    attr_accessor :provider_type

    # This field contains the reference number for the token provided against the provisioning request.
    attr_accessor :token_reference_number

    # This field contains the token value created for the provisioned card.
    attr_accessor :token_number

    # This field contains the identifier for the provisioning service.
    attr_accessor :token_requester_id

    # This field contains the unique ID of the device on which the card is provisioned.
    attr_accessor :device_id

    # This field contains the device type in numeric format used for provisioning.
    attr_accessor :device_type

    # This field contains the token status.
    attr_accessor :status

    # This field contains the date and time of token creation in the format - YYYY-MM-DD HH:mm:ss.
    attr_accessor :created_at

    # This field contains the date and time of token update in the format - YYYY-MM-DD HH:mm:ss.
    attr_accessor :updated_at

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
        :'provider_type' => :'providerType',
        :'token_reference_number' => :'tokenReferenceNumber',
        :'token_number' => :'tokenNumber',
        :'token_requester_id' => :'tokenRequesterId',
        :'device_id' => :'deviceId',
        :'device_type' => :'deviceType',
        :'status' => :'status',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'provider_type' => :'String',
        :'token_reference_number' => :'String',
        :'token_number' => :'String',
        :'token_requester_id' => :'String',
        :'device_id' => :'String',
        :'device_type' => :'String',
        :'status' => :'String',
        :'created_at' => :'String',
        :'updated_at' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::CardTokensDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::CardTokensDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'provider_type')
        self.provider_type = attributes[:'provider_type']
      end

      if attributes.key?(:'token_reference_number')
        self.token_reference_number = attributes[:'token_reference_number']
      end

      if attributes.key?(:'token_number')
        self.token_number = attributes[:'token_number']
      end

      if attributes.key?(:'token_requester_id')
        self.token_requester_id = attributes[:'token_requester_id']
      end

      if attributes.key?(:'device_id')
        self.device_id = attributes[:'device_id']
      end

      if attributes.key?(:'device_type')
        self.device_type = attributes[:'device_type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
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
      provider_type_validator = EnumAttributeValidator.new('String', ["googlePay,applePay,samsungPay,unknown"])
      return false unless provider_type_validator.valid?(@provider_type)
      token_requester_id_validator = EnumAttributeValidator.new('String', ["googlePay,applePay"])
      return false unless token_requester_id_validator.valid?(@token_requester_id)
      status_validator = EnumAttributeValidator.new('String', ["ACTIVE,SUSPENDED,DEACTIVATED,UNKNOWN"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] provider_type Object to be assigned
    def provider_type=(provider_type)
      validator = EnumAttributeValidator.new('String', ["googlePay,applePay,samsungPay,unknown"])
      unless validator.valid?(provider_type)
        fail ArgumentError, "invalid value for \"provider_type\", must be one of #{validator.allowable_values}."
      end
      @provider_type = provider_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] token_requester_id Object to be assigned
    def token_requester_id=(token_requester_id)
      validator = EnumAttributeValidator.new('String', ["googlePay,applePay"])
      unless validator.valid?(token_requester_id)
        fail ArgumentError, "invalid value for \"token_requester_id\", must be one of #{validator.allowable_values}."
      end
      @token_requester_id = token_requester_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["ACTIVE,SUSPENDED,DEACTIVATED,UNKNOWN"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          provider_type == o.provider_type &&
          token_reference_number == o.token_reference_number &&
          token_number == o.token_number &&
          token_requester_id == o.token_requester_id &&
          device_id == o.device_id &&
          device_type == o.device_type &&
          status == o.status &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [provider_type, token_reference_number, token_number, token_requester_id, device_id, device_type, status, created_at, updated_at].hash
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
