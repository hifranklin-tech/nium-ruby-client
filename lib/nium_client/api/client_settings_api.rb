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
  class ClientSettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Client Details
    # This API will help you to fetch the configuration details of a client.
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [ClientDetailResponseDTO2]
    def client_details(client_hash_id, opts = {})
      data, _status_code, _headers = client_details_with_http_info(client_hash_id, opts)
      data
    end

    # Client Details
    # This API will help you to fetch the configuration details of a client.
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<(ClientDetailResponseDTO2, Integer, Hash)>] ClientDetailResponseDTO2 data, response status code and response headers
    def client_details_with_http_info(client_hash_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSettingsApi.client_details ...'
      end
      # verify the required parameter 'client_hash_id' is set
      if @api_client.config.client_side_validation && client_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_hash_id' when calling ClientSettingsApi.client_details"
      end
      # resource path
      local_var_path = '/api/v1/client/{clientHashId}'.sub('{' + 'clientHashId' + '}', CGI.escape(client_hash_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ClientDetailResponseDTO2'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"ClientSettingsApi.client_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSettingsApi#client_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fee Details
    # This API provides all the fees that have been set at the client level by NIUM. Refer to the following [Fees User Guide](doc:fees) for the Glossary of Fees for pre-defined fees supported on the system
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<ClientFeeDetailsResponseDTO>]
    def fee_details(client_hash_id, opts = {})
      data, _status_code, _headers = fee_details_with_http_info(client_hash_id, opts)
      data
    end

    # Fee Details
    # This API provides all the fees that have been set at the client level by NIUM. Refer to the following [Fees User Guide](doc:fees) for the Glossary of Fees for pre-defined fees supported on the system
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<(Array<ClientFeeDetailsResponseDTO>, Integer, Hash)>] Array<ClientFeeDetailsResponseDTO> data, response status code and response headers
    def fee_details_with_http_info(client_hash_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientSettingsApi.fee_details ...'
      end
      # verify the required parameter 'client_hash_id' is set
      if @api_client.config.client_side_validation && client_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_hash_id' when calling ClientSettingsApi.fee_details"
      end
      # resource path
      local_var_path = '/api/v2/client/{clientHashId}/fees'.sub('{' + 'clientHashId' + '}', CGI.escape(client_hash_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<ClientFeeDetailsResponseDTO>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"ClientSettingsApi.fee_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientSettingsApi#fee_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end