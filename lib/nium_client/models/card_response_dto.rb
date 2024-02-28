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
  class CardResponseDTO
    # This field contains the unique card identifier generated while new/add-on card issuance.
    attr_accessor :card_hash_id

    # This field contains the card type to be issued. The acceptable values are: GPR_PHY: This value is used to issue a physical card. GPR_VIR: This value is used to issue a virtual card. GPR_VIR_UP2PHY: This value is used to issue a virtual upgrade to physical card.
    attr_accessor :card_type

    # This field contains the activation status of the card.
    attr_accessor :card_status

    # This field contains the 16-digit masked card number in format 1234-56xx-xxxx-3456.
    attr_accessor :masked_card_number

    # This field contains the reference number for the card.
    attr_accessor :proxy_number

    # This field contains the pre-defined logo for card issuance.
    attr_accessor :logo_id

    # This field contains the pre-defined plastic ID which is used to determine card design.
    attr_accessor :plastic_id

    # This field contains the 2-letter [region code](doc:currency-and-country-codes) for the card.
    attr_accessor :region_code

    # This field contains the reason for card block.
    attr_accessor :block_reason

    # This field contains the timestamp when the card was replaced, otherwise null.
    attr_accessor :replaced_on

    # This field contains the mode of delivery of a card.
    attr_accessor :issuance_mode

    # This field contains the type of the card issued.The values can be primaryCard, additionalCard, or replaceCard.
    attr_accessor :issuance_type

    # This field contains the printed name on line 1.
    attr_accessor :embossing_line1

    # This field contains the printed name on line 2.
    attr_accessor :embossing_line2

    # This field contains the first name of the card holder.
    attr_accessor :first_name

    # This field contains the middle name of the card holder.
    attr_accessor :middle_name

    # This field contains the last name of the card holder.
    attr_accessor :last_name

    # This field contains the email ID of the card holder.
    attr_accessor :email

    # This field contains the 2-letter [ISO-2 country code](doc:currency-and-country-codes) for identifying the country prefix to a mobile number.
    attr_accessor :country_code

    # This field contains the mobile number of the card holder--digits only--without the country code.
    attr_accessor :mobile

    # This field is required in case of ADD_ON cards. If sent as false, the card shall be issued in the name of the customer(primary card holder). If sent as true, the card shall be issued in the name of the add-on card holder whose full details need to be provided.
    attr_accessor :demog_overridden

    # This field contains the date and time of card creation
    attr_accessor :created_at

    # This field contains the date and time of card updation
    attr_accessor :updated_at

    # This array contains the token details.
    attr_accessor :tokens

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
        :'card_hash_id' => :'cardHashId',
        :'card_type' => :'cardType',
        :'card_status' => :'cardStatus',
        :'masked_card_number' => :'maskedCardNumber',
        :'proxy_number' => :'proxyNumber',
        :'logo_id' => :'logoId',
        :'plastic_id' => :'plasticId',
        :'region_code' => :'regionCode',
        :'block_reason' => :'blockReason',
        :'replaced_on' => :'replacedOn',
        :'issuance_mode' => :'issuanceMode',
        :'issuance_type' => :'issuanceType',
        :'embossing_line1' => :'embossingLine1',
        :'embossing_line2' => :'embossingLine2',
        :'first_name' => :'firstName',
        :'middle_name' => :'middleName',
        :'last_name' => :'lastName',
        :'email' => :'email',
        :'country_code' => :'countryCode',
        :'mobile' => :'mobile',
        :'demog_overridden' => :'demogOverridden',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'tokens' => :'tokens'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'card_hash_id' => :'String',
        :'card_type' => :'String',
        :'card_status' => :'String',
        :'masked_card_number' => :'String',
        :'proxy_number' => :'String',
        :'logo_id' => :'String',
        :'plastic_id' => :'String',
        :'region_code' => :'String',
        :'block_reason' => :'String',
        :'replaced_on' => :'String',
        :'issuance_mode' => :'String',
        :'issuance_type' => :'String',
        :'embossing_line1' => :'String',
        :'embossing_line2' => :'String',
        :'first_name' => :'String',
        :'middle_name' => :'String',
        :'last_name' => :'String',
        :'email' => :'String',
        :'country_code' => :'String',
        :'mobile' => :'String',
        :'demog_overridden' => :'Boolean',
        :'created_at' => :'String',
        :'updated_at' => :'String',
        :'tokens' => :'Array<CardTokensDTO>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::CardResponseDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::CardResponseDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'card_hash_id')
        self.card_hash_id = attributes[:'card_hash_id']
      end

      if attributes.key?(:'card_type')
        self.card_type = attributes[:'card_type']
      end

      if attributes.key?(:'card_status')
        self.card_status = attributes[:'card_status']
      end

      if attributes.key?(:'masked_card_number')
        self.masked_card_number = attributes[:'masked_card_number']
      end

      if attributes.key?(:'proxy_number')
        self.proxy_number = attributes[:'proxy_number']
      end

      if attributes.key?(:'logo_id')
        self.logo_id = attributes[:'logo_id']
      end

      if attributes.key?(:'plastic_id')
        self.plastic_id = attributes[:'plastic_id']
      end

      if attributes.key?(:'region_code')
        self.region_code = attributes[:'region_code']
      end

      if attributes.key?(:'block_reason')
        self.block_reason = attributes[:'block_reason']
      end

      if attributes.key?(:'replaced_on')
        self.replaced_on = attributes[:'replaced_on']
      end

      if attributes.key?(:'issuance_mode')
        self.issuance_mode = attributes[:'issuance_mode']
      end

      if attributes.key?(:'issuance_type')
        self.issuance_type = attributes[:'issuance_type']
      end

      if attributes.key?(:'embossing_line1')
        self.embossing_line1 = attributes[:'embossing_line1']
      end

      if attributes.key?(:'embossing_line2')
        self.embossing_line2 = attributes[:'embossing_line2']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'middle_name')
        self.middle_name = attributes[:'middle_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'mobile')
        self.mobile = attributes[:'mobile']
      end

      if attributes.key?(:'demog_overridden')
        self.demog_overridden = attributes[:'demog_overridden']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'tokens')
        if (value = attributes[:'tokens']).is_a?(Array)
          self.tokens = value
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
      card_status_validator = EnumAttributeValidator.new('String', ["INACTIVE,ACTIVE,VIRTUAL_ACTIVE,TEMP_BLOCK,P_BLOCK"])
      return false unless card_status_validator.valid?(@card_status)
      block_reason_validator = EnumAttributeValidator.new('String', ["fraud,cardLost,cardStolen,damaged"])
      return false unless block_reason_validator.valid?(@block_reason)
      issuance_mode_validator = EnumAttributeValidator.new('String', ["NORMAL_DELIVERY_LOCAL,EXPRESS_DELIVERY_LOCAL,INTERNATIONAL_DELIVERY"])
      return false unless issuance_mode_validator.valid?(@issuance_mode)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card_status Object to be assigned
    def card_status=(card_status)
      validator = EnumAttributeValidator.new('String', ["INACTIVE,ACTIVE,VIRTUAL_ACTIVE,TEMP_BLOCK,P_BLOCK"])
      unless validator.valid?(card_status)
        fail ArgumentError, "invalid value for \"card_status\", must be one of #{validator.allowable_values}."
      end
      @card_status = card_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] block_reason Object to be assigned
    def block_reason=(block_reason)
      validator = EnumAttributeValidator.new('String', ["fraud,cardLost,cardStolen,damaged"])
      unless validator.valid?(block_reason)
        fail ArgumentError, "invalid value for \"block_reason\", must be one of #{validator.allowable_values}."
      end
      @block_reason = block_reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuance_mode Object to be assigned
    def issuance_mode=(issuance_mode)
      validator = EnumAttributeValidator.new('String', ["NORMAL_DELIVERY_LOCAL,EXPRESS_DELIVERY_LOCAL,INTERNATIONAL_DELIVERY"])
      unless validator.valid?(issuance_mode)
        fail ArgumentError, "invalid value for \"issuance_mode\", must be one of #{validator.allowable_values}."
      end
      @issuance_mode = issuance_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          card_hash_id == o.card_hash_id &&
          card_type == o.card_type &&
          card_status == o.card_status &&
          masked_card_number == o.masked_card_number &&
          proxy_number == o.proxy_number &&
          logo_id == o.logo_id &&
          plastic_id == o.plastic_id &&
          region_code == o.region_code &&
          block_reason == o.block_reason &&
          replaced_on == o.replaced_on &&
          issuance_mode == o.issuance_mode &&
          issuance_type == o.issuance_type &&
          embossing_line1 == o.embossing_line1 &&
          embossing_line2 == o.embossing_line2 &&
          first_name == o.first_name &&
          middle_name == o.middle_name &&
          last_name == o.last_name &&
          email == o.email &&
          country_code == o.country_code &&
          mobile == o.mobile &&
          demog_overridden == o.demog_overridden &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          tokens == o.tokens
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [card_hash_id, card_type, card_status, masked_card_number, proxy_number, logo_id, plastic_id, region_code, block_reason, replaced_on, issuance_mode, issuance_type, embossing_line1, embossing_line2, first_name, middle_name, last_name, email, country_code, mobile, demog_overridden, created_at, updated_at, tokens].hash
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
