# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # Filters the list backup policies API.
    #
    class ProtectionPolicyQueryObject

      include MsRestAzure

      # @return [BackupManagementType] Backup management type for the backup
      # policy. Possible values include: 'Invalid', 'AzureIaasVM', 'MAB',
      # 'DPM', 'AzureBackupServer', 'AzureSql', 'AzureStorage',
      # 'AzureWorkload', 'DefaultBackup'
      attr_accessor :backup_management_type

      # @return [String] Fabric name for filter
      attr_accessor :fabric_name

      # @return [WorkloadType] Workload type for the backup policy. Possible
      # values include: 'Invalid', 'VM', 'FileFolder', 'AzureSqlDb', 'SQLDB',
      # 'Exchange', 'Sharepoint', 'VMwareVM', 'SystemState', 'Client',
      # 'GenericDataSource', 'SQLDataBase', 'AzureFileShare',
      # 'SAPHanaDatabase', 'SAPAseDatabase'
      attr_accessor :workload_type


      #
      # Mapper for ProtectionPolicyQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProtectionPolicyQueryObject',
          type: {
            name: 'Composite',
            class_name: 'ProtectionPolicyQueryObject',
            model_properties: {
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              fabric_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fabricName',
                type: {
                  name: 'String'
                }
              },
              workload_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workloadType',
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
