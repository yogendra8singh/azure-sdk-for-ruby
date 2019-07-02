# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # The REST API operation supported by DevTestLab ResourceProvider.
    #
    class OperationMetadata

      include MsRestAzure

      # @return [String] Operation name: {provider}/{resource}/{operation}
      attr_accessor :name

      # @return [OperationMetadataDisplay] The object that describes the
      # operations
      attr_accessor :display


      #
      # Mapper for OperationMetadata class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationMetadata',
          type: {
            name: 'Composite',
            class_name: 'OperationMetadata',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                client_side_validation: true,
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'OperationMetadataDisplay'
                }
              }
            }
          }
        }
      end
    end
  end
end
