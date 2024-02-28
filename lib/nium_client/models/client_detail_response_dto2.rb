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
  class ClientDetailResponseDTO2
    # This is applicable to RHA clients. This field will ensure whether the account-validation transactions are forwarded to client or not
    attr_accessor :account_validation

    # This field indicates if inter client wallet transfer is enabled.
    attr_accessor :allow_inter_client_wallet_transfer

    # This field specifies if third party funding is allowed or not.
    attr_accessor :allow_third_party_funding

    # This field contains the flag for apple pay support.
    attr_accessor :apple_pay_support

    attr_accessor :auto_sweep_bank_details

    # This field indicates whether an individual customer at the child level should have the same billing address as the business address of the corporate customer at the parent level.
    attr_accessor :billing_address_as_corporate

    # This field specifies the default transaction narrative.
    attr_accessor :card_txn_narrative

    # This field specifies the internal card transaction product code.
    attr_accessor :card_txn_product_code

    # This field contains the card transaction redirected URL.
    attr_accessor :card_txn_redirect_url

    # This field indicates whether an individual customer must be treated as a child card and be associated with a corporate customer at the parent level.
    attr_accessor :child_must_have_parent

    # This field contains the unique client identifier generated and shared before API handshake.
    attr_accessor :client_hash_id

    # This field shall be deprecated in future.
    attr_accessor :client_id_number

    # This field specifies the compliance callback URL.
    attr_accessor :compliance_callback_url

    # This field contains the redirection URL for compliance callback.
    attr_accessor :compliance_status_callback_url

    # This field indicates whether Confirmation of Payee is allowed or not.
    attr_accessor :confirmation_of_payee

    # This field contains the client's contact number.
    attr_accessor :contact_no

    # This field contains the 3-letter ISO-4217 currency code.
    attr_accessor :country_code

    # This is an array objects which holds currency details.
    attr_accessor :currencies

    # This field denotes the authorization type of a client. The valid values are SINGLE, DUAL, MULTI, and AUTO_SWEEP.
    attr_accessor :currency_authorization_type

    # This field contains the client preference to levy custom fee.
    attr_accessor :custom_fee_enabled

    # This field contains the customer authorization URL.
    attr_accessor :customer_auth_url

    # This field contains the mobile/email uniqueness flag.
    attr_accessor :deduplication_flag

    attr_accessor :ekyc_redirect_url

    # This field contains the client's email Id.
    attr_accessor :email

    # This field is used to define whether the customer is allowed to fund their wallet or not. If yes that is not RESTRICTED, then either using DEBIT CARD or both DEBIT and CREDIT cards.
    attr_accessor :funding_instrument_type

    # This field contains the flag for google pay support.
    attr_accessor :google_pay_support

    # This field contains the license ownership for a client.The possible values are:
    attr_accessor :license_entity

    # This field contains the client's logo URL.
    attr_accessor :logo_url

    # This field contains the cross currency transaction markup value.
    attr_accessor :markup

    # This field contains the minimum customer age which should be 18 years. Discuss with your NIUM account manager for any special use-cases.
    attr_accessor :minimum_customer_age

    # This field contains the name of a client.
    attr_accessor :name

    # This field contains the Webhook notification redirection URL.
    attr_accessor :notification_webhook

    # This is an array object which holds the client payment Id response details.
    attr_accessor :payment_ids

    # This field contains the Post Funded Payout of the client.
    attr_accessor :post_funded_payout

    # This field contains the name defined for ICC transactions
    attr_accessor :prefund_name

    # This field contains the regulatory region of the client.
    attr_accessor :regulatory_region

    # This field contains the flag for samsung pay support.
    attr_accessor :samsung_pay_support

    # This is an array object which holds the remitter accounts which are whitelisted for the client.
    attr_accessor :whitelisted_remitter_accounts

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
        :'account_validation' => :'accountValidation',
        :'allow_inter_client_wallet_transfer' => :'allowInterClientWalletTransfer',
        :'allow_third_party_funding' => :'allowThirdPartyFunding',
        :'apple_pay_support' => :'applePaySupport',
        :'auto_sweep_bank_details' => :'autoSweepBankDetails',
        :'billing_address_as_corporate' => :'billingAddressAsCorporate',
        :'card_txn_narrative' => :'cardTxnNarrative',
        :'card_txn_product_code' => :'cardTxnProductCode',
        :'card_txn_redirect_url' => :'cardTxnRedirectUrl',
        :'child_must_have_parent' => :'childMustHaveParent',
        :'client_hash_id' => :'clientHashId',
        :'client_id_number' => :'clientIdNumber',
        :'compliance_callback_url' => :'complianceCallbackUrl',
        :'compliance_status_callback_url' => :'complianceStatusCallbackUrl',
        :'confirmation_of_payee' => :'confirmationOfPayee',
        :'contact_no' => :'contactNo',
        :'country_code' => :'countryCode',
        :'currencies' => :'currencies',
        :'currency_authorization_type' => :'currencyAuthorizationType',
        :'custom_fee_enabled' => :'customFeeEnabled',
        :'customer_auth_url' => :'customerAuthUrl',
        :'deduplication_flag' => :'deduplicationFlag',
        :'ekyc_redirect_url' => :'ekycRedirectUrl',
        :'email' => :'email',
        :'funding_instrument_type' => :'fundingInstrumentType',
        :'google_pay_support' => :'googlePaySupport',
        :'license_entity' => :'licenseEntity',
        :'logo_url' => :'logoUrl',
        :'markup' => :'markup',
        :'minimum_customer_age' => :'minimumCustomerAge',
        :'name' => :'name',
        :'notification_webhook' => :'notificationWebhook',
        :'payment_ids' => :'paymentIds',
        :'post_funded_payout' => :'postFundedPayout',
        :'prefund_name' => :'prefundName',
        :'regulatory_region' => :'regulatoryRegion',
        :'samsung_pay_support' => :'samsungPaySupport',
        :'whitelisted_remitter_accounts' => :'whitelistedRemitterAccounts'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_validation' => :'Boolean',
        :'allow_inter_client_wallet_transfer' => :'Boolean',
        :'allow_third_party_funding' => :'Boolean',
        :'apple_pay_support' => :'Boolean',
        :'auto_sweep_bank_details' => :'AutoSweepBankDetails',
        :'billing_address_as_corporate' => :'Boolean',
        :'card_txn_narrative' => :'String',
        :'card_txn_product_code' => :'String',
        :'card_txn_redirect_url' => :'String',
        :'child_must_have_parent' => :'Boolean',
        :'client_hash_id' => :'String',
        :'client_id_number' => :'String',
        :'compliance_callback_url' => :'String',
        :'compliance_status_callback_url' => :'String',
        :'confirmation_of_payee' => :'Boolean',
        :'contact_no' => :'String',
        :'country_code' => :'String',
        :'currencies' => :'Array<ClientCurrencyResponseDTO>',
        :'currency_authorization_type' => :'String',
        :'custom_fee_enabled' => :'Boolean',
        :'customer_auth_url' => :'String',
        :'deduplication_flag' => :'Boolean',
        :'ekyc_redirect_url' => :'String',
        :'email' => :'String',
        :'funding_instrument_type' => :'String',
        :'google_pay_support' => :'Boolean',
        :'license_entity' => :'String',
        :'logo_url' => :'String',
        :'markup' => :'Float',
        :'minimum_customer_age' => :'Integer',
        :'name' => :'String',
        :'notification_webhook' => :'String',
        :'payment_ids' => :'Array<PaymentIdsDTO>',
        :'post_funded_payout' => :'Boolean',
        :'prefund_name' => :'String',
        :'regulatory_region' => :'String',
        :'samsung_pay_support' => :'Boolean',
        :'whitelisted_remitter_accounts' => :'Array<RemitterAccountWhiteList>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NiumClient::ClientDetailResponseDTO2` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NiumClient::ClientDetailResponseDTO2`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_validation')
        self.account_validation = attributes[:'account_validation']
      end

      if attributes.key?(:'allow_inter_client_wallet_transfer')
        self.allow_inter_client_wallet_transfer = attributes[:'allow_inter_client_wallet_transfer']
      end

      if attributes.key?(:'allow_third_party_funding')
        self.allow_third_party_funding = attributes[:'allow_third_party_funding']
      end

      if attributes.key?(:'apple_pay_support')
        self.apple_pay_support = attributes[:'apple_pay_support']
      end

      if attributes.key?(:'auto_sweep_bank_details')
        self.auto_sweep_bank_details = attributes[:'auto_sweep_bank_details']
      end

      if attributes.key?(:'billing_address_as_corporate')
        self.billing_address_as_corporate = attributes[:'billing_address_as_corporate']
      end

      if attributes.key?(:'card_txn_narrative')
        self.card_txn_narrative = attributes[:'card_txn_narrative']
      end

      if attributes.key?(:'card_txn_product_code')
        self.card_txn_product_code = attributes[:'card_txn_product_code']
      end

      if attributes.key?(:'card_txn_redirect_url')
        self.card_txn_redirect_url = attributes[:'card_txn_redirect_url']
      end

      if attributes.key?(:'child_must_have_parent')
        self.child_must_have_parent = attributes[:'child_must_have_parent']
      end

      if attributes.key?(:'client_hash_id')
        self.client_hash_id = attributes[:'client_hash_id']
      end

      if attributes.key?(:'client_id_number')
        self.client_id_number = attributes[:'client_id_number']
      end

      if attributes.key?(:'compliance_callback_url')
        self.compliance_callback_url = attributes[:'compliance_callback_url']
      end

      if attributes.key?(:'compliance_status_callback_url')
        self.compliance_status_callback_url = attributes[:'compliance_status_callback_url']
      end

      if attributes.key?(:'confirmation_of_payee')
        self.confirmation_of_payee = attributes[:'confirmation_of_payee']
      end

      if attributes.key?(:'contact_no')
        self.contact_no = attributes[:'contact_no']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'currencies')
        if (value = attributes[:'currencies']).is_a?(Array)
          self.currencies = value
        end
      end

      if attributes.key?(:'currency_authorization_type')
        self.currency_authorization_type = attributes[:'currency_authorization_type']
      end

      if attributes.key?(:'custom_fee_enabled')
        self.custom_fee_enabled = attributes[:'custom_fee_enabled']
      end

      if attributes.key?(:'customer_auth_url')
        self.customer_auth_url = attributes[:'customer_auth_url']
      end

      if attributes.key?(:'deduplication_flag')
        self.deduplication_flag = attributes[:'deduplication_flag']
      end

      if attributes.key?(:'ekyc_redirect_url')
        self.ekyc_redirect_url = attributes[:'ekyc_redirect_url']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'funding_instrument_type')
        self.funding_instrument_type = attributes[:'funding_instrument_type']
      end

      if attributes.key?(:'google_pay_support')
        self.google_pay_support = attributes[:'google_pay_support']
      end

      if attributes.key?(:'license_entity')
        self.license_entity = attributes[:'license_entity']
      end

      if attributes.key?(:'logo_url')
        self.logo_url = attributes[:'logo_url']
      end

      if attributes.key?(:'markup')
        self.markup = attributes[:'markup']
      end

      if attributes.key?(:'minimum_customer_age')
        self.minimum_customer_age = attributes[:'minimum_customer_age']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'notification_webhook')
        self.notification_webhook = attributes[:'notification_webhook']
      end

      if attributes.key?(:'payment_ids')
        if (value = attributes[:'payment_ids']).is_a?(Array)
          self.payment_ids = value
        end
      end

      if attributes.key?(:'post_funded_payout')
        self.post_funded_payout = attributes[:'post_funded_payout']
      end

      if attributes.key?(:'prefund_name')
        self.prefund_name = attributes[:'prefund_name']
      end

      if attributes.key?(:'regulatory_region')
        self.regulatory_region = attributes[:'regulatory_region']
      end

      if attributes.key?(:'samsung_pay_support')
        self.samsung_pay_support = attributes[:'samsung_pay_support']
      end

      if attributes.key?(:'whitelisted_remitter_accounts')
        if (value = attributes[:'whitelisted_remitter_accounts']).is_a?(Array)
          self.whitelisted_remitter_accounts = value
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
      currency_authorization_type_validator = EnumAttributeValidator.new('String', ["SINGLE", "DUAL", "MULTI", "AUTO_SWEEP"])
      return false unless currency_authorization_type_validator.valid?(@currency_authorization_type)
      funding_instrument_type_validator = EnumAttributeValidator.new('String', ["RESTRICTED", "ONLY_DEBIT", "CREDIT_AND_DEBIT"])
      return false unless funding_instrument_type_validator.valid?(@funding_instrument_type)
      license_entity_validator = EnumAttributeValidator.new('String', ["NIUM", "THIRD_PARTY"])
      return false unless license_entity_validator.valid?(@license_entity)
      regulatory_region_validator = EnumAttributeValidator.new('String', ["SG", "EU", "AU", "HK", "UK", "US", "CA"])
      return false unless regulatory_region_validator.valid?(@regulatory_region)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency_authorization_type Object to be assigned
    def currency_authorization_type=(currency_authorization_type)
      validator = EnumAttributeValidator.new('String', ["SINGLE", "DUAL", "MULTI", "AUTO_SWEEP"])
      unless validator.valid?(currency_authorization_type)
        fail ArgumentError, "invalid value for \"currency_authorization_type\", must be one of #{validator.allowable_values}."
      end
      @currency_authorization_type = currency_authorization_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding_instrument_type Object to be assigned
    def funding_instrument_type=(funding_instrument_type)
      validator = EnumAttributeValidator.new('String', ["RESTRICTED", "ONLY_DEBIT", "CREDIT_AND_DEBIT"])
      unless validator.valid?(funding_instrument_type)
        fail ArgumentError, "invalid value for \"funding_instrument_type\", must be one of #{validator.allowable_values}."
      end
      @funding_instrument_type = funding_instrument_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] license_entity Object to be assigned
    def license_entity=(license_entity)
      validator = EnumAttributeValidator.new('String', ["NIUM", "THIRD_PARTY"])
      unless validator.valid?(license_entity)
        fail ArgumentError, "invalid value for \"license_entity\", must be one of #{validator.allowable_values}."
      end
      @license_entity = license_entity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] regulatory_region Object to be assigned
    def regulatory_region=(regulatory_region)
      validator = EnumAttributeValidator.new('String', ["SG", "EU", "AU", "HK", "UK", "US", "CA"])
      unless validator.valid?(regulatory_region)
        fail ArgumentError, "invalid value for \"regulatory_region\", must be one of #{validator.allowable_values}."
      end
      @regulatory_region = regulatory_region
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_validation == o.account_validation &&
          allow_inter_client_wallet_transfer == o.allow_inter_client_wallet_transfer &&
          allow_third_party_funding == o.allow_third_party_funding &&
          apple_pay_support == o.apple_pay_support &&
          auto_sweep_bank_details == o.auto_sweep_bank_details &&
          billing_address_as_corporate == o.billing_address_as_corporate &&
          card_txn_narrative == o.card_txn_narrative &&
          card_txn_product_code == o.card_txn_product_code &&
          card_txn_redirect_url == o.card_txn_redirect_url &&
          child_must_have_parent == o.child_must_have_parent &&
          client_hash_id == o.client_hash_id &&
          client_id_number == o.client_id_number &&
          compliance_callback_url == o.compliance_callback_url &&
          compliance_status_callback_url == o.compliance_status_callback_url &&
          confirmation_of_payee == o.confirmation_of_payee &&
          contact_no == o.contact_no &&
          country_code == o.country_code &&
          currencies == o.currencies &&
          currency_authorization_type == o.currency_authorization_type &&
          custom_fee_enabled == o.custom_fee_enabled &&
          customer_auth_url == o.customer_auth_url &&
          deduplication_flag == o.deduplication_flag &&
          ekyc_redirect_url == o.ekyc_redirect_url &&
          email == o.email &&
          funding_instrument_type == o.funding_instrument_type &&
          google_pay_support == o.google_pay_support &&
          license_entity == o.license_entity &&
          logo_url == o.logo_url &&
          markup == o.markup &&
          minimum_customer_age == o.minimum_customer_age &&
          name == o.name &&
          notification_webhook == o.notification_webhook &&
          payment_ids == o.payment_ids &&
          post_funded_payout == o.post_funded_payout &&
          prefund_name == o.prefund_name &&
          regulatory_region == o.regulatory_region &&
          samsung_pay_support == o.samsung_pay_support &&
          whitelisted_remitter_accounts == o.whitelisted_remitter_accounts
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_validation, allow_inter_client_wallet_transfer, allow_third_party_funding, apple_pay_support, auto_sweep_bank_details, billing_address_as_corporate, card_txn_narrative, card_txn_product_code, card_txn_redirect_url, child_must_have_parent, client_hash_id, client_id_number, compliance_callback_url, compliance_status_callback_url, confirmation_of_payee, contact_no, country_code, currencies, currency_authorization_type, custom_fee_enabled, customer_auth_url, deduplication_flag, ekyc_redirect_url, email, funding_instrument_type, google_pay_support, license_entity, logo_url, markup, minimum_customer_age, name, notification_webhook, payment_ids, post_funded_payout, prefund_name, regulatory_region, samsung_pay_support, whitelisted_remitter_accounts].hash
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
