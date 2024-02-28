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

# Unit tests for NiumClient::CustomerFundingApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CustomerFundingApi' do
  before do
    # run before each test
    @api_instance = NiumClient::CustomerFundingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomerFundingApi' do
    it 'should create an instance of CustomerFundingApi' do
      expect(@api_instance).to be_instance_of(NiumClient::CustomerFundingApi)
    end
  end

  # unit tests for add_funding_instrument
  # Add funding instrument
  # This API allows you to link account
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param wallet_hash_id Unique wallet identifier generated simultaneously with customer creation.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @option opts [CustomerLinkAccountRequest] :customer_link_account_request Add a new funding instrument
  # @return [LinkAccountResponse]
  describe 'add_funding_instrument test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for confirm_funding_instrument_id
  # Confirm funding instrument
  # This API allows you to confirm funding instrument id
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param funding_instrument_id This field is the unique 36-character funding instrument identifier. The id is a bank account identifier when the funding channel is direct debit.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @option opts [ConfirmFundingInstrumentRequestDTO] :confirm_funding_instrument_request_dto Confirm funding instrument
  # @return [AccountStatusResponse]
  describe 'confirm_funding_instrument_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_fundinginstrument
  # Delete Funding Instrument
  # This API allows you to delete a specific funding instrument based on the fundingInstrumentId.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param funding_instrument_id The unique 36-character alphanumeric identifier of a funding instrument.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [ApiResponseOfstring]
  describe 'delete_fundinginstrument test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for fund_wallet
  # Fund Wallet
  # This API allows you to top-up into the customer&#39;s wallet. Refer to the [Fund wallet user guide](/docs/fund-wallet) for details on usage instructions on this API.  &gt;ℹ️ INFO   &gt;**Guidelines for Fund Wallet.** &gt;1. Cards and direct_debit funding channels are restricted by default. Reach out to your Nium support specialist to enable this functionality. &gt;2. Source and destination should be in the same currency when funding channel is bank_transfer, cards, or direct_debit. &gt;3. No restriction on source or destination currency if funding channel is prefund. 
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param wallet_hash_id Unique wallet identifier generated simultaneously with customer creation.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @option opts [WalletFundDTO] :wallet_fund_dto Guidelines for Fund Wallet  1.cards as a funding channel is restricted by default. It may be enabled for a client on request. 2.Source and destination currencies should be same if funding channel is bankTransfer or cards 3.No restriction on source or destination currency if funding channel is prefund.  Fund Wallet with a Card  Customer onboarded and KYCed successfully [through Manual or eKYC flow] with e-KYC calls Fund Wallet API with funding channel as cards.
  # @return [WalletFundResponseDTO]
  describe 'fund_wallet test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_funding_instrument_details
  # Get Funding instrument details
  # Get Funding instrument details
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param funding_instrument_id Unique 36-character funding instrument identifier.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [AccountStatusResponse]
  describe 'get_funding_instrument_details test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_funding_instrument_list
  # Get Funding Instrument List
  # This API allows you to fetch the funding instruments that have been registered for a customer.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [Array<WalletFundingInstrumentsResponseDTO>]
  describe 'get_funding_instrument_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end