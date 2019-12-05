# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Information about the upgrade domain progress at the time of upgrade
    # failure.
    #
    class FailureUpgradeDomainProgressInfo

      include MsRestAzure

      # @return [String] The name of the upgrade domain
      attr_accessor :domain_name

      # @return [Array<NodeUpgradeProgressInfo>] List of upgrading nodes and
      # their statuses
      attr_accessor :node_upgrade_progress_list


      #
      # Mapper for FailureUpgradeDomainProgressInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FailureUpgradeDomainProgressInfo',
          type: {
            name: 'Composite',
            class_name: 'FailureUpgradeDomainProgressInfo',
            model_properties: {
              domain_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'DomainName',
                type: {
                  name: 'String'
                }
              },
              node_upgrade_progress_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeUpgradeProgressList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NodeUpgradeProgressInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NodeUpgradeProgressInfo'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end