# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # Parameters used to specify the type of function to retrieve the default
    # definition for.
    #
    class FunctionRetrieveDefaultDefinitionParameters

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Microsoft.StreamAnalytics/JavascriptUdf"] = "JavaScriptFunctionRetrieveDefaultDefinitionParameters"
      @@discriminatorMap["Microsoft.MachineLearning/WebService"] = "AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters"

      def initialize
        @bindingType = "FunctionRetrieveDefaultDefinitionParameters"
      end

      attr_accessor :bindingType


      #
      # Mapper for FunctionRetrieveDefaultDefinitionParameters class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FunctionRetrieveDefaultDefinitionParameters',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'bindingType',
            uber_parent: 'FunctionRetrieveDefaultDefinitionParameters',
            class_name: 'FunctionRetrieveDefaultDefinitionParameters',
            model_properties: {
            }
          }
        }
      end
    end
  end
end