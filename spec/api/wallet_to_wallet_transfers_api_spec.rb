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

# Unit tests for NiumClient::WalletToWalletTransfersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WalletToWalletTransfersApi' do
  before do
    # run before each test
    @api_instance = NiumClient::WalletToWalletTransfersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WalletToWalletTransfersApi' do
    it 'should create an instance of WalletToWalletTransfersApi' do
      expect(@api_instance).to be_instance_of(NiumClient::WalletToWalletTransfersApi)
    end
  end

  # unit tests for p2_p_transfer
  # P2P Transfer
  # This API allows you to transfer money from one wallet to another wallet within the same client family.   &gt;⚠️ WARNING   &gt;This API version is deprecated. Eventually, a deprecated API version becomes unsupported. Use the [Wallet To Wallet Transfer](ref:wallettransfer) API to achieve the same functionality.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param wallet_hash_id Unique wallet identifier generated simultaneously with customer creation.
  # @param p2_p_transfer_dto p2pTransferDTO
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [P2PTransferResponse]
  describe 'p2_p_transfer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for wallet_transfer
  # Wallet to Wallet Transfer
  # This API allows you to transfer the money from one wallet to another wallet for customers belonging to different client.
  # @param client_hash_id Unique client identifier generated and shared before API handshake.
  # @param customer_hash_id Unique customer identifier generated on customer creation.
  # @param wallet_hash_id Unique source wallet identifier generated simultaneously with customer creation.
  # @param fund_transfer_request_dto fundTransferRequestDTO
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_request_id Enter a unique UUID value
  # @return [FundTransferResponse]
  describe 'wallet_transfer test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
