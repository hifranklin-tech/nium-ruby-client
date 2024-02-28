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
  class UpdateCustomerDTO
    attr_accessor :additional_info

    # This field accepts the authentication code generated as part of SCA (Strong Customer Authentication). Note: : Authentication code must be passed if regulatory region of the program is UK or EU. This field does not accept a value for any other region.
    attr_accessor :authentication_code

    # Billing address line one of a customer.
    attr_accessor :billing_address1

    # Billing address line two of a customer.
    attr_accessor :billing_address2

    attr_accessor :billing_address_id

    # Billing address city name.
    attr_accessor :billing_city

    # This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country of customer’s billing address. It is important to pass this field if the card to be issued is to be used for GooglePay or ApplePay provisioning.
    attr_accessor :billing_country

    # Billing landmark address field.
    attr_accessor :billing_landmark

    # Billing address state name.
    attr_accessor :billing_state

    # Billing address ZIP code.
    attr_accessor :billing_zip_code

    attr_accessor :block_type

    # Line one of the customer's correspondence address.
    attr_accessor :correspondence_address1

    # Line two of the customer's correspondence address.
    attr_accessor :correspondence_address2

    attr_accessor :correspondence_address_id

    # Correspondence address city name.
    attr_accessor :correspondence_city

    # This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country of customer’s correspondence address.
    attr_accessor :correspondence_country

    # Correspondence landmark address field.
    attr_accessor :correspondence_landmark

    # Correspondence address state name.
    attr_accessor :correspondence_state

    # Correspondence postal/ZIP code of a customer.
    attr_accessor :correspondence_zip_code

    # This field contains the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) for identifying the country prefix to a mobile number.
    attr_accessor :country_code

    # The country IP for the device by the customer for initiating the request.
    attr_accessor :country_ip

    # Unique customer identifier generated on customer creation.
    attr_accessor :customer_hash_id

    # Line one of the address where the customer would like to receive a card.
    attr_accessor :delivery_address1

    # Line two of the customer's delivery address.
    attr_accessor :delivery_address2

    attr_accessor :delivery_address_id

    # Customer's city name.
    attr_accessor :delivery_city

    # This field accepts the 2-letter [ISO Alpha-2 country code](doc:currency-and-country-codes) denoting the country of customer's delivery address.
    attr_accessor :delivery_country

    # delivery landmark address field.
    attr_accessor :delivery_landmark

    # Customer's state name.
    attr_accessor :delivery_state

    # Customer's ZIP code.
    attr_accessor :delivery_zip_code

    # The OS of the device used by the customer for initiating the request.
    attr_accessor :device_info

    # Customer's email address
    attr_accessor :email

    # This field accepts the employee Id for the customer, in case of a corporate program.
    attr_accessor :employee_id

    # The IP address of the device used by the customer for initiating the request.
    attr_accessor :ip_address

    # Mobile number to be updated.
    attr_accessor :mobile

    # This field contains the customer's name in native language. Maximum character limit: 40
    attr_accessor :native_language_name

    # This is the fee segment associated with a client. Maximum character limit: 64
    attr_accessor :segment

    # The session Id for the session of the customer for initiating the request.
    attr_accessor :session_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'additional_info' => :'additionalInfo',
        :'authentication_code' => :'authenticationCode',
        :'billing_address1' => :'billingAddress1',
        :'billing_address2' => :'billingAddress2',
        :'billing_address_id' => :'billingAddressId',
        :'billing_city' => :'billingCity',
        :'billing_country' => :'billingCountry',
        :'billing_landmark' => :'billingLandmark',
        :'billing_state' => :'billingState',
        :'billing_zip_code' => :'billingZipCode',
        :'block_type' => :'blockType',
        :'correspondence_address1' => :'correspondenceAddress1',
        :'correspondence_address2' => :'correspondenceAddress2',
        :'correspondence_address_id' => :'correspondenceAddressId',
        :'correspondence_city' => :'correspondenceCity',
        :'correspondence_country' => :'correspondenceCountry',
        :'correspondence_landmark' => :'correspondenceLandmark',
        :'correspondence_state' => :'correspondenceState',
        :'correspondence_zip_code' => :'correspondenceZipCode',
        :'country_code' => :'countryCode',
        :'country_ip' => :'countryIP',
        :'customer_hash_id' => :'customerHashId',
        :'delivery_address1' => :'deliveryAddress1',
        :'delivery_address2' => :'deliveryAddress2',
        :'delivery_address_id' => :'deliveryAddressId',
        :'delivery_city' => :'deliveryCity',
        :'delivery_country' => :'deliveryCountry',
        :'delivery_landmark' => :'deliveryLandmark',
        :'delivery_state' => :'deliveryState',
        :'delivery_zip_code' => :'deliveryZipCode',
        :'device_info' => :'deviceInfo',
        :'email' => :'email',
        :'employee_id' => :'employeeId',
        :'ip_address' => :'ipAddress',
        :'mobile' => :'mobile',
        :'native_language_name' => :'nativeLanguageName',
        :'segment' => :'segment',
        :'session_id' => :'sessionId'
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
        :'authentication_code' => :'String',
        :'billing_address1' => :'String',
        :'billing_address2' => :'String',
        :'billing_address_id' => :'String',
        :'billing_city' => :'String',
        :'billing_country' => :'String',
        :'billing_landmark' => :'String',
        :'billing_state' => :'String',
        :'billing_zip_code' => :'String',
        :'block_type' => :'String',
        :'correspondence_address1' => :'String',
        :'correspondence_address2' => :'String',
        :'correspondence_address_id' => :'String',
        :'correspondence_city' => :'String',
        :'correspondence_country' => :'String',
        :'correspondence_landmark' => :'String',
        :'correspondence_state' => :'String',
        :'correspondence_zip_code' => :'String',
        :'country_code' => :'String',
        :'country_ip' => :'String',
        :'customer_hash_id' => :'String',
        :'delivery_address1' => :'String',
        :'delivery_address2' => :'String',
        :'delivery_address_id' => :'String',
        :'delivery_city' => :'String',
        :'delivery_country' => :'String',
        :'delivery_landmark' => :'String',
        :'delivery_state' => :'String',
        :'delivery_zip_code' => :'String',
        :'device_info' => :'String',
        :'email' => :'String',
        :'employee_id' => :'String',
        :'ip_address' => :'String',
        :'mobile' => :'String',
        :'native_language_name' => :'String',
        :'segment' => :'String',
        :'session_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::UpdateCustomerDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::UpdateCustomerDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'additional_info')
        if (value = attributes[:'additional_info']).is_a?(Hash)
          self.additional_info = value
        end
      end

      if attributes.key?(:'authentication_code')
        self.authentication_code = attributes[:'authentication_code']
      end

      if attributes.key?(:'billing_address1')
        self.billing_address1 = attributes[:'billing_address1']
      end

      if attributes.key?(:'billing_address2')
        self.billing_address2 = attributes[:'billing_address2']
      end

      if attributes.key?(:'billing_address_id')
        self.billing_address_id = attributes[:'billing_address_id']
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

      if attributes.key?(:'block_type')
        self.block_type = attributes[:'block_type']
      end

      if attributes.key?(:'correspondence_address1')
        self.correspondence_address1 = attributes[:'correspondence_address1']
      end

      if attributes.key?(:'correspondence_address2')
        self.correspondence_address2 = attributes[:'correspondence_address2']
      end

      if attributes.key?(:'correspondence_address_id')
        self.correspondence_address_id = attributes[:'correspondence_address_id']
      end

      if attributes.key?(:'correspondence_city')
        self.correspondence_city = attributes[:'correspondence_city']
      end

      if attributes.key?(:'correspondence_country')
        self.correspondence_country = attributes[:'correspondence_country']
      end

      if attributes.key?(:'correspondence_landmark')
        self.correspondence_landmark = attributes[:'correspondence_landmark']
      end

      if attributes.key?(:'correspondence_state')
        self.correspondence_state = attributes[:'correspondence_state']
      end

      if attributes.key?(:'correspondence_zip_code')
        self.correspondence_zip_code = attributes[:'correspondence_zip_code']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'country_ip')
        self.country_ip = attributes[:'country_ip']
      end

      if attributes.key?(:'customer_hash_id')
        self.customer_hash_id = attributes[:'customer_hash_id']
      end

      if attributes.key?(:'delivery_address1')
        self.delivery_address1 = attributes[:'delivery_address1']
      end

      if attributes.key?(:'delivery_address2')
        self.delivery_address2 = attributes[:'delivery_address2']
      end

      if attributes.key?(:'delivery_address_id')
        self.delivery_address_id = attributes[:'delivery_address_id']
      end

      if attributes.key?(:'delivery_city')
        self.delivery_city = attributes[:'delivery_city']
      end

      if attributes.key?(:'delivery_country')
        self.delivery_country = attributes[:'delivery_country']
      end

      if attributes.key?(:'delivery_landmark')
        self.delivery_landmark = attributes[:'delivery_landmark']
      end

      if attributes.key?(:'delivery_state')
        self.delivery_state = attributes[:'delivery_state']
      end

      if attributes.key?(:'delivery_zip_code')
        self.delivery_zip_code = attributes[:'delivery_zip_code']
      end

      if attributes.key?(:'device_info')
        self.device_info = attributes[:'device_info']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'employee_id')
        self.employee_id = attributes[:'employee_id']
      end

      if attributes.key?(:'ip_address')
        self.ip_address = attributes[:'ip_address']
      end

      if attributes.key?(:'mobile')
        self.mobile = attributes[:'mobile']
      end

      if attributes.key?(:'native_language_name')
        self.native_language_name = attributes[:'native_language_name']
      end

      if attributes.key?(:'segment')
        self.segment = attributes[:'segment']
      end

      if attributes.key?(:'session_id')
        self.session_id = attributes[:'session_id']
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
          additional_info == o.additional_info &&
          authentication_code == o.authentication_code &&
          billing_address1 == o.billing_address1 &&
          billing_address2 == o.billing_address2 &&
          billing_address_id == o.billing_address_id &&
          billing_city == o.billing_city &&
          billing_country == o.billing_country &&
          billing_landmark == o.billing_landmark &&
          billing_state == o.billing_state &&
          billing_zip_code == o.billing_zip_code &&
          block_type == o.block_type &&
          correspondence_address1 == o.correspondence_address1 &&
          correspondence_address2 == o.correspondence_address2 &&
          correspondence_address_id == o.correspondence_address_id &&
          correspondence_city == o.correspondence_city &&
          correspondence_country == o.correspondence_country &&
          correspondence_landmark == o.correspondence_landmark &&
          correspondence_state == o.correspondence_state &&
          correspondence_zip_code == o.correspondence_zip_code &&
          country_code == o.country_code &&
          country_ip == o.country_ip &&
          customer_hash_id == o.customer_hash_id &&
          delivery_address1 == o.delivery_address1 &&
          delivery_address2 == o.delivery_address2 &&
          delivery_address_id == o.delivery_address_id &&
          delivery_city == o.delivery_city &&
          delivery_country == o.delivery_country &&
          delivery_landmark == o.delivery_landmark &&
          delivery_state == o.delivery_state &&
          delivery_zip_code == o.delivery_zip_code &&
          device_info == o.device_info &&
          email == o.email &&
          employee_id == o.employee_id &&
          ip_address == o.ip_address &&
          mobile == o.mobile &&
          native_language_name == o.native_language_name &&
          segment == o.segment &&
          session_id == o.session_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [additional_info, authentication_code, billing_address1, billing_address2, billing_address_id, billing_city, billing_country, billing_landmark, billing_state, billing_zip_code, block_type, correspondence_address1, correspondence_address2, correspondence_address_id, correspondence_city, correspondence_country, correspondence_landmark, correspondence_state, correspondence_zip_code, country_code, country_ip, customer_hash_id, delivery_address1, delivery_address2, delivery_address_id, delivery_city, delivery_country, delivery_landmark, delivery_state, delivery_zip_code, device_info, email, employee_id, ip_address, mobile, native_language_name, segment, session_id].hash
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
