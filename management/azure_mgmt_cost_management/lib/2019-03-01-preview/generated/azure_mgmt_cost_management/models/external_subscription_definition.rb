# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_03_01_preview
  module Models
    #
    # The ExternalSubscription model definition
    #
    class ExternalSubscriptionDefinition

      include MsRestAzure

      # @return [String] ExternalSubscription id
      attr_accessor :id

      # @return [String] ExternalSubscription name
      attr_accessor :name

      # @return [String] ExternalSubscription type
      attr_accessor :type

      # @return [String] ExternalSubscription kind (eg aws)
      attr_accessor :kind

      # @return [String] ExternalSubscription DisplayName
      attr_accessor :display_name

      # @return [String] Assigned ManagementGroupId
      attr_accessor :management_group_id

      # @return [String] Provider BillingAccountId (eg AWS Consolidated Account
      # number)
      attr_accessor :provider_billing_account_id

      # @return [String] Provider AccountId (eg AWS Linked Account number)
      attr_accessor :provider_account_id

      # @return [String] Parent ExternalBillingAccountId
      attr_accessor :external_billing_account_id

      # @return [ConnectorCollectionInfo] Collection information
      attr_accessor :collection_info


      #
      # Mapper for ExternalSubscriptionDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExternalSubscriptionDefinition',
          type: {
            name: 'Composite',
            class_name: 'ExternalSubscriptionDefinition',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              management_group_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.managementGroupId',
                type: {
                  name: 'String'
                }
              },
              provider_billing_account_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.providerBillingAccountId',
                type: {
                  name: 'String'
                }
              },
              provider_account_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.providerAccountId',
                type: {
                  name: 'String'
                }
              },
              external_billing_account_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.externalBillingAccountId',
                type: {
                  name: 'String'
                }
              },
              collection_info: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.collectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'ConnectorCollectionInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
