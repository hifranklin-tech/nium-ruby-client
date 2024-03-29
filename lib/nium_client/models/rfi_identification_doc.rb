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
  # This field is an object which holds document details. It is required to send any document RFI under this object.
  class RfiIdentificationDoc
    # This field accepts the color of the medicare card which may be one of three values - G, B, Y. It is mandatory for medicare card.
    attr_accessor :identification_doc_color

    # This field accepts the document expiry date.
    attr_accessor :identification_doc_expiry

    # This field accepts the name of the document holder exactly according to the document uploaded.
    attr_accessor :identification_doc_holder_name

    # This field accepts the document issuance country.
    attr_accessor :identification_doc_issuance_country

    # This field accepts the reference number for the document being uploaded.
    attr_accessor :identification_doc_reference_number

    # It is an array of actual Base-64 documents as required. The maximum allowed size of this payload is 10MB. A separate object is needed for each document image.
    attr_accessor :identification_document

    # This field accepts the name of the authorized issuer of the document such as the name of the government agency issuing the document.
    attr_accessor :identification_issuing_authority

    # This field accepts the document issuance date.
    attr_accessor :identification_issuing_date

    # This field accepts the identification type for the document being uploaded. Refer the details of the RFI raised and respond accordingly.
    attr_accessor :identification_type

    # The field accepts the document number (value) for the document such as passport number, driving licence number, etc.
    attr_accessor :identification_value

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'identification_doc_color' => :'identificationDocColor',
        :'identification_doc_expiry' => :'identificationDocExpiry',
        :'identification_doc_holder_name' => :'identificationDocHolderName',
        :'identification_doc_issuance_country' => :'identificationDocIssuanceCountry',
        :'identification_doc_reference_number' => :'identificationDocReferenceNumber',
        :'identification_document' => :'identificationDocument',
        :'identification_issuing_authority' => :'identificationIssuingAuthority',
        :'identification_issuing_date' => :'identificationIssuingDate',
        :'identification_type' => :'identificationType',
        :'identification_value' => :'identificationValue'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'identification_doc_color' => :'String',
        :'identification_doc_expiry' => :'String',
        :'identification_doc_holder_name' => :'String',
        :'identification_doc_issuance_country' => :'String',
        :'identification_doc_reference_number' => :'String',
        :'identification_document' => :'Array<IdentificationDocumentDTO>',
        :'identification_issuing_authority' => :'String',
        :'identification_issuing_date' => :'String',
        :'identification_type' => :'String',
        :'identification_value' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::RfiIdentificationDoc` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::RfiIdentificationDoc`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'identification_doc_color')
        self.identification_doc_color = attributes[:'identification_doc_color']
      end

      if attributes.key?(:'identification_doc_expiry')
        self.identification_doc_expiry = attributes[:'identification_doc_expiry']
      end

      if attributes.key?(:'identification_doc_holder_name')
        self.identification_doc_holder_name = attributes[:'identification_doc_holder_name']
      end

      if attributes.key?(:'identification_doc_issuance_country')
        self.identification_doc_issuance_country = attributes[:'identification_doc_issuance_country']
      end

      if attributes.key?(:'identification_doc_reference_number')
        self.identification_doc_reference_number = attributes[:'identification_doc_reference_number']
      end

      if attributes.key?(:'identification_document')
        if (value = attributes[:'identification_document']).is_a?(Array)
          self.identification_document = value
        end
      end

      if attributes.key?(:'identification_issuing_authority')
        self.identification_issuing_authority = attributes[:'identification_issuing_authority']
      end

      if attributes.key?(:'identification_issuing_date')
        self.identification_issuing_date = attributes[:'identification_issuing_date']
      end

      if attributes.key?(:'identification_type')
        self.identification_type = attributes[:'identification_type']
      end

      if attributes.key?(:'identification_value')
        self.identification_value = attributes[:'identification_value']
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
          identification_doc_color == o.identification_doc_color &&
          identification_doc_expiry == o.identification_doc_expiry &&
          identification_doc_holder_name == o.identification_doc_holder_name &&
          identification_doc_issuance_country == o.identification_doc_issuance_country &&
          identification_doc_reference_number == o.identification_doc_reference_number &&
          identification_document == o.identification_document &&
          identification_issuing_authority == o.identification_issuing_authority &&
          identification_issuing_date == o.identification_issuing_date &&
          identification_type == o.identification_type &&
          identification_value == o.identification_value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [identification_doc_color, identification_doc_expiry, identification_doc_holder_name, identification_doc_issuance_country, identification_doc_reference_number, identification_document, identification_issuing_authority, identification_issuing_date, identification_type, identification_value].hash
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
