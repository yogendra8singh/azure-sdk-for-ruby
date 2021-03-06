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
require '2017-10-17-preview/generated/azure_mgmt_policy_insights/module_definition'
require 'ms_rest_azure'

module Azure::PolicyInsights::Mgmt::V2017_10_17_preview
  autoload :PolicyEvents,                                       '2017-10-17-preview/generated/azure_mgmt_policy_insights/policy_events.rb'
  autoload :PolicyStates,                                       '2017-10-17-preview/generated/azure_mgmt_policy_insights/policy_states.rb'
  autoload :Operations,                                         '2017-10-17-preview/generated/azure_mgmt_policy_insights/operations.rb'
  autoload :PolicyInsightsClient,                               '2017-10-17-preview/generated/azure_mgmt_policy_insights/policy_insights_client.rb'

  module Models
    autoload :PolicyStatesQueryResults,                           '2017-10-17-preview/generated/azure_mgmt_policy_insights/models/policy_states_query_results.rb'
    autoload :PolicyEvent,                                        '2017-10-17-preview/generated/azure_mgmt_policy_insights/models/policy_event.rb'
    autoload :OperationDisplay,                                   '2017-10-17-preview/generated/azure_mgmt_policy_insights/models/operation_display.rb'
    autoload :QueryFailureError,                                  '2017-10-17-preview/generated/azure_mgmt_policy_insights/models/query_failure_error.rb'
    autoload :Operation,                                          '2017-10-17-preview/generated/azure_mgmt_policy_insights/models/operation.rb'
    autoload :PolicyState,                                        '2017-10-17-preview/generated/azure_mgmt_policy_insights/models/policy_state.rb'
    autoload :OperationsListResults,                              '2017-10-17-preview/generated/azure_mgmt_policy_insights/models/operations_list_results.rb'
    autoload :QueryFailure,                                       '2017-10-17-preview/generated/azure_mgmt_policy_insights/models/query_failure.rb'
    autoload :QueryOptions,                                       '2017-10-17-preview/generated/azure_mgmt_policy_insights/models/query_options.rb'
    autoload :PolicyEventsQueryResults,                           '2017-10-17-preview/generated/azure_mgmt_policy_insights/models/policy_events_query_results.rb'
    autoload :PolicyStatesResource,                               '2017-10-17-preview/generated/azure_mgmt_policy_insights/models/policy_states_resource.rb'
  end
end
