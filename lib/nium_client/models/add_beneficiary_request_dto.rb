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
  class AddBeneficiaryRequestDTO
    # This fields accepts the authenticationCode generated as part of SCA(Strong Customer Authentication). Note: Authentication code must be passed if regulatory region of the program is UK or EU and License Entity Nium. For other regions, this field is optional.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :authentication_code

    attr_accessor :auto_sweep_payout_account

    # This field accepts an account number.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_account_number

    # This field accepts the bank account type of the beneficiary. The account type can be either Individual or Corporate.
    attr_accessor :beneficiary_account_type

    # This field accepts an address of the beneficiary.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_address

    # This field accepts the alias of beneficiary.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_alias

    # This field accepts the type of account. This field is conditional in case of WALLET payout and the possible values are: Current Saving Maestra Checking   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_bank_account_type

    # This field accepts the beneficiary bank code.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_bank_code

    # This field accepts the beneficiary bank name.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_bank_name

    # This field accepts expiry date of card.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_card_expiry_date

    # This field accepts issuer name of the card.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_card_issuer_name

    # This field accepts the city of the beneficiary.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_city

    # This field accepts the mobile number country code of the beneficiary.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_contact_country_code

    # This field accepts the name of the contact person of the business, applicable when beneficiary is a business.
    attr_accessor :beneficiary_contact_name

    # This field accepts the mobile number of the beneficiary--digits only--without the country code.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_contact_number

    # This field accepts the [ISO-2 country code](doc:currency-and-country-codes) of the beneficiary.
    attr_accessor :beneficiary_country_code

    attr_accessor :beneficiary_dob

    # This field accepts an email of the beneficiary.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_email

    # This field accepts the entity type of the business, when the beneficiary is a business. Refer to the enum value list for allowed values. The value `go` indicates a majority owned subsidiary of state-owned company.
    attr_accessor :beneficiary_entity_type

    attr_accessor :beneficiary_establishment_date

    # This field accepts the type of identification document name for a beneficiary.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_identification_type

    # This field accepts an identification document number for the beneficiary.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_identification_value

    # This field accepts the name of the beneficiary.
    attr_accessor :beneficiary_name

    # This field accepts the postal code of the beneficiary.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_postcode

    # This field accepts the state of the beneficiary.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :beneficiary_state

    attr_accessor :default_auto_sweep_payout_account

    # This field contains the 2-letter [ISO-2 country code](doc:currency-and-country-codes) of the destination country.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :destination_country

    # This field accepts the 3-letter [ISO-4217 destination currency code](doc:currency-and-country-codes).
    attr_accessor :destination_currency

    # This field accepts the system generated token number to identify the card stored at NIUM's platform. Note: This field is mandatory if the client is non-PCI DSS compliant.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :encrypted_beneficiary_card_token

    # This field accepts the payout method for the remittance payout. This field can accept one of the following values: LOCAL SWIFT WALLET CARD PROXY
    attr_accessor :payout_method

    # This field indicates the proxy type sent in the payment request. For SGD-PayNow: The proxy type can be MOBILE, UEN , NRIC, or VPA  For INR-UPI: The proxy type should be VPA For BRL-PIX: The proxy type can be MOBILE, ID, EMAIL, or RANDOM_KEY  For AUD-PayID: The proxy type can be MOBILE, EMAIL, ABN, or ORGANISATION_ID (only domestic payouts are allowed) For MYR-DuitNow: The proxy type can be NRIC, PASSPORT, CORPORATE_REGISTRATION_NUMBER, MOBILE, or ARMY_ID Note: This field is mandatory when the payoutMethod type is PROXY.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :proxy_type

    # This field indicates the proxy value such as VPA, UEN, or mobile number etc. Note: This field is mandatory when the payoutMethod type is PROXY The mobile number should include country code.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :proxy_value

    # This field accepts the relationship of the beneficiary with the remitter.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :remitter_beneficiary_relationship

    # This field accepts the routing code type 1, for example, SWIFT for all countries, IFSC for India, SORT CODE for UK, ACH CODE for USA, BRANCH CODE for Brazil and Bangladesh, BSB CODE for Australia, BANK CODE for HongKong.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :routing_code_type1

    # This field accepts the routing code type 2, for example, SWIFT for all countries, IFSC for India, SORT CODE for UK, ACH CODE for USA, BRANCH CODE for Brazil and Bangladesh, BSB CODE for Australia, BANK CODE for HongKong.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :routing_code_type2

    # This field accepts the routing code value 1, for example, ADCBINBB or ADCBINBB123 for SWIFT, SBIN0000058 for IFSC, 100000 for SORT CODE, 111000025 for ACH CODE, 012515 for BSB CODE, 151 for BANK CODE.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :routing_code_value1

    # This field accepts the routing code value 2, for example, ADCBINBB or ADCBINBB123 for SWIFT, SBIN0000058 for IFSC, 100000 for SORT CODE, 111000025 for ACH CODE, 012515 for BSB CODE, 151 for BANK CODE.   Note: For this conditional field, see the callout at the top of this page.
    attr_accessor :routing_code_value2

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'authentication_code' => :'authenticationCode',
        :'auto_sweep_payout_account' => :'autoSweepPayoutAccount',
        :'beneficiary_account_number' => :'beneficiaryAccountNumber',
        :'beneficiary_account_type' => :'beneficiaryAccountType',
        :'beneficiary_address' => :'beneficiaryAddress',
        :'beneficiary_alias' => :'beneficiaryAlias',
        :'beneficiary_bank_account_type' => :'beneficiaryBankAccountType',
        :'beneficiary_bank_code' => :'beneficiaryBankCode',
        :'beneficiary_bank_name' => :'beneficiaryBankName',
        :'beneficiary_card_expiry_date' => :'beneficiaryCardExpiryDate',
        :'beneficiary_card_issuer_name' => :'beneficiaryCardIssuerName',
        :'beneficiary_city' => :'beneficiaryCity',
        :'beneficiary_contact_country_code' => :'beneficiaryContactCountryCode',
        :'beneficiary_contact_name' => :'beneficiaryContactName',
        :'beneficiary_contact_number' => :'beneficiaryContactNumber',
        :'beneficiary_country_code' => :'beneficiaryCountryCode',
        :'beneficiary_dob' => :'beneficiaryDob',
        :'beneficiary_email' => :'beneficiaryEmail',
        :'beneficiary_entity_type' => :'beneficiaryEntityType',
        :'beneficiary_establishment_date' => :'beneficiaryEstablishmentDate',
        :'beneficiary_identification_type' => :'beneficiaryIdentificationType',
        :'beneficiary_identification_value' => :'beneficiaryIdentificationValue',
        :'beneficiary_name' => :'beneficiaryName',
        :'beneficiary_postcode' => :'beneficiaryPostcode',
        :'beneficiary_state' => :'beneficiaryState',
        :'default_auto_sweep_payout_account' => :'defaultAutoSweepPayoutAccount',
        :'destination_country' => :'destinationCountry',
        :'destination_currency' => :'destinationCurrency',
        :'encrypted_beneficiary_card_token' => :'encryptedBeneficiaryCardToken',
        :'payout_method' => :'payoutMethod',
        :'proxy_type' => :'proxyType',
        :'proxy_value' => :'proxyValue',
        :'remitter_beneficiary_relationship' => :'remitterBeneficiaryRelationship',
        :'routing_code_type1' => :'routingCodeType1',
        :'routing_code_type2' => :'routingCodeType2',
        :'routing_code_value1' => :'routingCodeValue1',
        :'routing_code_value2' => :'routingCodeValue2'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'authentication_code' => :'String',
        :'auto_sweep_payout_account' => :'Boolean',
        :'beneficiary_account_number' => :'String',
        :'beneficiary_account_type' => :'String',
        :'beneficiary_address' => :'String',
        :'beneficiary_alias' => :'String',
        :'beneficiary_bank_account_type' => :'String',
        :'beneficiary_bank_code' => :'String',
        :'beneficiary_bank_name' => :'String',
        :'beneficiary_card_expiry_date' => :'String',
        :'beneficiary_card_issuer_name' => :'String',
        :'beneficiary_city' => :'String',
        :'beneficiary_contact_country_code' => :'String',
        :'beneficiary_contact_name' => :'String',
        :'beneficiary_contact_number' => :'String',
        :'beneficiary_country_code' => :'String',
        :'beneficiary_dob' => :'String',
        :'beneficiary_email' => :'String',
        :'beneficiary_entity_type' => :'String',
        :'beneficiary_establishment_date' => :'String',
        :'beneficiary_identification_type' => :'String',
        :'beneficiary_identification_value' => :'String',
        :'beneficiary_name' => :'String',
        :'beneficiary_postcode' => :'String',
        :'beneficiary_state' => :'String',
        :'default_auto_sweep_payout_account' => :'Boolean',
        :'destination_country' => :'String',
        :'destination_currency' => :'String',
        :'encrypted_beneficiary_card_token' => :'String',
        :'payout_method' => :'String',
        :'proxy_type' => :'String',
        :'proxy_value' => :'String',
        :'remitter_beneficiary_relationship' => :'String',
        :'routing_code_type1' => :'String',
        :'routing_code_type2' => :'String',
        :'routing_code_value1' => :'String',
        :'routing_code_value2' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::AddBeneficiaryRequestDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::AddBeneficiaryRequestDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'authentication_code')
        self.authentication_code = attributes[:'authentication_code']
      end

      if attributes.key?(:'auto_sweep_payout_account')
        self.auto_sweep_payout_account = attributes[:'auto_sweep_payout_account']
      end

      if attributes.key?(:'beneficiary_account_number')
        self.beneficiary_account_number = attributes[:'beneficiary_account_number']
      end

      if attributes.key?(:'beneficiary_account_type')
        self.beneficiary_account_type = attributes[:'beneficiary_account_type']
      else
        self.beneficiary_account_type = nil
      end

      if attributes.key?(:'beneficiary_address')
        self.beneficiary_address = attributes[:'beneficiary_address']
      end

      if attributes.key?(:'beneficiary_alias')
        self.beneficiary_alias = attributes[:'beneficiary_alias']
      end

      if attributes.key?(:'beneficiary_bank_account_type')
        self.beneficiary_bank_account_type = attributes[:'beneficiary_bank_account_type']
      end

      if attributes.key?(:'beneficiary_bank_code')
        self.beneficiary_bank_code = attributes[:'beneficiary_bank_code']
      end

      if attributes.key?(:'beneficiary_bank_name')
        self.beneficiary_bank_name = attributes[:'beneficiary_bank_name']
      end

      if attributes.key?(:'beneficiary_card_expiry_date')
        self.beneficiary_card_expiry_date = attributes[:'beneficiary_card_expiry_date']
      end

      if attributes.key?(:'beneficiary_card_issuer_name')
        self.beneficiary_card_issuer_name = attributes[:'beneficiary_card_issuer_name']
      end

      if attributes.key?(:'beneficiary_city')
        self.beneficiary_city = attributes[:'beneficiary_city']
      end

      if attributes.key?(:'beneficiary_contact_country_code')
        self.beneficiary_contact_country_code = attributes[:'beneficiary_contact_country_code']
      end

      if attributes.key?(:'beneficiary_contact_name')
        self.beneficiary_contact_name = attributes[:'beneficiary_contact_name']
      end

      if attributes.key?(:'beneficiary_contact_number')
        self.beneficiary_contact_number = attributes[:'beneficiary_contact_number']
      end

      if attributes.key?(:'beneficiary_country_code')
        self.beneficiary_country_code = attributes[:'beneficiary_country_code']
      else
        self.beneficiary_country_code = nil
      end

      if attributes.key?(:'beneficiary_dob')
        self.beneficiary_dob = attributes[:'beneficiary_dob']
      end

      if attributes.key?(:'beneficiary_email')
        self.beneficiary_email = attributes[:'beneficiary_email']
      end

      if attributes.key?(:'beneficiary_entity_type')
        self.beneficiary_entity_type = attributes[:'beneficiary_entity_type']
      end

      if attributes.key?(:'beneficiary_establishment_date')
        self.beneficiary_establishment_date = attributes[:'beneficiary_establishment_date']
      end

      if attributes.key?(:'beneficiary_identification_type')
        self.beneficiary_identification_type = attributes[:'beneficiary_identification_type']
      end

      if attributes.key?(:'beneficiary_identification_value')
        self.beneficiary_identification_value = attributes[:'beneficiary_identification_value']
      end

      if attributes.key?(:'beneficiary_name')
        self.beneficiary_name = attributes[:'beneficiary_name']
      else
        self.beneficiary_name = nil
      end

      if attributes.key?(:'beneficiary_postcode')
        self.beneficiary_postcode = attributes[:'beneficiary_postcode']
      end

      if attributes.key?(:'beneficiary_state')
        self.beneficiary_state = attributes[:'beneficiary_state']
      end

      if attributes.key?(:'default_auto_sweep_payout_account')
        self.default_auto_sweep_payout_account = attributes[:'default_auto_sweep_payout_account']
      end

      if attributes.key?(:'destination_country')
        self.destination_country = attributes[:'destination_country']
      end

      if attributes.key?(:'destination_currency')
        self.destination_currency = attributes[:'destination_currency']
      else
        self.destination_currency = nil
      end

      if attributes.key?(:'encrypted_beneficiary_card_token')
        self.encrypted_beneficiary_card_token = attributes[:'encrypted_beneficiary_card_token']
      end

      if attributes.key?(:'payout_method')
        self.payout_method = attributes[:'payout_method']
      else
        self.payout_method = nil
      end

      if attributes.key?(:'proxy_type')
        self.proxy_type = attributes[:'proxy_type']
      end

      if attributes.key?(:'proxy_value')
        self.proxy_value = attributes[:'proxy_value']
      end

      if attributes.key?(:'remitter_beneficiary_relationship')
        self.remitter_beneficiary_relationship = attributes[:'remitter_beneficiary_relationship']
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
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @beneficiary_account_type.nil?
        invalid_properties.push('invalid value for "beneficiary_account_type", beneficiary_account_type cannot be nil.')
      end

      if @beneficiary_country_code.nil?
        invalid_properties.push('invalid value for "beneficiary_country_code", beneficiary_country_code cannot be nil.')
      end

      if @beneficiary_name.nil?
        invalid_properties.push('invalid value for "beneficiary_name", beneficiary_name cannot be nil.')
      end

      if @destination_currency.nil?
        invalid_properties.push('invalid value for "destination_currency", destination_currency cannot be nil.')
      end

      if @payout_method.nil?
        invalid_properties.push('invalid value for "payout_method", payout_method cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @beneficiary_account_type.nil?
      return false if @beneficiary_country_code.nil?
      return false if @beneficiary_name.nil?
      return false if @destination_currency.nil?
      return false if @payout_method.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          authentication_code == o.authentication_code &&
          auto_sweep_payout_account == o.auto_sweep_payout_account &&
          beneficiary_account_number == o.beneficiary_account_number &&
          beneficiary_account_type == o.beneficiary_account_type &&
          beneficiary_address == o.beneficiary_address &&
          beneficiary_alias == o.beneficiary_alias &&
          beneficiary_bank_account_type == o.beneficiary_bank_account_type &&
          beneficiary_bank_code == o.beneficiary_bank_code &&
          beneficiary_bank_name == o.beneficiary_bank_name &&
          beneficiary_card_expiry_date == o.beneficiary_card_expiry_date &&
          beneficiary_card_issuer_name == o.beneficiary_card_issuer_name &&
          beneficiary_city == o.beneficiary_city &&
          beneficiary_contact_country_code == o.beneficiary_contact_country_code &&
          beneficiary_contact_name == o.beneficiary_contact_name &&
          beneficiary_contact_number == o.beneficiary_contact_number &&
          beneficiary_country_code == o.beneficiary_country_code &&
          beneficiary_dob == o.beneficiary_dob &&
          beneficiary_email == o.beneficiary_email &&
          beneficiary_entity_type == o.beneficiary_entity_type &&
          beneficiary_establishment_date == o.beneficiary_establishment_date &&
          beneficiary_identification_type == o.beneficiary_identification_type &&
          beneficiary_identification_value == o.beneficiary_identification_value &&
          beneficiary_name == o.beneficiary_name &&
          beneficiary_postcode == o.beneficiary_postcode &&
          beneficiary_state == o.beneficiary_state &&
          default_auto_sweep_payout_account == o.default_auto_sweep_payout_account &&
          destination_country == o.destination_country &&
          destination_currency == o.destination_currency &&
          encrypted_beneficiary_card_token == o.encrypted_beneficiary_card_token &&
          payout_method == o.payout_method &&
          proxy_type == o.proxy_type &&
          proxy_value == o.proxy_value &&
          remitter_beneficiary_relationship == o.remitter_beneficiary_relationship &&
          routing_code_type1 == o.routing_code_type1 &&
          routing_code_type2 == o.routing_code_type2 &&
          routing_code_value1 == o.routing_code_value1 &&
          routing_code_value2 == o.routing_code_value2
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [authentication_code, auto_sweep_payout_account, beneficiary_account_number, beneficiary_account_type, beneficiary_address, beneficiary_alias, beneficiary_bank_account_type, beneficiary_bank_code, beneficiary_bank_name, beneficiary_card_expiry_date, beneficiary_card_issuer_name, beneficiary_city, beneficiary_contact_country_code, beneficiary_contact_name, beneficiary_contact_number, beneficiary_country_code, beneficiary_dob, beneficiary_email, beneficiary_entity_type, beneficiary_establishment_date, beneficiary_identification_type, beneficiary_identification_value, beneficiary_name, beneficiary_postcode, beneficiary_state, default_auto_sweep_payout_account, destination_country, destination_currency, encrypted_beneficiary_card_token, payout_method, proxy_type, proxy_value, remitter_beneficiary_relationship, routing_code_type1, routing_code_type2, routing_code_value1, routing_code_value2].hash
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