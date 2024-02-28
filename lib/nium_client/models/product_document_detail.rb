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
  class ProductDocumentDetail
    # This array accepts the document to be uploaded.  AU: Optional EU: Optional UK: Optional SG: Optional
    attr_accessor :document

    # This field accepts the color for Medicare card.  AU: Optional EU: Optional UK: Optional SG: Optional
    attr_accessor :document_color

    # This field accepts the date of the document expiry This field is required only if the documents are being uploaded  AU: Optional EU: Conditional UK: Optional SG: Optional
    attr_accessor :document_expiry_date

    # This field accepts the name of the document holder for the uploaded document.  AU: Optional EU: Required UK: Optional SG: Optional
    attr_accessor :document_holder_name

    # This field accepts the name of the document issuing country.  AU: Optional EU: Conditional UK: Optional SG: Optional
    attr_accessor :document_issuance_country

    attr_accessor :document_issuance_state

    # This field accepts the date of the document issuance. This field should be sent when available on the document.  AU: Optional EU: Optional UK: Optional SG: Optional
    attr_accessor :document_issued_date

    # This field accepts the name of the issuing authority of the document.  AU: Optional EU: Optional UK: Optional SG: Optional
    attr_accessor :document_issuing_authority

    # This field accepts the document number for the uploaded document. This field is required only if the documents are being uploaded  AU: Optional EU: Required UK: Optional SG: Optional
    attr_accessor :document_number

    # This field accepts the document reference number for the uploaded document.  AU: Conditional EU: Optional UK: Optional SG: Optional
    attr_accessor :document_reference_number

    # This field accepts the type of the document. The acceptable types of the documents are:  Business Registration Document Trust Deed Partnership Deed Association Deed Register of Directors Register of Shareholders  AU: Optional EU: Required UK: Optional SG: Optional
    attr_accessor :document_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'document' => :'document',
        :'document_color' => :'documentColor',
        :'document_expiry_date' => :'documentExpiryDate',
        :'document_holder_name' => :'documentHolderName',
        :'document_issuance_country' => :'documentIssuanceCountry',
        :'document_issuance_state' => :'documentIssuanceState',
        :'document_issued_date' => :'documentIssuedDate',
        :'document_issuing_authority' => :'documentIssuingAuthority',
        :'document_number' => :'documentNumber',
        :'document_reference_number' => :'documentReferenceNumber',
        :'document_type' => :'documentType'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'document' => :'Array<ProductDocument>',
        :'document_color' => :'String',
        :'document_expiry_date' => :'String',
        :'document_holder_name' => :'String',
        :'document_issuance_country' => :'String',
        :'document_issuance_state' => :'String',
        :'document_issued_date' => :'String',
        :'document_issuing_authority' => :'String',
        :'document_number' => :'String',
        :'document_reference_number' => :'String',
        :'document_type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::ProductDocumentDetail` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::ProductDocumentDetail`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'document')
        if (value = attributes[:'document']).is_a?(Array)
          self.document = value
        end
      end

      if attributes.key?(:'document_color')
        self.document_color = attributes[:'document_color']
      end

      if attributes.key?(:'document_expiry_date')
        self.document_expiry_date = attributes[:'document_expiry_date']
      end

      if attributes.key?(:'document_holder_name')
        self.document_holder_name = attributes[:'document_holder_name']
      end

      if attributes.key?(:'document_issuance_country')
        self.document_issuance_country = attributes[:'document_issuance_country']
      end

      if attributes.key?(:'document_issuance_state')
        self.document_issuance_state = attributes[:'document_issuance_state']
      end

      if attributes.key?(:'document_issued_date')
        self.document_issued_date = attributes[:'document_issued_date']
      end

      if attributes.key?(:'document_issuing_authority')
        self.document_issuing_authority = attributes[:'document_issuing_authority']
      end

      if attributes.key?(:'document_number')
        self.document_number = attributes[:'document_number']
      end

      if attributes.key?(:'document_reference_number')
        self.document_reference_number = attributes[:'document_reference_number']
      end

      if attributes.key?(:'document_type')
        self.document_type = attributes[:'document_type']
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
          document == o.document &&
          document_color == o.document_color &&
          document_expiry_date == o.document_expiry_date &&
          document_holder_name == o.document_holder_name &&
          document_issuance_country == o.document_issuance_country &&
          document_issuance_state == o.document_issuance_state &&
          document_issued_date == o.document_issued_date &&
          document_issuing_authority == o.document_issuing_authority &&
          document_number == o.document_number &&
          document_reference_number == o.document_reference_number &&
          document_type == o.document_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [document, document_color, document_expiry_date, document_holder_name, document_issuance_country, document_issuance_state, document_issued_date, document_issuing_authority, document_number, document_reference_number, document_type].hash
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
