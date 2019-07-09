# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  #
  # REST APIs for Azure Active Directory Connect Health
  #
  class AdDomainServiceMembers
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AdDomainServiceMembers class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ADHybridHealthService] reference to the ADHybridHealthService
    attr_reader :client

    #
    # Gets the details of the servers, for a given Active Directory Domain Service,
    # that are onboarded to Azure Active Directory Connect Health.
    #
    # @param service_name [String] The name of the service.
    # @param is_groupby_site [Boolean] Indicates if the result should be grouped by
    # site or not.
    # @param filter [String] The server property filter to apply.
    # @param query [String] The custom query.
    # @param take_count [Integer] The take count , which specifies the number of
    # elements that can be returned from a sequence.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<AddsServiceMember>] operation results.
    #
    def list(service_name, is_groupby_site, filter:nil, query:nil, take_count:nil, custom_headers:nil)
      first_page = list_as_lazy(service_name, is_groupby_site, filter:filter, query:query, take_count:take_count, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets the details of the servers, for a given Active Directory Domain Service,
    # that are onboarded to Azure Active Directory Connect Health.
    #
    # @param service_name [String] The name of the service.
    # @param is_groupby_site [Boolean] Indicates if the result should be grouped by
    # site or not.
    # @param filter [String] The server property filter to apply.
    # @param query [String] The custom query.
    # @param take_count [Integer] The take count , which specifies the number of
    # elements that can be returned from a sequence.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(service_name, is_groupby_site, filter:nil, query:nil, take_count:nil, custom_headers:nil)
      list_async(service_name, is_groupby_site, filter:filter, query:query, take_count:take_count, custom_headers:custom_headers).value!
    end

    #
    # Gets the details of the servers, for a given Active Directory Domain Service,
    # that are onboarded to Azure Active Directory Connect Health.
    #
    # @param service_name [String] The name of the service.
    # @param is_groupby_site [Boolean] Indicates if the result should be grouped by
    # site or not.
    # @param filter [String] The server property filter to apply.
    # @param query [String] The custom query.
    # @param take_count [Integer] The take count , which specifies the number of
    # elements that can be returned from a sequence.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(service_name, is_groupby_site, filter:nil, query:nil, take_count:nil, custom_headers:nil)
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'is_groupby_site is nil' if is_groupby_site.nil?
      next_partition_key = ''
      next_row_key = ''
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.ADHybridHealthService/addsservices/{serviceName}/addomainservicemembers'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'serviceName' => service_name},
          query_params: {'$filter' => filter,'isGroupbySite' => is_groupby_site,'query' => query,'nextPartitionKey' => next_partition_key,'nextRowKey' => next_row_key,'takeCount' => take_count,'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AddsServiceMembers.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the details of the servers, for a given Active Directory Domain Service,
    # that are onboarded to Azure Active Directory Connect Health.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AddsServiceMembers] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the details of the servers, for a given Active Directory Domain Service,
    # that are onboarded to Azure Active Directory Connect Health.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers:nil)
      list_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets the details of the servers, for a given Active Directory Domain Service,
    # that are onboarded to Azure Active Directory Connect Health.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ADHybridHealthService::Mgmt::V2014_01_01::Models::AddsServiceMembers.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the details of the servers, for a given Active Directory Domain Service,
    # that are onboarded to Azure Active Directory Connect Health.
    #
    # @param service_name [String] The name of the service.
    # @param is_groupby_site [Boolean] Indicates if the result should be grouped by
    # site or not.
    # @param filter [String] The server property filter to apply.
    # @param query [String] The custom query.
    # @param take_count [Integer] The take count , which specifies the number of
    # elements that can be returned from a sequence.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AddsServiceMembers] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(service_name, is_groupby_site, filter:nil, query:nil, take_count:nil, custom_headers:nil)
      response = list_async(service_name, is_groupby_site, filter:filter, query:query, take_count:take_count, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
