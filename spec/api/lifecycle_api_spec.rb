=begin
#NIUM Platform

#NIUM Platform

The version of the OpenAPI document: 2023.12.12
Contact: experience@nium.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NiumClient::LifecycleApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LifecycleApi' do
  before do
    # run before each test
    @api_instance = NiumClient::LifecycleApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LifecycleApi' do
    it 'should create an instance of LifecycleApi' do
      expect(@api_instance).to be_instance_of(NiumClient::LifecycleApi)
    end
  end

  # unit tests for activate_card
  # Activate Card V2
  # This API allows you to activate a card after delivery to the customer.
  # @param client_hash_id The unique client identifier generated and shared before the API handshake.
  # @param customer_hash_id The unique customer identifier generated on customer creation.
  # @param wallet_hash_id The unique wallet identifier generated simultaneously with customer creation.
  # @param card_hash_id The unique card identifier generated while new/add-on card issuance.
  # @param activate_card_request_v2_dto Activate card request
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [ActivateCardResponseV2DTO]
  describe 'activate_card test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for activate_card1
  # Activate Card
  # This API allows you to activate a card after delivery to a customer.
  # @param client_hash_id The unique client identifier generated and shared before the API handshake.
  # @param customer_hash_id The unique customer identifier generated on customer creation.
  # @param wallet_hash_id The unique wallet identifier generated simultaneously with customer creation.
  # @param card_hash_id The unique card identifier generated while new/add-on card issuance.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [ActivateCardResponseDTO]
  describe 'activate_card1 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for add_card
  # Add Card
  # This API allows you to issue a card for a customer.   &gt;⚠️ WARNING   &gt;This API version is deprecated. Eventually, a deprecated API version becomes unsupported. [Add Card V2](ref:addcardv2) is the latest version of this API.
  # @param client_hash_id The unique client identifier generated and shared before the API handshake.
  # @param customer_hash_id The unique customer identifier generated on customer creation.
  # @param wallet_hash_id The unique wallet identifier generated simultaneously with customer creation.
  # @param add_card_request addCardRequest
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [AddCardResponseDTO]
  describe 'add_card test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for add_card_v2
  # Add Card V2
  # This API allows you to issue a card for a customer.
  # @param client_hash_id The unique client identifier generated and shared before the API handshake.
  # @param customer_hash_id The unique customer identifier generated on customer creation.
  # @param wallet_hash_id The unique wallet identifier generated simultaneously with customer creation.
  # @param add_card_v2_request The request body to add a new card.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [AddCardV2ResponseDTO]
  describe 'add_card_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for assign_card
  # Assign Card
  # This API is used to assign a card to a customer. In this use case, the client has an unassigned card with him/her. The client hands over the card to the customer and assigns it to him/her.
  # @param client_hash_id The unique client identifier generated and shared before the API handshake.
  # @param customer_hash_id The unique customer identifier generated on customer creation.
  # @param wallet_hash_id The unique wallet identifier generated simultaneously with customer creation.
  # @param assign_card_dto assignCardDTO
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [CardAssignResponseDTO]
  describe 'assign_card test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for block_and_replace_card_v2
  # Block and Replace Card
  # Use this API to block and replace a card.
  # @param client_hash_id The unique client identifier generated and shared before the API handshake.
  # @param customer_hash_id The unique customer identifier generated on customer creation.
  # @param wallet_hash_id The unique wallet identifier generated simultaneously with customer creation.
  # @param card_hash_id The unique card identifier generated while new/add-on card issuance.
  # @param block_and_replace_card_request_dto A card can be blocked and replaced using the Block And Replace Card API.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [BlockAndReplaceCardResponseDTO]
  describe 'block_and_replace_card_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for block_unblock_cards
  # Block/Unblock Cards
  # This API helps you perform the following operations: Permanent block card Temporary block card Unblock card.  &gt;⚠️ WARNING   &gt;This API version is deprecated. Eventually, a deprecated API version becomes unsupported. For a temporary lock and unlock, [Lock/Unlock Card API](ref:lockunlockcardv2) is the latest version of this API. For a permanent block and replacing the card, [Block and Replace API](ref:blockandreplacecardv2) is the latest version of this API.
  # @param client_hash_id The unique client identifier generated and shared before the API handshake.
  # @param customer_hash_id The unique customer identifier generated on customer creation.
  # @param wallet_hash_id The unique wallet identifier generated simultaneously with customer creation.
  # @param card_hash_id The unique card identifier generated while new/add-on card issuance.
  # @param block_code_dto blockCode
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [BlockCodeCardResponseDTO]
  describe 'block_unblock_cards test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for card_details
  # Card Details
  # This API allows you to fetch the card details of a particular card.  &gt;⚠️ WARNING   &gt;This API version is deprecated. Eventually, a deprecated API version becomes unsupported. [Card Details V2](ref:carddetailsv2) is the latest version of this API.
  # @param client_hash_id The unique client identifier generated and shared before the API handshake.
  # @param customer_hash_id The unique customer identifier generated on customer creation.
  # @param wallet_hash_id The unique wallet identifier generated simultaneously with customer creation.
  # @param card_hash_id The unique card identifier generated while new/add-on card issuance.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [CardResponseDTO]
  describe 'card_details test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for card_details_v2
  # Card Details V2
  # This API allows you to get details about a card.
  # @param client_hash_id The unique client identifier generated and shared before the API handshake.
  # @param customer_hash_id The unique customer identifier generated on customer creation.
  # @param wallet_hash_id The unique wallet identifier generated simultaneously with customer creation.
  # @param card_hash_id The unique card identifier generated while new/add-on card issuance.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [CardDetails]
  describe 'card_details_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for card_list
  # Card List
  # This API will return all the cards issued, for a given wallet.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param wallet_hash_id Unique wallet identifier generated simultaneously with customer creation.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [Hash<String, Object>]
  describe 'card_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for card_list_v2
  # Card List V2
  # This API returns all the cards issued for a given customer wallet.
  # @param client_hash_id The unique client identifier generated and shared before the API handshake.
  # @param customer_hash_id The unique customer identifier generated on customer creation.
  # @param wallet_hash_id The unique wallet identifier generated simultaneously with customer creation.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :child_customer_hash_id This field refers to a unique identifier, known as the customerHashId, assigned to an individual customer who is associated with a corporate customer at the parent level. This identifier distinguishes and tracks the child-level customer within a given client&#39;s program. By utilizing this identifier, it becomes possible to establish and maintain the appropriate linkage between the child customer and their parent corporate customer, ensuring accurate association and management of customer data.
  # @option opts [Integer] :page This field accepts the page number to be returned. The acceptable values are 0-N.  This field works with size field such that total number of records/size of each page &#x3D; number of pages(N).  This field can then give a particular page.
  # @option opts [Integer] :size This field accepts the number of elements per page.
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [PageResponseCardDetails]
  describe 'card_list_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_card_widget
  # Get Card Details Widget
  # Use this API to fetch card widget url and token for Non-PCI DSS compliant Clients
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param wallet_hash_id Unique wallet identifier generated simultaneously with customer creation.
  # @param card_hash_id Unique card identifier generated while new/add-on card issuance.
  # @param card_widget_token_request_dto 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [CardWidgetTokenResponse]
  describe 'get_card_widget test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for issue_replacement_card
  # Issue Replacement Card
  # Use this API for issuing a card replacement.  &gt;⚠️ WARNING   &gt;This API version is deprecated. Eventually, a deprecated API version becomes unsupported. For a permanent block and replacing the card, [Block and Replace API](ref:blockandreplacecardv2) is the latest version of this API.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param wallet_hash_id Unique wallet identifier generated simultaneously with customer creation.
  # @param card_hash_id Unique card identifier generated while new/add-on card issuance.
  # @param replace_card_request A card can be replaced using the Replace Card API only if it is permanently blocked. A permanently blocked card cannot be replaced on the same date as date of issuance. For example, a customer issued a card today and request to block the card permanently, on the same day. However, a customer may not call the Replace Card API to issue a replacement on the same date.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [AddCardResponseDTO]
  describe 'issue_replacement_card test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for lock_unlock_card_v2
  # Lock/Unlock Cards
  # This API allows you to temporarily lock or unlock a card.
  # @param client_hash_id The unique client identifier generated and shared before the API handshake.
  # @param customer_hash_id The unique customer identifier generated on customer creation.
  # @param wallet_hash_id The unique wallet identifier generated simultaneously with customer creation.
  # @param card_hash_id The unique card identifier generated while new/add-on card issuance.
  # @param lock_status_update_request_dto lockStatusUpdateRequestDTO
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [LockStatusUpdateResponseDTO]
  describe 'lock_unlock_card_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for renew_card
  # Renew Card
  # Use this API for card renewal.
  # @param client_hash_id The unique client identifier generated and shared before the API handshake.
  # @param customer_hash_id The unique customer identifier generated on customer creation.
  # @param wallet_hash_id The unique wallet identifier generated simultaneously with customer creation.
  # @param card_hash_id The unique card identifier generated while new/add-on card issuance.
  # @param renew_card_request A card can be renewed using the Renew Card API on or before 45 days from the expiration date.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [String]
  describe 'renew_card test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_card_details_v2
  # Update Card Details V2
  # This API allows you to update the contact information of the cardholder.
  # @param client_hash_id clientHashId
  # @param customer_hash_id customerHashId
  # @param wallet_hash_id walletHashId
  # @param card_hash_id cardHashId
  # @param update_contact_info_request_dto updateContactInfoRequestDTO
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value.
  # @return [ApiResponse2]
  describe 'update_card_details_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end