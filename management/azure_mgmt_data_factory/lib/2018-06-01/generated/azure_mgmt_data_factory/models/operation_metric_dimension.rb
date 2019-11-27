# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Defines the metric dimension.
    #
    class OperationMetricDimension

      include MsRestAzure

      # @return [String] The name of the dimension for the metric.
      attr_accessor :name

      # @return [String] The display name of the metric dimension.
      attr_accessor :display_name

      # @return [Boolean] Whether the dimension should be exported to Azure
      # Monitor.
      attr_accessor :to_be_exported_for_shoebox


      #
      # Mapper for OperationMetricDimension class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationMetricDimension',
          type: {
            name: 'Composite',
            class_name: 'OperationMetricDimension',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              to_be_exported_for_shoebox: {
                client_side_validation: true,
                required: false,
                serialized_name: 'toBeExportedForShoebox',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end