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
  class RemitterRequestDTO
    # This field accepts the Remitter's account type as INDIVIDUAL or CORPORATE
    attr_accessor :account_type

    # This field accepts address for Remitter's place of residence.
    attr_accessor :address

    # This field accepts the account number of the Remitter.
    attr_accessor :bank_account_number

    # This field accepts the city for Remitter's place of residence.
    attr_accessor :city

    # This field accepts the Remitter's contact number.
    attr_accessor :contact_number

    # This field accepts the country of residence for the remitter.
    attr_accessor :country_code

    # This field accepts Remitter's birth date.
    attr_accessor :dob

    # ID number of the selected identificationType.
    attr_accessor :identification_number

    # This field accepts the ID document type of the remitter e.g. Passport, National_ID etc..
    attr_accessor :identification_type

    # This field accepts industry type associated with the remitter.
    attr_accessor :industry_type

    # This field accepts the name of the remitter.
    attr_accessor :name

    # This field accepts Remitter's nationality.
    attr_accessor :nationality

    # This field accepts the name of the financial institution where the request was initiated. This is typically applicable for requests that did not originate at the financial institution who is a direct Nium customer.
    attr_accessor :originating_fi_name

    # This field accepts Remitter's place of birth.
    attr_accessor :place_of_birth

    # This field accepts the postcode  for Remitter's place of residence.
    attr_accessor :postcode

    # This field accepts the state  for Remitter's place of residence.
    attr_accessor :state

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
        :'account_type' => :'accountType',
        :'address' => :'address',
        :'bank_account_number' => :'bankAccountNumber',
        :'city' => :'city',
        :'contact_number' => :'contactNumber',
        :'country_code' => :'countryCode',
        :'dob' => :'dob',
        :'identification_number' => :'identificationNumber',
        :'identification_type' => :'identificationType',
        :'industry_type' => :'industryType',
        :'name' => :'name',
        :'nationality' => :'nationality',
        :'originating_fi_name' => :'originatingFIName',
        :'place_of_birth' => :'placeOfBirth',
        :'postcode' => :'postcode',
        :'state' => :'state'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_type' => :'String',
        :'address' => :'String',
        :'bank_account_number' => :'String',
        :'city' => :'String',
        :'contact_number' => :'String',
        :'country_code' => :'String',
        :'dob' => :'String',
        :'identification_number' => :'String',
        :'identification_type' => :'String',
        :'industry_type' => :'String',
        :'name' => :'String',
        :'nationality' => :'String',
        :'originating_fi_name' => :'String',
        :'place_of_birth' => :'String',
        :'postcode' => :'String',
        :'state' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::RemitterRequestDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::RemitterRequestDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'bank_account_number')
        self.bank_account_number = attributes[:'bank_account_number']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'contact_number')
        self.contact_number = attributes[:'contact_number']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'dob')
        self.dob = attributes[:'dob']
      end

      if attributes.key?(:'identification_number')
        self.identification_number = attributes[:'identification_number']
      end

      if attributes.key?(:'identification_type')
        self.identification_type = attributes[:'identification_type']
      end

      if attributes.key?(:'industry_type')
        self.industry_type = attributes[:'industry_type']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'nationality')
        self.nationality = attributes[:'nationality']
      end

      if attributes.key?(:'originating_fi_name')
        self.originating_fi_name = attributes[:'originating_fi_name']
      end

      if attributes.key?(:'place_of_birth')
        self.place_of_birth = attributes[:'place_of_birth']
      end

      if attributes.key?(:'postcode')
        self.postcode = attributes[:'postcode']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
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
      account_type_validator = EnumAttributeValidator.new('String', ["INDIVIDUAL", "CORPORATE"])
      return false unless account_type_validator.valid?(@account_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_type Object to be assigned
    def account_type=(account_type)
      validator = EnumAttributeValidator.new('String', ["INDIVIDUAL", "CORPORATE"])
      unless validator.valid?(account_type)
        fail ArgumentError, "invalid value for \"account_type\", must be one of #{validator.allowable_values}."
      end
      @account_type = account_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_type == o.account_type &&
          address == o.address &&
          bank_account_number == o.bank_account_number &&
          city == o.city &&
          contact_number == o.contact_number &&
          country_code == o.country_code &&
          dob == o.dob &&
          identification_number == o.identification_number &&
          identification_type == o.identification_type &&
          industry_type == o.industry_type &&
          name == o.name &&
          nationality == o.nationality &&
          originating_fi_name == o.originating_fi_name &&
          place_of_birth == o.place_of_birth &&
          postcode == o.postcode &&
          state == o.state
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_type, address, bank_account_number, city, contact_number, country_code, dob, identification_number, identification_type, industry_type, name, nationality, originating_fi_name, place_of_birth, postcode, state].hash
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
