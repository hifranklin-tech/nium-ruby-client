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
  class ConversionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel Conversion
    # This API allows you to cancel a conversion prior to the execution time.
    # @param client_hash_id [String] Unique identifier of the client.
    # @param customer_hash_id [String] Unique identifier of the customer.
    # @param wallet_hash_id [String] Unique identifier of the wallet.
    # @param conversion_id [String] 
    # @param conversion_cancel_request [ConversionCancelRequest] ConversionCancelRequest
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [ConversionCancelResponse]
    def cancel_conversion(client_hash_id, customer_hash_id, wallet_hash_id, conversion_id, conversion_cancel_request, opts = {})
      data, _status_code, _headers = cancel_conversion_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, conversion_id, conversion_cancel_request, opts)
      data
    end

    # Cancel Conversion
    # This API allows you to cancel a conversion prior to the execution time.
    # @param client_hash_id [String] Unique identifier of the client.
    # @param customer_hash_id [String] Unique identifier of the customer.
    # @param wallet_hash_id [String] Unique identifier of the wallet.
    # @param conversion_id [String] 
    # @param conversion_cancel_request [ConversionCancelRequest] ConversionCancelRequest
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<(ConversionCancelResponse, Integer, Hash)>] ConversionCancelResponse data, response status code and response headers
    def cancel_conversion_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, conversion_id, conversion_cancel_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConversionsApi.cancel_conversion ...'
      end
      # verify the required parameter 'client_hash_id' is set
      if @api_client.config.client_side_validation && client_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_hash_id' when calling ConversionsApi.cancel_conversion"
      end
      if @api_client.config.client_side_validation && client_hash_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "client_hash_id" when calling ConversionsApi.cancel_conversion, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && client_hash_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "client_hash_id" when calling ConversionsApi.cancel_conversion, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'customer_hash_id' is set
      if @api_client.config.client_side_validation && customer_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_hash_id' when calling ConversionsApi.cancel_conversion"
      end
      if @api_client.config.client_side_validation && customer_hash_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "customer_hash_id" when calling ConversionsApi.cancel_conversion, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && customer_hash_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "customer_hash_id" when calling ConversionsApi.cancel_conversion, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'wallet_hash_id' is set
      if @api_client.config.client_side_validation && wallet_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_hash_id' when calling ConversionsApi.cancel_conversion"
      end
      if @api_client.config.client_side_validation && wallet_hash_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "wallet_hash_id" when calling ConversionsApi.cancel_conversion, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && wallet_hash_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "wallet_hash_id" when calling ConversionsApi.cancel_conversion, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'conversion_id' is set
      if @api_client.config.client_side_validation && conversion_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversion_id' when calling ConversionsApi.cancel_conversion"
      end
      # verify the required parameter 'conversion_cancel_request' is set
      if @api_client.config.client_side_validation && conversion_cancel_request.nil?
        fail ArgumentError, "Missing the required parameter 'conversion_cancel_request' when calling ConversionsApi.cancel_conversion"
      end
      # resource path
      local_var_path = '/api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/conversions/{conversionId}/cancel'.sub('{' + 'clientHashId' + '}', CGI.escape(client_hash_id.to_s)).sub('{' + 'customerHashId' + '}', CGI.escape(customer_hash_id.to_s)).sub('{' + 'walletHashId' + '}', CGI.escape(wallet_hash_id.to_s)).sub('{' + 'conversionId' + '}', CGI.escape(conversion_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(conversion_cancel_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ConversionCancelResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"ConversionsApi.cancel_conversion",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversionsApi#cancel_conversion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Conversion
    # This API allows you to convert the balance from one currency to another within the same customer wallet either at the current market rate or using a previous exchange rate quote. This API allows you to select a settlement schedule for the conversion.
    # @param client_hash_id [String] Unique identifier of the client.
    # @param customer_hash_id [String] Unique identifier of the customer.
    # @param wallet_hash_id [String] Unique identifier of the wallet.
    # @param conversion_creation_request [ConversionCreationRequest] ConversionCreationRequest
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [ConversionCreationResponse]
    def create_conversion(client_hash_id, customer_hash_id, wallet_hash_id, conversion_creation_request, opts = {})
      data, _status_code, _headers = create_conversion_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, conversion_creation_request, opts)
      data
    end

    # Create Conversion
    # This API allows you to convert the balance from one currency to another within the same customer wallet either at the current market rate or using a previous exchange rate quote. This API allows you to select a settlement schedule for the conversion.
    # @param client_hash_id [String] Unique identifier of the client.
    # @param customer_hash_id [String] Unique identifier of the customer.
    # @param wallet_hash_id [String] Unique identifier of the wallet.
    # @param conversion_creation_request [ConversionCreationRequest] ConversionCreationRequest
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<(ConversionCreationResponse, Integer, Hash)>] ConversionCreationResponse data, response status code and response headers
    def create_conversion_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, conversion_creation_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConversionsApi.create_conversion ...'
      end
      # verify the required parameter 'client_hash_id' is set
      if @api_client.config.client_side_validation && client_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_hash_id' when calling ConversionsApi.create_conversion"
      end
      if @api_client.config.client_side_validation && client_hash_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "client_hash_id" when calling ConversionsApi.create_conversion, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && client_hash_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "client_hash_id" when calling ConversionsApi.create_conversion, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'customer_hash_id' is set
      if @api_client.config.client_side_validation && customer_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_hash_id' when calling ConversionsApi.create_conversion"
      end
      if @api_client.config.client_side_validation && customer_hash_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "customer_hash_id" when calling ConversionsApi.create_conversion, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && customer_hash_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "customer_hash_id" when calling ConversionsApi.create_conversion, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'wallet_hash_id' is set
      if @api_client.config.client_side_validation && wallet_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_hash_id' when calling ConversionsApi.create_conversion"
      end
      if @api_client.config.client_side_validation && wallet_hash_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "wallet_hash_id" when calling ConversionsApi.create_conversion, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && wallet_hash_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "wallet_hash_id" when calling ConversionsApi.create_conversion, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'conversion_creation_request' is set
      if @api_client.config.client_side_validation && conversion_creation_request.nil?
        fail ArgumentError, "Missing the required parameter 'conversion_creation_request' when calling ConversionsApi.create_conversion"
      end
      # resource path
      local_var_path = '/api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/conversions'.sub('{' + 'clientHashId' + '}', CGI.escape(client_hash_id.to_s)).sub('{' + 'customerHashId' + '}', CGI.escape(customer_hash_id.to_s)).sub('{' + 'walletHashId' + '}', CGI.escape(wallet_hash_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(conversion_creation_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ConversionCreationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"ConversionsApi.create_conversion",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversionsApi#create_conversion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch Conversion by id
    # This API will retrieve an existing conversion with the conversionId.
    # @param client_hash_id [String] Unique identifier of the client.
    # @param customer_hash_id [String] Unique identifier of the customer.
    # @param wallet_hash_id [String] Unique identifier of the wallet.
    # @param conversion_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [ConversionCreationResponse]
    def fetch_conversion(client_hash_id, customer_hash_id, wallet_hash_id, conversion_id, opts = {})
      data, _status_code, _headers = fetch_conversion_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, conversion_id, opts)
      data
    end

    # Fetch Conversion by id
    # This API will retrieve an existing conversion with the conversionId.
    # @param client_hash_id [String] Unique identifier of the client.
    # @param customer_hash_id [String] Unique identifier of the customer.
    # @param wallet_hash_id [String] Unique identifier of the wallet.
    # @param conversion_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_request_id Enter a unique UUID value
    # @return [Array<(ConversionCreationResponse, Integer, Hash)>] ConversionCreationResponse data, response status code and response headers
    def fetch_conversion_with_http_info(client_hash_id, customer_hash_id, wallet_hash_id, conversion_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConversionsApi.fetch_conversion ...'
      end
      # verify the required parameter 'client_hash_id' is set
      if @api_client.config.client_side_validation && client_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_hash_id' when calling ConversionsApi.fetch_conversion"
      end
      if @api_client.config.client_side_validation && client_hash_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "client_hash_id" when calling ConversionsApi.fetch_conversion, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && client_hash_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "client_hash_id" when calling ConversionsApi.fetch_conversion, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'customer_hash_id' is set
      if @api_client.config.client_side_validation && customer_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_hash_id' when calling ConversionsApi.fetch_conversion"
      end
      if @api_client.config.client_side_validation && customer_hash_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "customer_hash_id" when calling ConversionsApi.fetch_conversion, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && customer_hash_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "customer_hash_id" when calling ConversionsApi.fetch_conversion, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'wallet_hash_id' is set
      if @api_client.config.client_side_validation && wallet_hash_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_hash_id' when calling ConversionsApi.fetch_conversion"
      end
      if @api_client.config.client_side_validation && wallet_hash_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "wallet_hash_id" when calling ConversionsApi.fetch_conversion, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && wallet_hash_id.to_s.length < 36
        fail ArgumentError, 'invalid value for "wallet_hash_id" when calling ConversionsApi.fetch_conversion, the character length must be great than or equal to 36.'
      end

      # verify the required parameter 'conversion_id' is set
      if @api_client.config.client_side_validation && conversion_id.nil?
        fail ArgumentError, "Missing the required parameter 'conversion_id' when calling ConversionsApi.fetch_conversion"
      end
      # resource path
      local_var_path = '/api/v1/client/{clientHashId}/customer/{customerHashId}/wallet/{walletHashId}/conversions/{conversionId}'.sub('{' + 'clientHashId' + '}', CGI.escape(client_hash_id.to_s)).sub('{' + 'customerHashId' + '}', CGI.escape(customer_hash_id.to_s)).sub('{' + 'walletHashId' + '}', CGI.escape(wallet_hash_id.to_s)).sub('{' + 'conversionId' + '}', CGI.escape(conversion_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ConversionCreationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['default']

      new_options = opts.merge(
        :operation => :"ConversionsApi.fetch_conversion",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConversionsApi#fetch_conversion\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
