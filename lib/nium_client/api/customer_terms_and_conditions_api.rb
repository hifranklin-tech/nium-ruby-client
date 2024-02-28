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
  class CustomerTermsAndConditionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Accept Terms and Conditions
    # This API updates the Terms and Conditions acceptance status for a customer
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param terms_and_conditions_request_dto [TermsAndConditionsRequestDTO] termsAndConditionsRequestDTO
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [TermsAndConditionsAcceptResponseDTO]
    def accept_termsand_conditions(client_hash_id, customer_hash_id, terms_and_conditions_request_dto, opts = {})
      data, _status_code, _headers = accept_termsand_conditions_with_http_info(client_hash_id, customer_hash_id, terms_and_conditions_request_dto, opts)
      data
    end

    # Accept Terms and Conditions
    # This API updates the Terms and Conditions acceptance status for a customer
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param customer_hash_id [String] Unique customer identifier generated on customer creation.
    # @param terms_and_conditions_request_dto [TermsAndConditionsRequestDTO] termsAndConditionsRequestDTO
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<(TermsAndConditionsAcceptResponseDTO, Integer, Hash)>] TermsAndConditionsAcceptResponseDTO data, response status code and response headers
    def accept_termsand_conditions_with_http_info(client_hash_id, customer_hash_id, terms_and_conditions_request_dto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerTermsAndConditionsApi.accept_termsand_conditions ...'
      end
      # verify the required parameter 'client_hash_id' is set
      if @api_client.config.client_side_validation && client_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_hash_id' when calling CustomerTermsAndConditionsApi.accept_termsand_conditions"
      end
      # verify the required parameter 'customer_hash_id' is set
      if @api_client.config.client_side_validation && customer_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_hash_id' when calling CustomerTermsAndConditionsApi.accept_termsand_conditions"
      end
      # verify the required parameter 'terms_and_conditions_request_dto' is set
      if @api_client.config.client_side_validation && terms_and_conditions_request_dto.nil?
        fail ArgumentError, "Missing the required parameter 'terms_and_conditions_request_dto' when calling CustomerTermsAndConditionsApi.accept_termsand_conditions"
      end
      # resource path
      local_var_path = '/api/v1/client/{clientHashId}/customer/{customerHashId}/termsAndConditions'.sub('{' + 'clientHashId' + '}', CGI.escape(client_hash_id.to_s)).sub('{' + 'customerHashId' + '}', CGI.escape(customer_hash_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(terms_and_conditions_request_dto)

      # return_type
      return_type = opts[:debug_return_type] || 'TermsAndConditionsAcceptResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"CustomerTermsAndConditionsApi.accept_termsand_conditions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerTermsAndConditionsApi#accept_termsand_conditions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Terms and Conditions
    # This API allows you to fetch the mandatory Terms and Conditions for individual customer onboarding. Refer to the [T&C flow chart](/apis/docs/customer-life-cycle#terms-and-conditions) for more details.
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [TermsAndConditionsResponseDTO]
    def termsand_conditions(client_hash_id, opts = {})
      data, _status_code, _headers = termsand_conditions_with_http_info(client_hash_id, opts)
      data
    end

    # Terms and Conditions
    # This API allows you to fetch the mandatory Terms and Conditions for individual customer onboarding. Refer to the [T&amp;C flow chart](/apis/docs/customer-life-cycle#terms-and-conditions) for more details.
    # @param client_hash_id [String] Unique client identifier generated and shared before API handshake.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<(TermsAndConditionsResponseDTO, Integer, Hash)>] TermsAndConditionsResponseDTO data, response status code and response headers
    def termsand_conditions_with_http_info(client_hash_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerTermsAndConditionsApi.termsand_conditions ...'
      end
      # verify the required parameter 'client_hash_id' is set
      if @api_client.config.client_side_validation && client_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_hash_id' when calling CustomerTermsAndConditionsApi.termsand_conditions"
      end
      # resource path
      local_var_path = '/api/v1/client/{clientHashId}/termsAndConditions'.sub('{' + 'clientHashId' + '}', CGI.escape(client_hash_id.to_s))

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
      return_type = opts[:debug_return_type] || 'TermsAndConditionsResponseDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"CustomerTermsAndConditionsApi.termsand_conditions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerTermsAndConditionsApi#termsand_conditions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end