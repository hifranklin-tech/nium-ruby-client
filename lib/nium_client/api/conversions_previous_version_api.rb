=begin
#NIUM Platform

#NIUM Platform

The version of the OpenAPI document: 2023.12.12
Contact: experience@nium.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'cgi'

module NiumClient
  class ConversionsPreviousVersionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Balance Transfer within Wallet
    # This API allows you to transfer the balance from one currency to another within the same customer wallet.
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param wallet_hash_id [String] Unique wallet identifier generated simultaneously with customer creation.
    # @param wallet_transfer_dto [WalletTransferDto] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [WalletTransferResponseDto]
    def balance_transferwithin_wallet(client_hash_id, customer_hash_id, wallet_hash_id, wallet_transfer_dto, opts = {})
      data, _status_code, _headers = balance_transferwithin_wallet_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, wallet_transfer_dto, opts)
      data
    end

    # Balance Transfer within Wallet
    # This API allows you to transfer the balance from one currency to another within the same customer wallet.
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param wallet_hash_id [String] Unique wallet identifier generated simultaneously with customer creation.
    # @param wallet_transfer_dto [WalletTransferDto] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<(WalletTransferResponseDto, Integer, Hash)>] WalletTransferResponseDto data, response status code and response headers
    def balance_transferwithin_wallet_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, wallet_transfer_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConversionsPreviousVersionApi.balance_transferwithin_wallet ...'
      end
      # verify the required parameter 'client_hash_id' is set
      if @api_client.config.client_side_validation && client_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_hash_id' when calling ConversionsPreviousVersionApi.balance_transferwithin_wallet"
      end
      # verify the required parameter 'customer_hash_id' is set
      if @api_client.config.client_side_validation && customer_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_hash_id' when calling ConversionsPreviousVersionApi.balance_transferwithin_wallet"
      end
      # verify the required parameter 'wallet_hash_id' is set
      if @api_client.config.client_side_validation && wallet_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_hash_id' when calling ConversionsPreviousVersionApi.balance_transferwithin_wallet"
      end
      # verify the required parameter 'wallet_transfer_dto' is set
      if @api_client.config.client_side_validation && wallet_transfer_dto.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_transfer_dto' when calling ConversionsPreviousVersionApi.balance_transferwithin_wallet"
      end
      # resource path
      local_var_path = '/api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/transfer'.sub('{' + 'clientHashId' + '}', CGI.escape(client_hash_id.to_s)).sub('{' + 'customerHashId' + '}', CGI.escape(customer_hash_id.to_s)).sub('{' + 'walletHashId' + '}', CGI.escape(wallet_hash_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'x-request-id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(wallet_transfer_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'WalletTransferResponseDto'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"ConversionsPreviousVersionApi.balance_transferwithin_wallet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversionsPreviousVersionApi#balance_transferwithin_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
