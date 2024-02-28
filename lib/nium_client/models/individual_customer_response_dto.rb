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
  class IndividualCustomerResponseDTO
    attr_accessor :billing_address1

    # This field contains the line 2 of individual customer’s billing address, if provided during customer onboarding. Otherwise, it contains null.
    attr_accessor :billing_address2

    # This field contains the city of individual customer’s billing address.
    attr_accessor :billing_city

    # This field contains the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) of customer’s [INDIVIDUAL] or applicant’s [CORPORATE] billing address, if provided during customer onboarding. Otherwise, it contains null.
    attr_accessor :billing_country

    # This field contains the landmark for individual customer’s billing address, if provided during customer onboarding. Otherwise, it contains null.
    attr_accessor :billing_landmark

    # This field contains the state of individual customer’s billing address, if provided during customer onboarding. Otherwise, it contains null.
    attr_accessor :billing_state

    # This field contains the zip code of individual customer’s  billing address.
    attr_accessor :billing_zip_code

    # This field contains the 2-letter [ISO-2 country code](doc:currency-and-country-codes) for identifying the country prefix to the customer’s mobile number.
    attr_accessor :country_code

    # This field contains the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the customer’s country of birth.
    attr_accessor :country_of_birth

    # This field contains the date of birth of the customer [INDIVIDUAL] or applicant [CORPORATE] in YYYY-MM-DD format.
    attr_accessor :date_of_birth

    # This field contains the designation of an employee, if provided during customer onboarding. Otherwise, it contains null.
    attr_accessor :designation

    # This field contains the unique email address of the customer.
    attr_accessor :email

    # This field contains the employee ID of an employee, if provided during customer onboarding. Otherwise, it contains null.
    attr_accessor :employee_id

    # This field contains the estimated monthly funding amount expected in the wallet. This field is required when estimatedMonthlyFundingCurrency field is provided in the request.
    attr_accessor :estimated_monthly_funding

    # This field contains the 3-letter [ISO-4217 currency code](doc:currency-and-country-codes) in which estimated monthly funding is expected in the wallet, for example, SGD.
    attr_accessor :estimated_monthly_funding_currency

    # This is an array of 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) to allow the client to capture the expected countries to send/receive international payments from. This field is required when internationalPaymentsSupported field is true, for example, [“FR”, “DE”].
    attr_accessor :expected_countries_to_send_receive_from

    # This field contains the first name of the individual customer.
    attr_accessor :first_name

    # This field contains the gender of the individual customer, if provided during customer onboarding. The possible values are - Male, Female, or Others. Otherwise, it contains null.
    attr_accessor :gender

    # This array contains objects consisting of type and value of each uploaded document.
    attr_accessor :identification_data

    # This field indicates if the customer will be doing International send/receive payments. The default value will be false.
    attr_accessor :international_payments_supported

    # This field contains the last name of the individual customer.
    attr_accessor :last_name

    # This field contains the middle name of the individual customer, if provided. Otherwise, it contains null.
    attr_accessor :middle_name

    # This field contains the mobile number of the customer without the country code.
    attr_accessor :mobile

    # This field contains the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the customer [INDIVIDUAL] or applicant [CORPORATE] citizenship.
    attr_accessor :nationality

    # This field contains the name of the customer in native language, if provided during customer onboarding. Otherwise, it contains null
    attr_accessor :native_language_name

    # This field accepts the customer’s occupation. Refer to [Enum values](https://docs.nium.com/apis/docs/unified-add-customer-api) for the description.   Note: This field is mandatory for CA.
    attr_accessor :occupation

    # This field contains the unique identifier of the corporate parent customer to whom the individual customer is tagged.
    attr_accessor :parent_customer_hash_id

    # This flag indicates if a customer is a Politically Exposed Person (PEP) or not.
    attr_accessor :pep

    # This field contains the preferred name of the individual customer
    attr_accessor :preferred_name

    # This array contains tax details provided during compliance onboarding for EU customers. Otherwise, it contains null.
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
        :'billing_address1' => :'billingAddress1',
        :'billing_address2' => :'billingAddress2',
        :'billing_city' => :'billingCity',
        :'billing_country' => :'billingCountry',
        :'billing_landmark' => :'billingLandmark',
        :'billing_state' => :'billingState',
        :'billing_zip_code' => :'billingZipCode',
        :'country_code' => :'countryCode',
        :'country_of_birth' => :'countryOfBirth',
        :'date_of_birth' => :'dateOfBirth',
        :'designation' => :'designation',
        :'email' => :'email',
        :'employee_id' => :'employeeId',
        :'estimated_monthly_funding' => :'estimatedMonthlyFunding',
        :'estimated_monthly_funding_currency' => :'estimatedMonthlyFundingCurrency',
        :'expected_countries_to_send_receive_from' => :'expectedCountriesToSendReceiveFrom',
        :'first_name' => :'firstName',
        :'gender' => :'gender',
        :'identification_data' => :'identificationData',
        :'international_payments_supported' => :'internationalPaymentsSupported',
        :'last_name' => :'lastName',
        :'middle_name' => :'middleName',
        :'mobile' => :'mobile',
        :'nationality' => :'nationality',
        :'native_language_name' => :'nativeLanguageName',
        :'occupation' => :'occupation',
        :'parent_customer_hash_id' => :'parentCustomerHashId',
        :'pep' => :'pep',
        :'preferred_name' => :'preferredName',
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
        :'billing_address1' => :'String',
        :'billing_address2' => :'String',
        :'billing_city' => :'String',
        :'billing_country' => :'String',
        :'billing_landmark' => :'String',
        :'billing_state' => :'String',
        :'billing_zip_code' => :'String',
        :'country_code' => :'String',
        :'country_of_birth' => :'String',
        :'date_of_birth' => :'String',
        :'designation' => :'String',
        :'email' => :'String',
        :'employee_id' => :'String',
        :'estimated_monthly_funding' => :'String',
        :'estimated_monthly_funding_currency' => :'String',
        :'expected_countries_to_send_receive_from' => :'Array<String>',
        :'first_name' => :'String',
        :'gender' => :'String',
        :'identification_data' => :'Array<Hash>',
        :'international_payments_supported' => :'Boolean',
        :'last_name' => :'String',
        :'middle_name' => :'String',
        :'mobile' => :'String',
        :'nationality' => :'String',
        :'native_language_name' => :'String',
        :'occupation' => :'String',
        :'parent_customer_hash_id' => :'String',
        :'pep' => :'Boolean',
        :'preferred_name' => :'String',
        :'tax_details' => :'Array<TaxDetailsResponseDTO>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::IndividualCustomerResponseDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::IndividualCustomerResponseDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'billing_address1')
        self.billing_address1 = attributes[:'billing_address1']
      end

      if attributes.key?(:'billing_address2')
        self.billing_address2 = attributes[:'billing_address2']
      end

      if attributes.key?(:'billing_city')
        self.billing_city = attributes[:'billing_city']
      end

      if attributes.key?(:'billing_country')
        self.billing_country = attributes[:'billing_country']
      end

      if attributes.key?(:'billing_landmark')
        self.billing_landmark = attributes[:'billing_landmark']
      end

      if attributes.key?(:'billing_state')
        self.billing_state = attributes[:'billing_state']
      end

      if attributes.key?(:'billing_zip_code')
        self.billing_zip_code = attributes[:'billing_zip_code']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'country_of_birth')
        self.country_of_birth = attributes[:'country_of_birth']
      end

      if attributes.key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.key?(:'designation')
        self.designation = attributes[:'designation']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'employee_id')
        self.employee_id = attributes[:'employee_id']
      end

      if attributes.key?(:'estimated_monthly_funding')
        self.estimated_monthly_funding = attributes[:'estimated_monthly_funding']
      end

      if attributes.key?(:'estimated_monthly_funding_currency')
        self.estimated_monthly_funding_currency = attributes[:'estimated_monthly_funding_currency']
      end

      if attributes.key?(:'expected_countries_to_send_receive_from')
        if (value = attributes[:'expected_countries_to_send_receive_from']).is_a?(Array)
          self.expected_countries_to_send_receive_from = value
        end
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'gender')
        self.gender = attributes[:'gender']
      end

      if attributes.key?(:'identification_data')
        if (value = attributes[:'identification_data']).is_a?(Array)
          self.identification_data = value
        end
      end

      if attributes.key?(:'international_payments_supported')
        self.international_payments_supported = attributes[:'international_payments_supported']
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

      if attributes.key?(:'native_language_name')
        self.native_language_name = attributes[:'native_language_name']
      end

      if attributes.key?(:'occupation')
        self.occupation = attributes[:'occupation']
      end

      if attributes.key?(:'parent_customer_hash_id')
        self.parent_customer_hash_id = attributes[:'parent_customer_hash_id']
      end

      if attributes.key?(:'pep')
        self.pep = attributes[:'pep']
      end

      if attributes.key?(:'preferred_name')
        self.preferred_name = attributes[:'preferred_name']
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
      estimated_monthly_funding_validator = EnumAttributeValidator.new('String', ["<1000", "1000-5000", "5001-10000", "10001-20000", ">20000"])
      return false unless estimated_monthly_funding_validator.valid?(@estimated_monthly_funding)
      occupation_validator = EnumAttributeValidator.new('String', ["OC0001", "OC1001", "OC1002", "OC1003", "OC1110", "OC1120", "OC1201", "OC1210", "OC1211", "OC1220", "OC1310", "OC1311", "OC1320", "OC1410", "OC1411", "OC1420", "OC1430", "OC1440", "OC2001", "OC2110", "OC2111", "OC2112", "OC2120", "OC2121", "OC2122", "OC2123", "OC2130", "OC2131", "OC2132", "OC2133", "OC2139", "OC2210", "OC2211", "OC2221", "OC2222", "OC2223", "OC2230", "OC2231", "OC3001", "OC3110", "OC3111", "OC3112", "OC3120", "OC3130", "OC3210", "OC3211", "OC3212", "OC3220", "OC3310", "OC4001", "OC4002", "OC4003", "OC4004", "OC4110", "OC4120", "OC4121", "OC4122", "OC4130", "OC4131", "OC4132", "OC4140", "OC4210", "OC4220", "OC4310", "OC4320", "OC4410", "OC4420", "OC4510", "OC5001", "OC5110", "OC5111", "OC5112", "OC5210", "OC5211", "OC5212", "OC5310", "OC5311", "OC5312", "OC5320", "OC5410", "OC5510", "OC6001", "OC6002", "OC6003", "OC6004", "OC6201", "OC6202", "OC6210", "OC6220", "OC6310", "OC6320", "OC6321", "OC6322", "OC6410", "OC6420", "OC6430", "OC6431", "OC6432", "OC6440", "OC6441", "OC6510", "OC6520", "OC6521", "OC6522", "OC6531", "OC6532", "OC7001", "OC7002", "OC7201", "OC7202", "OC7210", "OC7220", "OC7230", "OC7231", "OC7232", "OC7240", "OC7241", "OC7242", "OC7250", "OC7260", "OC7299", "OC7310", "OC7311", "OC7320", "OC7330", "OC7331", "OC7340", "OC7410", "OC7420", "OC7510", "OC7511", "OC7520", "OC7521", "OC8001", "OC8002", "OC8201", "OC8202", "OC8203", "OC8310", "OC8311", "OC8312", "OC8410", "OC8411", "OC8412", "OC8510", "OC8511", "OC8512", "OC9001", "OC9201", "OC9202", "OC9210", "OC9310", "OC9320", "OC9410", "OC9411", "OC9412", "OC9413", "OC9414", "OC9415", "OC9420", "OC9421", "OC9510"])
      return false unless occupation_validator.valid?(@occupation)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] estimated_monthly_funding Object to be assigned
    def estimated_monthly_funding=(estimated_monthly_funding)
      validator = EnumAttributeValidator.new('String', ["<1000", "1000-5000", "5001-10000", "10001-20000", ">20000"])
      unless validator.valid?(estimated_monthly_funding)
        fail ArgumentError, "invalid value for \"estimated_monthly_funding\", must be one of #{validator.allowable_values}."
      end
      @estimated_monthly_funding = estimated_monthly_funding
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
          billing_address1 == o.billing_address1 &&
          billing_address2 == o.billing_address2 &&
          billing_city == o.billing_city &&
          billing_country == o.billing_country &&
          billing_landmark == o.billing_landmark &&
          billing_state == o.billing_state &&
          billing_zip_code == o.billing_zip_code &&
          country_code == o.country_code &&
          country_of_birth == o.country_of_birth &&
          date_of_birth == o.date_of_birth &&
          designation == o.designation &&
          email == o.email &&
          employee_id == o.employee_id &&
          estimated_monthly_funding == o.estimated_monthly_funding &&
          estimated_monthly_funding_currency == o.estimated_monthly_funding_currency &&
          expected_countries_to_send_receive_from == o.expected_countries_to_send_receive_from &&
          first_name == o.first_name &&
          gender == o.gender &&
          identification_data == o.identification_data &&
          international_payments_supported == o.international_payments_supported &&
          last_name == o.last_name &&
          middle_name == o.middle_name &&
          mobile == o.mobile &&
          nationality == o.nationality &&
          native_language_name == o.native_language_name &&
          occupation == o.occupation &&
          parent_customer_hash_id == o.parent_customer_hash_id &&
          pep == o.pep &&
          preferred_name == o.preferred_name &&
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
      [billing_address1, billing_address2, billing_city, billing_country, billing_landmark, billing_state, billing_zip_code, country_code, country_of_birth, date_of_birth, designation, email, employee_id, estimated_monthly_funding, estimated_monthly_funding_currency, expected_countries_to_send_receive_from, first_name, gender, identification_data, international_payments_supported, last_name, middle_name, mobile, nationality, native_language_name, occupation, parent_customer_hash_id, pep, preferred_name, tax_details].hash
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