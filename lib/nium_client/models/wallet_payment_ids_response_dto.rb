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
  class WalletPaymentIdsResponseDTO
    # This is a map object containing user defined key-value pairs provided by the client for the wallet payment IDs.
    attr_accessor :tags

    attr_accessor :account_category

    # This field contains the account name of the virtual account.
    attr_accessor :account_name

    # This field contains the account type of the virtual account.
    attr_accessor :account_type

    # This field contains the bank address of the virtual account.
    attr_accessor :bank_address

    # This field represents the bank name of the virtual account and the possible values are: * BOL_LT * MONOOVA_AU * DBS_HK * DBS_SG * JPM_AU * JPM_SG * CB_GB * CFSB_USINTL * JPM_UK
    attr_accessor :bank_name

    # This field contains the 2-letter [ISO-2 country code](doc:currency-and-country-codes).
    attr_accessor :currency_code

    # This field contains the complete name of the bank for the virtual account.
    attr_accessor :full_bank_name

    # This field contains the routing code type 1.
    attr_accessor :routing_code_type1

    # This field contains the routing code type 2.
    attr_accessor :routing_code_type2

    # This field contains the routing code value 1. Refer to the [Examples of Routing Codes](/apis/docs/routing-codes#examples-of-routing-codes).
    attr_accessor :routing_code_value1

    # This field contains the routing code value 2.
    attr_accessor :routing_code_value2

    attr_accessor :status

    # This field contains the unique payer ID.
    attr_accessor :unique_payer_id

    # This field contains the unique payment ID.
    attr_accessor :unique_payment_id

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
            value.to_s.downcase
          end
        end
      end

      def valid?(value)
        return !value || allowable_values.include?(value.try(:downcase) || value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tags' => :'tags',
        :'account_category' => :'accountCategory',
        :'account_name' => :'accountName',
        :'account_type' => :'accountType',
        :'bank_address' => :'bankAddress',
        :'bank_name' => :'bankName',
        :'currency_code' => :'currencyCode',
        :'full_bank_name' => :'fullBankName',
        :'routing_code_type1' => :'routingCodeType1',
        :'routing_code_type2' => :'routingCodeType2',
        :'routing_code_value1' => :'routingCodeValue1',
        :'routing_code_value2' => :'routingCodeValue2',
        :'status' => :'status',
        :'unique_payer_id' => :'uniquePayerId',
        :'unique_payment_id' => :'uniquePaymentId'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'tags' => :'Hash<String, String>',
        :'account_category' => :'String',
        :'account_name' => :'String',
        :'account_type' => :'String',
        :'bank_address' => :'String',
        :'bank_name' => :'String',
        :'currency_code' => :'String',
        :'full_bank_name' => :'String',
        :'routing_code_type1' => :'String',
        :'routing_code_type2' => :'String',
        :'routing_code_value1' => :'String',
        :'routing_code_value2' => :'String',
        :'status' => :'String',
        :'unique_payer_id' => :'String',
        :'unique_payment_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::WalletPaymentIdsResponseDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::WalletPaymentIdsResponseDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Hash)
          self.tags = value
        end
      end

      if attributes.key?(:'account_category')
        self.account_category = attributes[:'account_category']
      end

      if attributes.key?(:'account_name')
        self.account_name = attributes[:'account_name']
      end

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'bank_address')
        self.bank_address = attributes[:'bank_address']
      end

      if attributes.key?(:'bank_name')
        self.bank_name = attributes[:'bank_name']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'full_bank_name')
        self.full_bank_name = attributes[:'full_bank_name']
      end

      if attributes.key?(:'routing_code_type1')
        self.routing_code_type1 = attributes[:'routing_code_type1']
      end

      if attributes.key?(:'routing_code_type2')
        self.routing_code_type2 = attributes[:'routing_code_type2']
      end

      if attributes.key?(:'routing_code_value1')
        self.routing_code_value1 = attributes[:'routing_code_value1']
      end

      if attributes.key?(:'routing_code_value2')
        self.routing_code_value2 = attributes[:'routing_code_value2']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'unique_payer_id')
        self.unique_payer_id = attributes[:'unique_payer_id']
      end

      if attributes.key?(:'unique_payment_id')
        self.unique_payment_id = attributes[:'unique_payment_id']
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
      account_category_validator = EnumAttributeValidator.new('String', ["SELF_FUNDING_ACCOUNT", "COLLECTION_ACCOUNT"])
      return false unless account_category_validator.valid?(@account_category)
      status_validator = EnumAttributeValidator.new('String', ["ACTIVE", "INACTIVE", "BLOCKED", "SUSPENDED", "UPLOADED", "APPROVED", "REJECTED", "FAILED", "SUCCESS", "FAILURE", "PARTIALLY SUCCESS", "SYNC", "NOT SYNC", "PENDING", "REQUIRES_ACTION", "CLEAR", "DECLINED", "ACCOUNT_BLOCKED", "AMOUNT_BLOCKED"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_category Object to be assigned
    def account_category=(account_category)
      validator = EnumAttributeValidator.new('String', ["SELF_FUNDING_ACCOUNT", "COLLECTION_ACCOUNT"])
      unless validator.valid?(account_category)
        fail ArgumentError, "invalid value \"#{account_category}\" for \"account_category\", must be one of #{validator.allowable_values}."
      end
      @account_category = account_category
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["ACTIVE", "INACTIVE", "BLOCKED", "SUSPENDED", "UPLOADED", "APPROVED", "REJECTED", "FAILED", "SUCCESS", "FAILURE", "PARTIALLY SUCCESS", "SYNC", "NOT SYNC", "PENDING", "REQUIRES_ACTION", "CLEAR", "DECLINED", "ACCOUNT_BLOCKED", "AMOUNT_BLOCKED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value \"#{status}\" for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tags == o.tags &&
          account_category == o.account_category &&
          account_name == o.account_name &&
          account_type == o.account_type &&
          bank_address == o.bank_address &&
          bank_name == o.bank_name &&
          currency_code == o.currency_code &&
          full_bank_name == o.full_bank_name &&
          routing_code_type1 == o.routing_code_type1 &&
          routing_code_type2 == o.routing_code_type2 &&
          routing_code_value1 == o.routing_code_value1 &&
          routing_code_value2 == o.routing_code_value2 &&
          status == o.status &&
          unique_payer_id == o.unique_payer_id &&
          unique_payment_id == o.unique_payment_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [tags, account_category, account_name, account_type, bank_address, bank_name, currency_code, full_bank_name, routing_code_type1, routing_code_type2, routing_code_value1, routing_code_value2, status, unique_payer_id, unique_payment_id].hash
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
