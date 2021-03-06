# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # Error information returned by the API
    #
    class APIError

      include MsRestAzure

      # @return [Error]
      attr_accessor :error


      #
      # Mapper for APIError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'APIError',
          type: {
            name: 'Composite',
            class_name: 'APIError',
            model_properties: {
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Error',
                type: {
                  name: 'Composite',
                  class_name: 'Error'
                }
              }
            }
          }
        }
      end
    end
  end
end
