# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The list of replication summary for the domain controller inbound
    # neighbor.
    #
    class InboundReplicationNeighbors

      include MsRestAzure

      # @return [Array<InboundReplicationNeighbor>] The details of inbound
      # replication neighbors.
      attr_accessor :value


      #
      # Mapper for InboundReplicationNeighbors class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InboundReplicationNeighbors',
          type: {
            name: 'Composite',
            class_name: 'InboundReplicationNeighbors',
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
                      serialized_name: 'InboundReplicationNeighborElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InboundReplicationNeighbor'
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
