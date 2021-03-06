# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Sftp write settings.
    #
    class SftpWriteSettings < StoreWriteSettings

      include MsRestAzure


      def initialize
        @type = "SftpWriteSettings"
      end

      attr_accessor :type

      # @return Specifies the timeout for writing each chunk to SFTP server.
      # Default value: 01:00:00 (one hour). Type: string (or Expression with
      # resultType string).
      attr_accessor :operation_timeout


      #
      # Mapper for SftpWriteSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SftpWriteSettings',
          type: {
            name: 'Composite',
            class_name: 'SftpWriteSettings',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              max_concurrent_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxConcurrentConnections',
                type: {
                  name: 'Object'
                }
              },
              copy_behavior: {
                client_side_validation: true,
                required: false,
                serialized_name: 'copyBehavior',
                type: {
                  name: 'Object'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              operation_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operationTimeout',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
