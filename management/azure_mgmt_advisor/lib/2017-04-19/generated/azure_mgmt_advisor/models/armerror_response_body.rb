# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Advisor::Mgmt::V2017_04_19
  module Models
    #
    # ARM error response body.
    #
    class ARMErrorResponseBody

      include MsRestAzure

      # @return [String] Gets or sets the string that describes the error in
      # detail and provides debugging information.
      attr_accessor :message

      # @return [String] Gets or sets the string that can be used to
      # programmatically identify the error.
      attr_accessor :code


      #
      # Mapper for ARMErrorResponseBody class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ARMErrorResponseBody',
          type: {
            name: 'Composite',
            class_name: 'ARMErrorResponseBody',
            model_properties: {
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end