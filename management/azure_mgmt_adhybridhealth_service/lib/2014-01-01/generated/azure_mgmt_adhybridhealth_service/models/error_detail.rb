# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The error details.
    #
    class ErrorDetail

      include MsRestAzure

      # @return [String] The error description.
      attr_accessor :description

      # @return [String] The knowledge base article url which contains more
      # information about the error.
      attr_accessor :kb_url

      # @return [String] Additional details related to the error.
      attr_accessor :detail

      # @return [ObjectWithSyncError] The list of objects with sync errors.
      attr_accessor :objects_with_sync_error

      # @return [MergedExportError]  The object with sync error.
      attr_accessor :object_with_sync_error


      #
      # Mapper for ErrorDetail class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorDetail',
          type: {
            name: 'Composite',
            class_name: 'ErrorDetail',
            model_properties: {
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              kb_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kbUrl',
                type: {
                  name: 'String'
                }
              },
              detail: {
                client_side_validation: true,
                required: false,
                serialized_name: 'detail',
                type: {
                  name: 'String'
                }
              },
              objects_with_sync_error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'objectsWithSyncError',
                type: {
                  name: 'Composite',
                  class_name: 'ObjectWithSyncError'
                }
              },
              object_with_sync_error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'objectWithSyncError',
                type: {
                  name: 'Composite',
                  class_name: 'MergedExportError'
                }
              }
            }
          }
        }
      end
    end
  end
end
