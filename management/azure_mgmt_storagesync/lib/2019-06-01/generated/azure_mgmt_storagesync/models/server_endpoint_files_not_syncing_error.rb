# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2019_06_01
  module Models
    #
    # Files not syncing error object
    #
    class ServerEndpointFilesNotSyncingError

      include MsRestAzure

      # @return [Integer] Error code (HResult)
      attr_accessor :error_code

      # @return [Integer] Count of persistent files not syncing with the
      # specified error code
      attr_accessor :persistent_count

      # @return [Integer] Count of transient files not syncing with the
      # specified error code
      attr_accessor :transient_count


      #
      # Mapper for ServerEndpointFilesNotSyncingError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerEndpointFilesNotSyncingError',
          type: {
            name: 'Composite',
            class_name: 'ServerEndpointFilesNotSyncingError',
            model_properties: {
              error_code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errorCode',
                type: {
                  name: 'Number'
                }
              },
              persistent_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'persistentCount',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              transient_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'transientCount',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
