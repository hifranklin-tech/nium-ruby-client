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
  class StakeholderDetailsResponseDTO
    attr_accessor :address

    attr_accessor :birth_country

    # This field contains the date of birth of the stakeholder.
    attr_accessor :date_of_birth

    # This field contains the designation of the stakeholder.
    attr_accessor :designation

    attr_accessor :document_details

    # This field contains the email address of the stakeholder
    attr_accessor :email

    # This field contains the first name of the stakeholder.
    attr_accessor :first_name

    # This field contains the gender of the stakeholder.
    attr_accessor :gender

    # This field contains the last name of the stakeholder.
    attr_accessor :last_name

    # This field contains the middle name of the stakeholder.
    attr_accessor :middle_name

    # This field contains the mobile number of the stakeholder
    attr_accessor :mobile

    # This field contains the nationality of the stakeholder.
    attr_accessor :nationality

    attr_accessor :professional_details

    # This field contains the reference id of the stakeholder
    attr_accessor :reference_id

    attr_accessor :resident

    attr_accessor :tax_details

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address' => :'address',
        :'birth_country' => :'birthCountry',
        :'date_of_birth' => :'dateOfBirth',
        :'designation' => :'designation',
        :'document_details' => :'documentDetails',
        :'email' => :'email',
        :'first_name' => :'firstName',
        :'gender' => :'gender',
        :'last_name' => :'lastName',
        :'middle_name' => :'middleName',
        :'mobile' => :'mobile',
        :'nationality' => :'nationality',
        :'professional_details' => :'professionalDetails',
        :'reference_id' => :'referenceId',
        :'resident' => :'resident',
        :'tax_details' => :'taxDetails'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'address' => :'CorporateAddressDTO',
        :'birth_country' => :'String',
        :'date_of_birth' => :'String',
        :'designation' => :'String',
        :'document_details' => :'Array<CorporateDocumentDetailsDTO>',
        :'email' => :'String',
        :'first_name' => :'String',
        :'gender' => :'String',
        :'last_name' => :'String',
        :'middle_name' => :'String',
        :'mobile' => :'String',
        :'nationality' => :'String',
        :'professional_details' => :'Array<ProfessionalDetails>',
        :'reference_id' => :'String',
        :'resident' => :'Boolean',
        :'tax_details' => :'Array<TaxDetails>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::StakeholderDetailsResponseDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::StakeholderDetailsResponseDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'birth_country')
        self.birth_country = attributes[:'birth_country']
      end

      if attributes.key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.key?(:'designation')
        self.designation = attributes[:'designation']
      end

      if attributes.key?(:'document_details')
        if (value = attributes[:'document_details']).is_a?(Array)
          self.document_details = value
        end
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'middle_name')
        self.middle_name = attributes[:'middle_name']
      end

      if attributes.key?(:'mobile')
        self.mobile = attributes[:'mobile']
      end

      if attributes.key?(:'nationality')
        self.nationality = attributes[:'nationality']
      end

      if attributes.key?(:'professional_details')
        if (value = attributes[:'professional_details']).is_a?(Array)
          self.professional_details = value
        end
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'resident')
        self.resident = attributes[:'resident']
      end

      if attributes.key?(:'tax_details')
        if (value = attributes[:'tax_details']).is_a?(Array)
          self.tax_details = value
        end
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
          address == o.address &&
          birth_country == o.birth_country &&
          date_of_birth == o.date_of_birth &&
          designation == o.designation &&
          document_details == o.document_details &&
          email == o.email &&
          first_name == o.first_name &&
          gender == o.gender &&
          last_name == o.last_name &&
          middle_name == o.middle_name &&
          mobile == o.mobile &&
          nationality == o.nationality &&
          professional_details == o.professional_details &&
          reference_id == o.reference_id &&
          resident == o.resident &&
          tax_details == o.tax_details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [address, birth_country, date_of_birth, designation, document_details, email, first_name, gender, last_name, middle_name, mobile, nationality, professional_details, reference_id, resident, tax_details].hash
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