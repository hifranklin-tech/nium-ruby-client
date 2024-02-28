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
  class BusinessDetailsResponseV2DTO
    attr_accessor :applicant_details

    attr_accessor :association_detail

    attr_accessor :business_address

    # This field contains business extract covered stakeholder which specifies if the business extract document given covers the stakeholder details. The value for this field can be either Yes or No.
    attr_accessor :business_extract_covered_stakeholder

    # This field contains the business name of the entity.
    attr_accessor :business_name

    # This field contains the business registration number of the entity.
    attr_accessor :business_registration_number

    # This field contains the legal entity type of the business.
    attr_accessor :business_type

    # This field contains the  description of the business details
    attr_accessor :description

    # This is an array which contains the document details.
    attr_accessor :document_details

    # This field contains the former name.
    attr_accessor :former_name

    attr_accessor :legal_details

    attr_accessor :partnership_details

    # This field contains the  reference id of the entity
    attr_accessor :reference_id

    attr_accessor :registered_address

    attr_accessor :regulatory_details

    attr_accessor :settlor_name

    attr_accessor :stakeholders

    attr_accessor :stock_symbol

    # This array contains tax details provided during compliance onboarding for EU customers. Otherwise, it contains null.
    attr_accessor :tax_details

    # This field contains the trading name which is also known as Doing Business As(DBA)(In case the entity is doing business with a different name than the registered business name).
    attr_accessor :trade_name

    attr_accessor :trustee_name

    attr_accessor :website

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'applicant_details' => :'applicantDetails',
        :'association_detail' => :'associationDetail',
        :'business_address' => :'businessAddress',
        :'business_extract_covered_stakeholder' => :'businessExtractCoveredStakeholder',
        :'business_name' => :'businessName',
        :'business_registration_number' => :'businessRegistrationNumber',
        :'business_type' => :'businessType',
        :'description' => :'description',
        :'document_details' => :'documentDetails',
        :'former_name' => :'formerName',
        :'legal_details' => :'legalDetails',
        :'partnership_details' => :'partnershipDetails',
        :'reference_id' => :'referenceId',
        :'registered_address' => :'registeredAddress',
        :'regulatory_details' => :'regulatoryDetails',
        :'settlor_name' => :'settlorName',
        :'stakeholders' => :'stakeholders',
        :'stock_symbol' => :'stockSymbol',
        :'tax_details' => :'taxDetails',
        :'trade_name' => :'tradeName',
        :'trustee_name' => :'trusteeName',
        :'website' => :'website'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'applicant_details' => :'ApplicantDetailsV2',
        :'association_detail' => :'AssociationDetails',
        :'business_address' => :'AddressV2',
        :'business_extract_covered_stakeholder' => :'String',
        :'business_name' => :'String',
        :'business_registration_number' => :'String',
        :'business_type' => :'String',
        :'description' => :'String',
        :'document_details' => :'Array<CorporateDocumentDetails2DTO>',
        :'former_name' => :'String',
        :'legal_details' => :'LegalDetailsV2',
        :'partnership_details' => :'PartnershipDetails',
        :'reference_id' => :'String',
        :'registered_address' => :'AddressV2',
        :'regulatory_details' => :'RegulatoryDetails',
        :'settlor_name' => :'String',
        :'stakeholders' => :'Array<StakeholderV2>',
        :'stock_symbol' => :'String',
        :'tax_details' => :'Array<TaxDetailsResponseDTO>',
        :'trade_name' => :'String',
        :'trustee_name' => :'String',
        :'website' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::BusinessDetailsResponseV2DTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::BusinessDetailsResponseV2DTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'applicant_details')
        self.applicant_details = attributes[:'applicant_details']
      end

      if attributes.key?(:'association_detail')
        self.association_detail = attributes[:'association_detail']
      end

      if attributes.key?(:'business_address')
        self.business_address = attributes[:'business_address']
      end

      if attributes.key?(:'business_extract_covered_stakeholder')
        self.business_extract_covered_stakeholder = attributes[:'business_extract_covered_stakeholder']
      end

      if attributes.key?(:'business_name')
        self.business_name = attributes[:'business_name']
      end

      if attributes.key?(:'business_registration_number')
        self.business_registration_number = attributes[:'business_registration_number']
      end

      if attributes.key?(:'business_type')
        self.business_type = attributes[:'business_type']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'document_details')
        if (value = attributes[:'document_details']).is_a?(Array)
          self.document_details = value
        end
      end

      if attributes.key?(:'former_name')
        self.former_name = attributes[:'former_name']
      end

      if attributes.key?(:'legal_details')
        self.legal_details = attributes[:'legal_details']
      end

      if attributes.key?(:'partnership_details')
        self.partnership_details = attributes[:'partnership_details']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'registered_address')
        self.registered_address = attributes[:'registered_address']
      end

      if attributes.key?(:'regulatory_details')
        self.regulatory_details = attributes[:'regulatory_details']
      end

      if attributes.key?(:'settlor_name')
        self.settlor_name = attributes[:'settlor_name']
      end

      if attributes.key?(:'stakeholders')
        if (value = attributes[:'stakeholders']).is_a?(Array)
          self.stakeholders = value
        end
      end

      if attributes.key?(:'stock_symbol')
        self.stock_symbol = attributes[:'stock_symbol']
      end

      if attributes.key?(:'tax_details')
        if (value = attributes[:'tax_details']).is_a?(Array)
          self.tax_details = value
        end
      end

      if attributes.key?(:'trade_name')
        self.trade_name = attributes[:'trade_name']
      end

      if attributes.key?(:'trustee_name')
        self.trustee_name = attributes[:'trustee_name']
      end

      if attributes.key?(:'website')
        self.website = attributes[:'website']
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
          applicant_details == o.applicant_details &&
          association_detail == o.association_detail &&
          business_address == o.business_address &&
          business_extract_covered_stakeholder == o.business_extract_covered_stakeholder &&
          business_name == o.business_name &&
          business_registration_number == o.business_registration_number &&
          business_type == o.business_type &&
          description == o.description &&
          document_details == o.document_details &&
          former_name == o.former_name &&
          legal_details == o.legal_details &&
          partnership_details == o.partnership_details &&
          reference_id == o.reference_id &&
          registered_address == o.registered_address &&
          regulatory_details == o.regulatory_details &&
          settlor_name == o.settlor_name &&
          stakeholders == o.stakeholders &&
          stock_symbol == o.stock_symbol &&
          tax_details == o.tax_details &&
          trade_name == o.trade_name &&
          trustee_name == o.trustee_name &&
          website == o.website
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [applicant_details, association_detail, business_address, business_extract_covered_stakeholder, business_name, business_registration_number, business_type, description, document_details, former_name, legal_details, partnership_details, reference_id, registered_address, regulatory_details, settlor_name, stakeholders, stock_symbol, tax_details, trade_name, trustee_name, website].hash
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
