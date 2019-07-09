# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The list of alert feedback.
    #
    class AlertFeedbacks

      include MsRestAzure

      # @return [Array<AlertFeedback>] The value returned by the operation.
      attr_accessor :value


      #
      # Mapper for AlertFeedbacks class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AlertFeedbacks',
          type: {
            name: 'Composite',
            class_name: 'AlertFeedbacks',
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
                      serialized_name: 'AlertFeedbackElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AlertFeedback'
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
