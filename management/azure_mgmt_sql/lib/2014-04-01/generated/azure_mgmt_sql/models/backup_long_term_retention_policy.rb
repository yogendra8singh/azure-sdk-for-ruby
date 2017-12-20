# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # A backup long term retention policy
    #
    class BackupLongTermRetentionPolicy < ProxyResource

      include MsRestAzure

      # @return [String] The geo-location where the resource lives
      attr_accessor :location

      # @return [BackupLongTermRetentionPolicyState] The status of the backup
      # long term retention policy. Possible values include: 'Disabled',
      # 'Enabled'
      attr_accessor :state

      # @return [String] The azure recovery services backup protection policy
      # resource id
      attr_accessor :recovery_services_backup_policy_resource_id


      #
      # Mapper for BackupLongTermRetentionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupLongTermRetentionPolicy',
          type: {
            name: 'Composite',
            class_name: 'BackupLongTermRetentionPolicy',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'BackupLongTermRetentionPolicyState'
                }
              },
              recovery_services_backup_policy_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.recoveryServicesBackupPolicyResourceId',
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