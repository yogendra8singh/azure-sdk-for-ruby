# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # Describes the partition in Synchronization service.
    #
    class Partition

      include MsRestAzure

      # @return [String] The partition Id.
      attr_accessor :id

      # @return [String] The distinguished name for the partition.
      attr_accessor :dn

      # @return [Boolean] Indicates if the partition object is selected or not.
      attr_accessor :enabled

      # @return [DateTime] The date and time when the partition is created.
      attr_accessor :time_created

      # @return [DateTime] The time and date when the partition was last
      # modified.
      attr_accessor :time_last_modified

      # @return [PartitionScope] The scope of the partition.
      attr_accessor :partition_scope

      # @return [String] The name of the partition.
      attr_accessor :name

      # @return [Boolean] Indicates if the partition is a domain or not.
      attr_accessor :is_domain

      # @return [String] The partition type.
      attr_accessor :type


      #
      # Mapper for Partition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Partition',
          type: {
            name: 'Composite',
            class_name: 'Partition',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              dn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dn',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              time_created: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeCreated',
                type: {
                  name: 'DateTime'
                }
              },
              time_last_modified: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeLastModified',
                type: {
                  name: 'DateTime'
                }
              },
              partition_scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'partitionScope',
                type: {
                  name: 'Composite',
                  class_name: 'PartitionScope'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              is_domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isDomain',
                type: {
                  name: 'Boolean'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
