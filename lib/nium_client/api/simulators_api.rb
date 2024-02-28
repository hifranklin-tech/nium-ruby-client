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
  class SimulatorsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Simulate Authorize Card Transaction
    # This API is used to simulate the `Authorize` or `Authorization` card transaction type.
    # @param local_iso_request [LocalIsoRequest] message
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [LocalIsoResponse]
    def simulate_authorization(local_iso_request, opts = {})
      data, _status_code, _headers = simulate_authorization_with_http_info(local_iso_request, opts)
      data
    end

    # Simulate Authorize Card Transaction
    # This API is used to simulate the &#x60;Authorize&#x60; or &#x60;Authorization&#x60; card transaction type.
    # @param local_iso_request [LocalIsoRequest] message
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<(LocalIsoResponse, Integer, Hash)>] LocalIsoResponse data, response status code and response headers
    def simulate_authorization_with_http_info(local_iso_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SimulatorsApi.simulate_authorization ...'
      end
      # verify the required parameter 'local_iso_request' is set
      if @api_client.config.client_side_validation && local_iso_request.nil?
        fail ArgumentError, "Missing the required parameter 'local_iso_request' when calling SimulatorsApi.simulate_authorization"
      end
      # resource path
      local_var_path = '/api/v1/txn'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json;charset=UTF-8'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'x-request-id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(local_iso_request)

      # return_type
      return_type = opts[:debug_return_type] || 'LocalIsoResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"SimulatorsApi.simulate_authorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SimulatorsApi#simulate_authorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Simulate Settlement Transaction
    # This API can be used to run simulation of a given settlement transaction
    # @param settlement_request_dto [SettlementRequestDTO] settlementRequestDTO
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [String]
    def simulate_clearing(settlement_request_dto, opts = {})
      data, _status_code, _headers = simulate_clearing_with_http_info(settlement_request_dto, opts)
      data
    end

    # Simulate Settlement Transaction
    # This API can be used to run simulation of a given settlement transaction
    # @param settlement_request_dto [SettlementRequestDTO] settlementRequestDTO
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def simulate_clearing_with_http_info(settlement_request_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SimulatorsApi.simulate_clearing ...'
      end
      # verify the required parameter 'settlement_request_dto' is set
      if @api_client.config.client_side_validation && settlement_request_dto.nil?
        fail ArgumentError, "Missing the required parameter 'settlement_request_dto' when calling SimulatorsApi.simulate_clearing"
      end
      # resource path
      local_var_path = '/api/v1/settlement/run'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'x-request-id'] = opts[:'x_request_id'] if !opts[:'x_request_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(settlement_request_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"SimulatorsApi.simulate_clearing",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SimulatorsApi#simulate_clearing\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end