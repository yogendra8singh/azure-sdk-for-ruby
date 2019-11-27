# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_04_02
  #
  # Microsoft Storage Sync Service API
  #
  class SyncGroups
    include MsRestAzure

    #
    # Creates and initializes a new instance of the SyncGroups class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [StorageSyncManagementClient] reference to the StorageSyncManagementClient
    attr_reader :client

    #
    # Get a SyncGroup List.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SyncGroupArray] operation results.
    #
    def list_by_storage_sync_service(resource_group_name, storage_sync_service_name, custom_headers:nil)
      response = list_by_storage_sync_service_async(resource_group_name, storage_sync_service_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a SyncGroup List.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_storage_sync_service_with_http_info(resource_group_name, storage_sync_service_name, custom_headers:nil)
      list_by_storage_sync_service_async(resource_group_name, storage_sync_service_name, custom_headers:custom_headers).value!
    end

    #
    # Get a SyncGroup List.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_storage_sync_service_async(resource_group_name, storage_sync_service_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, 'storage_sync_service_name is nil' if storage_sync_service_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/storageSyncServices/{storageSyncServiceName}/syncGroups'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'storageSyncServiceName' => storage_sync_service_name},
          query_params: {'api-version' => @client.api_version},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StorageSync::Mgmt::V2018_04_02::Models::SyncGroupArray.mapper()
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
    # Create a new SyncGroup.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param sync_group_name [String] Name of Sync Group resource.
    # @param parameters [SyncGroupCreateParameters] Sync Group Body
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SyncGroup] operation results.
    #
    def create(resource_group_name, storage_sync_service_name, sync_group_name, parameters, custom_headers:nil)
      response = create_async(resource_group_name, storage_sync_service_name, sync_group_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create a new SyncGroup.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param sync_group_name [String] Name of Sync Group resource.
    # @param parameters [SyncGroupCreateParameters] Sync Group Body
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(resource_group_name, storage_sync_service_name, sync_group_name, parameters, custom_headers:nil)
      create_async(resource_group_name, storage_sync_service_name, sync_group_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Create a new SyncGroup.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param sync_group_name [String] Name of Sync Group resource.
    # @param parameters [SyncGroupCreateParameters] Sync Group Body
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(resource_group_name, storage_sync_service_name, sync_group_name, parameters, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, 'storage_sync_service_name is nil' if storage_sync_service_name.nil?
      fail ArgumentError, 'sync_group_name is nil' if sync_group_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::StorageSync::Mgmt::V2018_04_02::Models::SyncGroupCreateParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/storageSyncServices/{storageSyncServiceName}/syncGroups/{syncGroupName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'storageSyncServiceName' => storage_sync_service_name,'syncGroupName' => sync_group_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StorageSync::Mgmt::V2018_04_02::Models::SyncGroup.mapper()
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
    # Get a given SyncGroup.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param sync_group_name [String] Name of Sync Group resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SyncGroup] operation results.
    #
    def get(resource_group_name, storage_sync_service_name, sync_group_name, custom_headers:nil)
      response = get_async(resource_group_name, storage_sync_service_name, sync_group_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get a given SyncGroup.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param sync_group_name [String] Name of Sync Group resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, storage_sync_service_name, sync_group_name, custom_headers:nil)
      get_async(resource_group_name, storage_sync_service_name, sync_group_name, custom_headers:custom_headers).value!
    end

    #
    # Get a given SyncGroup.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param sync_group_name [String] Name of Sync Group resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, storage_sync_service_name, sync_group_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, 'storage_sync_service_name is nil' if storage_sync_service_name.nil?
      fail ArgumentError, 'sync_group_name is nil' if sync_group_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/storageSyncServices/{storageSyncServiceName}/syncGroups/{syncGroupName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'storageSyncServiceName' => storage_sync_service_name,'syncGroupName' => sync_group_name},
          query_params: {'api-version' => @client.api_version},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StorageSync::Mgmt::V2018_04_02::Models::SyncGroup.mapper()
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
    # Delete a given SyncGroup.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param sync_group_name [String] Name of Sync Group resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, storage_sync_service_name, sync_group_name, custom_headers:nil)
      response = delete_async(resource_group_name, storage_sync_service_name, sync_group_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Delete a given SyncGroup.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param sync_group_name [String] Name of Sync Group resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, storage_sync_service_name, sync_group_name, custom_headers:nil)
      delete_async(resource_group_name, storage_sync_service_name, sync_group_name, custom_headers:custom_headers).value!
    end

    #
    # Delete a given SyncGroup.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param storage_sync_service_name [String] Name of Storage Sync Service
    # resource.
    # @param sync_group_name [String] Name of Sync Group resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, storage_sync_service_name, sync_group_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, 'storage_sync_service_name is nil' if storage_sync_service_name.nil?
      fail ArgumentError, 'sync_group_name is nil' if sync_group_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/storageSyncServices/{storageSyncServiceName}/syncGroups/{syncGroupName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'storageSyncServiceName' => storage_sync_service_name,'syncGroupName' => sync_group_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end