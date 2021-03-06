# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2016-05-16/generated/azure_mgmt_analysis_services/module_definition'
require 'ms_rest_azure'

module Azure::AnalysisServices::Mgmt::V2016_05_16
  autoload :Servers,                                            '2016-05-16/generated/azure_mgmt_analysis_services/servers.rb'
  autoload :AnalysisServicesManagementClient,                   '2016-05-16/generated/azure_mgmt_analysis_services/analysis_services_management_client.rb'

  module Models
    autoload :CheckServerNameAvailabilityParameters,              '2016-05-16/generated/azure_mgmt_analysis_services/models/check_server_name_availability_parameters.rb'
    autoload :CheckServerNameAvailabilityResult,                  '2016-05-16/generated/azure_mgmt_analysis_services/models/check_server_name_availability_result.rb'
    autoload :Resource,                                           '2016-05-16/generated/azure_mgmt_analysis_services/models/resource.rb'
    autoload :ErrorResponse,                                      '2016-05-16/generated/azure_mgmt_analysis_services/models/error_response.rb'
    autoload :AnalysisServicesServers,                            '2016-05-16/generated/azure_mgmt_analysis_services/models/analysis_services_servers.rb'
    autoload :OperationStatus,                                    '2016-05-16/generated/azure_mgmt_analysis_services/models/operation_status.rb'
    autoload :AnalysisServicesServerUpdateParameters,             '2016-05-16/generated/azure_mgmt_analysis_services/models/analysis_services_server_update_parameters.rb'
    autoload :SkuEnumerationForNewResourceResult,                 '2016-05-16/generated/azure_mgmt_analysis_services/models/sku_enumeration_for_new_resource_result.rb'
    autoload :ServerAdministrators,                               '2016-05-16/generated/azure_mgmt_analysis_services/models/server_administrators.rb'
    autoload :SkuDetailsForExistingResource,                      '2016-05-16/generated/azure_mgmt_analysis_services/models/sku_details_for_existing_resource.rb'
    autoload :ResourceSku,                                        '2016-05-16/generated/azure_mgmt_analysis_services/models/resource_sku.rb'
    autoload :SkuEnumerationForExistingResourceResult,            '2016-05-16/generated/azure_mgmt_analysis_services/models/sku_enumeration_for_existing_resource_result.rb'
    autoload :AnalysisServicesServer,                             '2016-05-16/generated/azure_mgmt_analysis_services/models/analysis_services_server.rb'
    autoload :SkuTier,                                            '2016-05-16/generated/azure_mgmt_analysis_services/models/sku_tier.rb'
    autoload :State,                                              '2016-05-16/generated/azure_mgmt_analysis_services/models/state.rb'
    autoload :ProvisioningState,                                  '2016-05-16/generated/azure_mgmt_analysis_services/models/provisioning_state.rb'
  end
end
