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
  class CardMetaDataResponseDTO
    # This field contains the 3-letter [ISO-4217 destination currency code](doc:currency-and-country-codes) for the card billing currency.
    attr_accessor :billing_currency_code

    # This field contains the number of decimal positions that should be present in any amounts for the requested card's billing currency.
    attr_accessor :billing_currency_minor_digits

    # This field indicates the beneficiary card issuer [country code](doc:currency-and-country-codes).
    attr_accessor :card_issuer_country_code

    # This field contains the code of the card type, for example, Credit, Debit, Prepaid, Charge, Deferred Debit.
    attr_accessor :card_type_code

    # This field ensures if the card is eligible for fast funds that is if the funds will settle in 30 mins or less. If not eligible then typically fund will settle within 2 business days.
    attr_accessor :fast_funds_indicator

    # This field ensures if the issuer bank is supported by the card type such as Visa or geoswift.
    attr_accessor :is_bank_supported

    # This field ensures if the card details entered is valid or not.
    attr_accessor :is_card_valid

    # This field contains the beneficiary card issuer name.
    attr_accessor :issuer_name

    # This code ensures if the card can receive push-payments for online gambling payouts. If the value is \"Y\" then the account cannot receive gambling Push Funds (OCTs). If the value is \"N\" then the account can receive gambling Push Funds (OCTs).
    attr_accessor :online_gambing_block_indicator

    # This field ensures if the associated card can receive push-to-card disbursements or not.
    attr_accessor :push_funds_block_indicator

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'billing_currency_code' => :'billingCurrencyCode',
        :'billing_currency_minor_digits' => :'billingCurrencyMinorDigits',
        :'card_issuer_country_code' => :'cardIssuerCountryCode',
        :'card_type_code' => :'cardTypeCode',
        :'fast_funds_indicator' => :'fastFundsIndicator',
        :'is_bank_supported' => :'isBankSupported',
        :'is_card_valid' => :'isCardValid',
        :'issuer_name' => :'issuerName',
        :'online_gambing_block_indicator' => :'onlineGambingBlockIndicator',
        :'push_funds_block_indicator' => :'pushFundsBlockIndicator'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'billing_currency_code' => :'String',
        :'billing_currency_minor_digits' => :'String',
        :'card_issuer_country_code' => :'String',
        :'card_type_code' => :'String',
        :'fast_funds_indicator' => :'String',
        :'is_bank_supported' => :'Boolean',
        :'is_card_valid' => :'Boolean',
        :'issuer_name' => :'String',
        :'online_gambing_block_indicator' => :'String',
        :'push_funds_block_indicator' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::CardMetaDataResponseDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::CardMetaDataResponseDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'billing_currency_code')
        self.billing_currency_code = attributes[:'billing_currency_code']
      end

      if attributes.key?(:'billing_currency_minor_digits')
        self.billing_currency_minor_digits = attributes[:'billing_currency_minor_digits']
      end

      if attributes.key?(:'card_issuer_country_code')
        self.card_issuer_country_code = attributes[:'card_issuer_country_code']
      end

      if attributes.key?(:'card_type_code')
        self.card_type_code = attributes[:'card_type_code']
      end

      if attributes.key?(:'fast_funds_indicator')
        self.fast_funds_indicator = attributes[:'fast_funds_indicator']
      end

      if attributes.key?(:'is_bank_supported')
        self.is_bank_supported = attributes[:'is_bank_supported']
      end

      if attributes.key?(:'is_card_valid')
        self.is_card_valid = attributes[:'is_card_valid']
      end

      if attributes.key?(:'issuer_name')
        self.issuer_name = attributes[:'issuer_name']
      end

      if attributes.key?(:'online_gambing_block_indicator')
        self.online_gambing_block_indicator = attributes[:'online_gambing_block_indicator']
      end

      if attributes.key?(:'push_funds_block_indicator')
        self.push_funds_block_indicator = attributes[:'push_funds_block_indicator']
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
          billing_currency_code == o.billing_currency_code &&
          billing_currency_minor_digits == o.billing_currency_minor_digits &&
          card_issuer_country_code == o.card_issuer_country_code &&
          card_type_code == o.card_type_code &&
          fast_funds_indicator == o.fast_funds_indicator &&
          is_bank_supported == o.is_bank_supported &&
          is_card_valid == o.is_card_valid &&
          issuer_name == o.issuer_name &&
          online_gambing_block_indicator == o.online_gambing_block_indicator &&
          push_funds_block_indicator == o.push_funds_block_indicator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [billing_currency_code, billing_currency_minor_digits, card_issuer_country_code, card_type_code, fast_funds_indicator, is_bank_supported, is_card_valid, issuer_name, online_gambing_block_indicator, push_funds_block_indicator].hash
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