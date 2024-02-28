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
  class ApplicantDetails
    # This object accepts the applicant's additional information.  AU: NA EU: Required UK: NA SG: NA
    attr_accessor :additional_info

    attr_accessor :address

    # This field accepts the 2-letter [ISO Alpha-2 country code](https://nium-documents.s3-eu-west-1.amazonaws.com/spend-documents/Country+Code.pdf) as an applicant's birth country.  AU: NA EU: Required UK: NA SG: NA
    attr_accessor :birth_country

    attr_accessor :contact_details

    # This field accepts the date of birth of the applicant in yyyy-MM-dd format.  AU: Required EU: Required UK: Required SG: Optional
    attr_accessor :date_of_birth

    # This array accepts the applicant document details. This field is required only if the documents are being uploaded.  AU: Optional EU: Required UK: Optional SG: Optional
    attr_accessor :document_details

    # This field accepts the first name of the applicant. Maximum character limit: 40  AU: Required EU: Required UK: Required SG: Optional
    attr_accessor :first_name

    # This field accepts the gender of the applicant. The acceptable values are: Male Female  AU: Required EU: NA UK: NA SG: NA
    attr_accessor :gender

    # This object accepts the desired mode to do the KYC of the individual applicant.  AU: Optional EU: Optional UK: Optional SG: Optional
    attr_accessor :kyc_mode

    # This field accepts the last name of the applicant. Maximum character limit: 40  AU: Required EU: Required UK: Required SG: Optional
    attr_accessor :last_name

    # This field accepts the middle name of the applicant. Maximum character limit: 40  AU: Optional EU: Optional UK: Optional SG: Optional
    attr_accessor :middle_name

    # This field accepts the 2-letter [ISO Alpha-2 country code](https://nium-documents.s3-eu-west-1.amazonaws.com/spend-documents/Country+Code.pdf) for the nationality of the applicant.  AU: Required EU: Required UK: Required SG: Required
    attr_accessor :nationality

    # This field accepts the customer's occupation. Refer to [Enum values](https://docs.nium.com/apis/docs/unified-add-customer-api) for the description.   Note: This field is mandatory for CA.
    attr_accessor :occupation

    # This array accepts the professional details of the applicant.  AU: Required EU: Required UK: Required SG: Required
    attr_accessor :professional_details

    # This field accepts the unique reference ID for the Applicant provided by client.  AU: Optional EU: Optional UK: Optional SG: Optional
    attr_accessor :reference_id

    # This array accepts the applicant's tax details.  AU: NA EU: Optional UK: NA SG: NA
    attr_accessor :tax_details

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
        :'additional_info' => :'additionalInfo',
        :'address' => :'address',
        :'birth_country' => :'birthCountry',
        :'contact_details' => :'contactDetails',
        :'date_of_birth' => :'dateOfBirth',
        :'document_details' => :'documentDetails',
        :'first_name' => :'firstName',
        :'gender' => :'gender',
        :'kyc_mode' => :'kycMode',
        :'last_name' => :'lastName',
        :'middle_name' => :'middleName',
        :'nationality' => :'nationality',
        :'occupation' => :'occupation',
        :'professional_details' => :'professionalDetails',
        :'reference_id' => :'referenceId',
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
        :'additional_info' => :'Hash<String, String>',
        :'address' => :'ProductAddress',
        :'birth_country' => :'String',
        :'contact_details' => :'ContactDetails',
        :'date_of_birth' => :'String',
        :'document_details' => :'Array<ProductDocumentDetail>',
        :'first_name' => :'String',
        :'gender' => :'String',
        :'kyc_mode' => :'String',
        :'last_name' => :'String',
        :'middle_name' => :'String',
        :'nationality' => :'String',
        :'occupation' => :'String',
        :'professional_details' => :'Array<ProductProfessionalDetails>',
        :'reference_id' => :'String',
        :'tax_details' => :'Array<ProductTaxDetails>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::ApplicantDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::ApplicantDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'additional_info')
        if (value = attributes[:'additional_info']).is_a?(Hash)
          self.additional_info = value
        end
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'birth_country')
        self.birth_country = attributes[:'birth_country']
      end

      if attributes.key?(:'contact_details')
        self.contact_details = attributes[:'contact_details']
      end

      if attributes.key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.key?(:'document_details')
        if (value = attributes[:'document_details']).is_a?(Array)
          self.document_details = value
        end
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.key?(:'kyc_mode')
        self.kyc_mode = attributes[:'kyc_mode']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'middle_name')
        self.middle_name = attributes[:'middle_name']
      end

      if attributes.key?(:'nationality')
        self.nationality = attributes[:'nationality']
      end

      if attributes.key?(:'occupation')
        self.occupation = attributes[:'occupation']
      end

      if attributes.key?(:'professional_details')
        if (value = attributes[:'professional_details']).is_a?(Array)
          self.professional_details = value
        end
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
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
      occupation_validator = EnumAttributeValidator.new('String', ["OC0001", "OC1001", "OC1002", "OC1003", "OC1110", "OC1120", "OC1201", "OC1210", "OC1211", "OC1220", "OC1310", "OC1311", "OC1320", "OC1410", "OC1411", "OC1420", "OC1430", "OC1440", "OC2001", "OC2110", "OC2111", "OC2112", "OC2120", "OC2121", "OC2122", "OC2123", "OC2130", "OC2131", "OC2132", "OC2133", "OC2139", "OC2210", "OC2211", "OC2221", "OC2222", "OC2223", "OC2230", "OC2231", "OC3001", "OC3110", "OC3111", "OC3112", "OC3120", "OC3130", "OC3210", "OC3211", "OC3212", "OC3220", "OC3310", "OC4001", "OC4002", "OC4003", "OC4004", "OC4110", "OC4120", "OC4121", "OC4122", "OC4130", "OC4131", "OC4132", "OC4140", "OC4210", "OC4220", "OC4310", "OC4320", "OC4410", "OC4420", "OC4510", "OC5001", "OC5110", "OC5111", "OC5112", "OC5210", "OC5211", "OC5212", "OC5310", "OC5311", "OC5312", "OC5320", "OC5410", "OC5510", "OC6001", "OC6002", "OC6003", "OC6004", "OC6201", "OC6202", "OC6210", "OC6220", "OC6310", "OC6320", "OC6321", "OC6322", "OC6410", "OC6420", "OC6430", "OC6431", "OC6432", "OC6440", "OC6441", "OC6510", "OC6520", "OC6521", "OC6522", "OC6531", "OC6532", "OC7001", "OC7002", "OC7201", "OC7202", "OC7210", "OC7220", "OC7230", "OC7231", "OC7232", "OC7240", "OC7241", "OC7242", "OC7250", "OC7260", "OC7299", "OC7310", "OC7311", "OC7320", "OC7330", "OC7331", "OC7340", "OC7410", "OC7420", "OC7510", "OC7511", "OC7520", "OC7521", "OC8001", "OC8002", "OC8201", "OC8202", "OC8203", "OC8310", "OC8311", "OC8312", "OC8410", "OC8411", "OC8412", "OC8510", "OC8511", "OC8512", "OC9001", "OC9201", "OC9202", "OC9210", "OC9310", "OC9320", "OC9410", "OC9411", "OC9412", "OC9413", "OC9414", "OC9415", "OC9420", "OC9421", "OC9510"])
      return false unless occupation_validator.valid?(@occupation)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] occupation Object to be assigned
    def occupation=(occupation)
      validator = EnumAttributeValidator.new('String', ["OC0001", "OC1001", "OC1002", "OC1003", "OC1110", "OC1120", "OC1201", "OC1210", "OC1211", "OC1220", "OC1310", "OC1311", "OC1320", "OC1410", "OC1411", "OC1420", "OC1430", "OC1440", "OC2001", "OC2110", "OC2111", "OC2112", "OC2120", "OC2121", "OC2122", "OC2123", "OC2130", "OC2131", "OC2132", "OC2133", "OC2139", "OC2210", "OC2211", "OC2221", "OC2222", "OC2223", "OC2230", "OC2231", "OC3001", "OC3110", "OC3111", "OC3112", "OC3120", "OC3130", "OC3210", "OC3211", "OC3212", "OC3220", "OC3310", "OC4001", "OC4002", "OC4003", "OC4004", "OC4110", "OC4120", "OC4121", "OC4122", "OC4130", "OC4131", "OC4132", "OC4140", "OC4210", "OC4220", "OC4310", "OC4320", "OC4410", "OC4420", "OC4510", "OC5001", "OC5110", "OC5111", "OC5112", "OC5210", "OC5211", "OC5212", "OC5310", "OC5311", "OC5312", "OC5320", "OC5410", "OC5510", "OC6001", "OC6002", "OC6003", "OC6004", "OC6201", "OC6202", "OC6210", "OC6220", "OC6310", "OC6320", "OC6321", "OC6322", "OC6410", "OC6420", "OC6430", "OC6431", "OC6432", "OC6440", "OC6441", "OC6510", "OC6520", "OC6521", "OC6522", "OC6531", "OC6532", "OC7001", "OC7002", "OC7201", "OC7202", "OC7210", "OC7220", "OC7230", "OC7231", "OC7232", "OC7240", "OC7241", "OC7242", "OC7250", "OC7260", "OC7299", "OC7310", "OC7311", "OC7320", "OC7330", "OC7331", "OC7340", "OC7410", "OC7420", "OC7510", "OC7511", "OC7520", "OC7521", "OC8001", "OC8002", "OC8201", "OC8202", "OC8203", "OC8310", "OC8311", "OC8312", "OC8410", "OC8411", "OC8412", "OC8510", "OC8511", "OC8512", "OC9001", "OC9201", "OC9202", "OC9210", "OC9310", "OC9320", "OC9410", "OC9411", "OC9412", "OC9413", "OC9414", "OC9415", "OC9420", "OC9421", "OC9510"])
      unless validator.valid?(occupation)
        fail ArgumentError, "invalid value for \"occupation\", must be one of #{validator.allowable_values}."
      end
      @occupation = occupation
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          additional_info == o.additional_info &&
          address == o.address &&
          birth_country == o.birth_country &&
          contact_details == o.contact_details &&
          date_of_birth == o.date_of_birth &&
          document_details == o.document_details &&
          first_name == o.first_name &&
          gender == o.gender &&
          kyc_mode == o.kyc_mode &&
          last_name == o.last_name &&
          middle_name == o.middle_name &&
          nationality == o.nationality &&
          occupation == o.occupation &&
          professional_details == o.professional_details &&
          reference_id == o.reference_id &&
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
      [additional_info, address, birth_country, contact_details, date_of_birth, document_details, first_name, gender, kyc_mode, last_name, middle_name, nationality, occupation, professional_details, reference_id, tax_details].hash
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
