# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2018_01_01_preview
  module Models
    #
    # The response of the List Available Clusters operation.
    #
    class AvailableClustersList

      include MsRestAzure

      # @return [Array<AvailableCluster>] The count of readily available and
      # pre-provisioned Event Hubs Clusters per region.
      attr_accessor :value


      #
      # Mapper for AvailableClustersList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvailableClustersList',
          type: {
            name: 'Composite',
            class_name: 'AvailableClustersList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AvailableClusterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AvailableCluster'
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