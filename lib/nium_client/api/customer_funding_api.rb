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
  class CustomerFundingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add funding instrument
    # This API allows you to link account
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param wallet_hash_id [String] Unique wallet identifier generated simultaneously with customer creation.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @option opts [CustomerLinkAccountRequest] :customer_link_account_request Add a new funding instrument
    # @return [LinkAccountResponse]
    def add_funding_instrument(client_hash_id, customer_hash_id, wallet_hash_id, opts = {})
      data, _status_code, _headers = add_funding_instrument_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)
      data
    end

    # Add funding instrument
    # This API allows you to link account
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param wallet_hash_id [String] Unique wallet identifier generated simultaneously with customer creation.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @option opts [CustomerLinkAccountRequest] :customer_link_account_request Add a new funding instrument
    # @return [Array<(LinkAccountResponse, Integer, Hash)>] LinkAccountResponse data, response status code and response headers
    def add_funding_instrument_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerFundingApi.add_funding_instrument ...'
      end
      # verify the required parameter 'client_hash_id' is set
      if @api_client.config.client_side_validation && client_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_hash_id' when calling CustomerFundingApi.add_funding_instrument"
      end
      # verify the required parameter 'customer_hash_id' is set
      if @api_client.config.client_side_validation && customer_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_hash_id' when calling CustomerFundingApi.add_funding_instrument"
      end
      # verify the required parameter 'wallet_hash_id' is set
      if @api_client.config.client_side_validation && wallet_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_hash_id' when calling CustomerFundingApi.add_funding_instrument"
      end
      # resource path
      local_var_path = '/api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/fundingInstruments'.sub('{' + 'clientHashId' + '}', CGI.escape(client_hash_id.to_s)).sub('{' + 'customerHashId' + '}', CGI.escape(customer_hash_id.to_s)).sub('{' + 'walletHashId' + '}', CGI.escape(wallet_hash_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'customer_link_account_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'LinkAccountResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"CustomerFundingApi.add_funding_instrument",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerFundingApi#add_funding_instrument\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Confirm funding instrument
    # This API allows you to confirm funding instrument id
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param funding_instrument_id [String] This field is the unique 36-character funding instrument identifier. The id is a bank account identifier when the funding channel is direct debit.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @option opts [ConfirmFundingInstrumentRequestDTO] :confirm_funding_instrument_request_dto Confirm funding instrument
    # @return [AccountStatusResponse]
    def confirm_funding_instrument_id(client_hash_id, customer_hash_id, funding_instrument_id, opts = {})
      data, _status_code, _headers = confirm_funding_instrument_id_with_http_info(client_hash_id, customer_hash_id, funding_instrument_id, opts)
      data
    end

    # Confirm funding instrument
    # This API allows you to confirm funding instrument id
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param funding_instrument_id [String] This field is the unique 36-character funding instrument identifier. The id is a bank account identifier when the funding channel is direct debit.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @option opts [ConfirmFundingInstrumentRequestDTO] :confirm_funding_instrument_request_dto Confirm funding instrument
    # @return [Array<(AccountStatusResponse, Integer, Hash)>] AccountStatusResponse data, response status code and response headers
    def confirm_funding_instrument_id_with_http_info(client_hash_id, customer_hash_id, funding_instrument_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerFundingApi.confirm_funding_instrument_id ...'
      end
      # verify the required parameter 'client_hash_id' is set
      if @api_client.config.client_side_validation && client_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_hash_id' when calling CustomerFundingApi.confirm_funding_instrument_id"
      end
      # verify the required parameter 'customer_hash_id' is set
      if @api_client.config.client_side_validation && customer_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_hash_id' when calling CustomerFundingApi.confirm_funding_instrument_id"
      end
      # verify the required parameter 'funding_instrument_id' is set
      if @api_client.config.client_side_validation && funding_instrument_id.nil?
        fail ArgumentError, "Missing the required parameter 'funding_instrument_id' when calling CustomerFundingApi.confirm_funding_instrument_id"
      end
      # resource path
      local_var_path = '/api/v1/client/{clientHashId}/customer/{customerHashId}/fundingInstruments/{fundingInstrumentId}/confirmFundingInstrument'.sub('{' + 'clientHashId' + '}', CGI.escape(client_hash_id.to_s)).sub('{' + 'customerHashId' + '}', CGI.escape(customer_hash_id.to_s)).sub('{' + 'fundingInstrumentId' + '}', CGI.escape(funding_instrument_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'confirm_funding_instrument_request_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'AccountStatusResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"CustomerFundingApi.confirm_funding_instrument_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerFundingApi#confirm_funding_instrument_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Funding Instrument
    # This API allows you to delete a specific funding instrument based on the fundingInstrumentId.
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param funding_instrument_id [String] The unique 36-character alphanumeric identifier of a funding instrument.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [ApiResponseOfstring]
    def delete_fundinginstrument(client_hash_id, customer_hash_id, funding_instrument_id, opts = {})
      data, _status_code, _headers = delete_fundinginstrument_with_http_info(client_hash_id, customer_hash_id, funding_instrument_id, opts)
      data
    end

    # Delete Funding Instrument
    # This API allows you to delete a specific funding instrument based on the fundingInstrumentId.
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param funding_instrument_id [String] The unique 36-character alphanumeric identifier of a funding instrument.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<(ApiResponseOfstring, Integer, Hash)>] ApiResponseOfstring data, response status code and response headers
    def delete_fundinginstrument_with_http_info(client_hash_id, customer_hash_id, funding_instrument_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerFundingApi.delete_fundinginstrument ...'
      end
      # verify the required parameter 'client_hash_id' is set
      if @api_client.config.client_side_validation && client_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_hash_id' when calling CustomerFundingApi.delete_fundinginstrument"
      end
      # verify the required parameter 'customer_hash_id' is set
      if @api_client.config.client_side_validation && customer_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_hash_id' when calling CustomerFundingApi.delete_fundinginstrument"
      end
      # verify the required parameter 'funding_instrument_id' is set
      if @api_client.config.client_side_validation && funding_instrument_id.nil?
        fail ArgumentError, "Missing the required parameter 'funding_instrument_id' when calling CustomerFundingApi.delete_fundinginstrument"
      end
      # resource path
      local_var_path = '/api/v1/client/{clientHashId}/customer/{customerHashId}/fundingInstruments/{fundingInstrumentId}'.sub('{' + 'clientHashId' + '}', CGI.escape(client_hash_id.to_s)).sub('{' + 'customerHashId' + '}', CGI.escape(customer_hash_id.to_s)).sub('{' + 'fundingInstrumentId' + '}', CGI.escape(funding_instrument_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-request-id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponseOfstring'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"CustomerFundingApi.delete_fundinginstrument",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerFundingApi#delete_fundinginstrument\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fund Wallet
    # This API allows you to top-up into the customer's wallet. Refer to the [Fund wallet user guide](/docs/fund-wallet) for details on usage instructions on this API.  >ℹ️ INFO   >**Guidelines for Fund Wallet.** >1. Cards and direct_debit funding channels are restricted by default. Reach out to your Nium support specialist to enable this functionality. >2. Source and destination should be in the same currency when funding channel is bank_transfer, cards, or direct_debit. >3. No restriction on source or destination currency if funding channel is prefund. 
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param wallet_hash_id [String] Unique wallet identifier generated simultaneously with customer creation.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @option opts [WalletFundDTO] :wallet_fund_dto Guidelines for Fund Wallet  1.cards as a funding channel is restricted by default. It may be enabled for a client on request. 2.Source and destination currencies should be same if funding channel is bankTransfer or cards 3.No restriction on source or destination currency if funding channel is prefund.  Fund Wallet with a Card  Customer onboarded and KYCed successfully [through Manual or eKYC flow] with e-KYC calls Fund Wallet API with funding channel as cards.
    # @return [WalletFundResponseDTO]
    def fund_wallet(client_hash_id, customer_hash_id, wallet_hash_id, opts = {})
      data, _status_code, _headers = fund_wallet_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts)
      data
    end

    # Fund Wallet
    # This API allows you to top-up into the customer&#39;s wallet. Refer to the [Fund wallet user guide](/docs/fund-wallet) for details on usage instructions on this API.  &gt;ℹ️ INFO   &gt;**Guidelines for Fund Wallet.** &gt;1. Cards and direct_debit funding channels are restricted by default. Reach out to your Nium support specialist to enable this functionality. &gt;2. Source and destination should be in the same currency when funding channel is bank_transfer, cards, or direct_debit. &gt;3. No restriction on source or destination currency if funding channel is prefund. 
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param wallet_hash_id [String] Unique wallet identifier generated simultaneously with customer creation.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @option opts [WalletFundDTO] :wallet_fund_dto Guidelines for Fund Wallet  1.cards as a funding channel is restricted by default. It may be enabled for a client on request. 2.Source and destination currencies should be same if funding channel is bankTransfer or cards 3.No restriction on source or destination currency if funding channel is prefund.  Fund Wallet with a Card  Customer onboarded and KYCed successfully [through Manual or eKYC flow] with e-KYC calls Fund Wallet API with funding channel as cards.
    # @return [Array<(WalletFundResponseDTO, Integer, Hash)>] WalletFundResponseDTO data, response status code and response headers
    def fund_wallet_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerFundingApi.fund_wallet ...'
      end
      # verify the required parameter 'client_hash_id' is set
      if @api_client.config.client_side_validation && client_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_hash_id' when calling CustomerFundingApi.fund_wallet"
      end
      # verify the required parameter 'customer_hash_id' is set
      if @api_client.config.client_side_validation && customer_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_hash_id' when calling CustomerFundingApi.fund_wallet"
      end
      # verify the required parameter 'wallet_hash_id' is set
      if @api_client.config.client_side_validation && wallet_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_hash_id' when calling CustomerFundingApi.fund_wallet"
      end
      # resource path
      local_var_path = '/api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/fund'.sub('{' + 'clientHashId' + '}', CGI.escape(client_hash_id.to_s)).sub('{' + 'customerHashId' + '}', CGI.escape(customer_hash_id.to_s)).sub('{' + 'walletHashId' + '}', CGI.escape(wallet_hash_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'wallet_fund_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'WalletFundResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"CustomerFundingApi.fund_wallet",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerFundingApi#fund_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Funding instrument details
    # Get Funding instrument details
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param funding_instrument_id [String] Unique 36-character funding instrument identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [AccountStatusResponse]
    def get_funding_instrument_details(client_hash_id, customer_hash_id, funding_instrument_id, opts = {})
      data, _status_code, _headers = get_funding_instrument_details_with_http_info(client_hash_id, customer_hash_id, funding_instrument_id, opts)
      data
    end

    # Get Funding instrument details
    # Get Funding instrument details
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param funding_instrument_id [String] Unique 36-character funding instrument identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<(AccountStatusResponse, Integer, Hash)>] AccountStatusResponse data, response status code and response headers
    def get_funding_instrument_details_with_http_info(client_hash_id, customer_hash_id, funding_instrument_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerFundingApi.get_funding_instrument_details ...'
      end
      # verify the required parameter 'client_hash_id' is set
      if @api_client.config.client_side_validation && client_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_hash_id' when calling CustomerFundingApi.get_funding_instrument_details"
      end
      # verify the required parameter 'customer_hash_id' is set
      if @api_client.config.client_side_validation && customer_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_hash_id' when calling CustomerFundingApi.get_funding_instrument_details"
      end
      # verify the required parameter 'funding_instrument_id' is set
      if @api_client.config.client_side_validation && funding_instrument_id.nil?
        fail ArgumentError, "Missing the required parameter 'funding_instrument_id' when calling CustomerFundingApi.get_funding_instrument_details"
      end
      # resource path
      local_var_path = '/api/v1/client/{clientHashId}/customer/{customerHashId}/fundingInstruments/{fundingInstrumentId}/fundingInstrumentDetails'.sub('{' + 'clientHashId' + '}', CGI.escape(client_hash_id.to_s)).sub('{' + 'customerHashId' + '}', CGI.escape(customer_hash_id.to_s)).sub('{' + 'fundingInstrumentId' + '}', CGI.escape(funding_instrument_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-request-id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AccountStatusResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"CustomerFundingApi.get_funding_instrument_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerFundingApi#get_funding_instrument_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Funding Instrument List
    # This API allows you to fetch the funding instruments that have been registered for a customer.
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<WalletFundingInstrumentsResponseDTO>]
    def get_funding_instrument_list(client_hash_id, customer_hash_id, opts = {})
      data, _status_code, _headers = get_funding_instrument_list_with_http_info(client_hash_id, customer_hash_id, opts)
      data
    end

    # Get Funding Instrument List
    # This API allows you to fetch the funding instruments that have been registered for a customer.
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<(Array<WalletFundingInstrumentsResponseDTO>, Integer, Hash)>] Array<WalletFundingInstrumentsResponseDTO> data, response status code and response headers
    def get_funding_instrument_list_with_http_info(client_hash_id, customer_hash_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerFundingApi.get_funding_instrument_list ...'
      end
      # verify the required parameter 'client_hash_id' is set
      if @api_client.config.client_side_validation && client_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_hash_id' when calling CustomerFundingApi.get_funding_instrument_list"
      end
      # verify the required parameter 'customer_hash_id' is set
      if @api_client.config.client_side_validation && customer_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_hash_id' when calling CustomerFundingApi.get_funding_instrument_list"
      end
      # resource path
      local_var_path = '/api/v1/client/{clientHashId}/customer/{customerHashId}/fundingInstruments'.sub('{' + 'clientHashId' + '}', CGI.escape(client_hash_id.to_s)).sub('{' + 'customerHashId' + '}', CGI.escape(customer_hash_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'x-request-id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<WalletFundingInstrumentsResponseDTO>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"CustomerFundingApi.get_funding_instrument_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerFundingApi#get_funding_instrument_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
