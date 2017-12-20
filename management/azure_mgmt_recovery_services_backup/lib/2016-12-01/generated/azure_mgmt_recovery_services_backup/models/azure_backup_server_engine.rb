# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Backup engine type when Azure Backup Server is used to manage the
    # backups.
    #
    class AzureBackupServerEngine < BackupEngineBase

      include MsRestAzure


      def initialize
        @backupEngineType = "AzureBackupServerEngine"
      end

      attr_accessor :backupEngineType


      #
      # Mapper for AzureBackupServerEngine class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureBackupServerEngine',
          type: {
            name: 'Composite',
            class_name: 'AzureBackupServerEngine',
            model_properties: {
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              registration_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'registrationStatus',
                type: {
                  name: 'String'
                }
              },
              backup_engine_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupEngineState',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              can_re_register: {
                client_side_validation: true,
                required: false,
                serialized_name: 'canReRegister',
                type: {
                  name: 'Boolean'
                }
              },
              backup_engine_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupEngineId',
                type: {
                  name: 'String'
                }
              },
              dpm_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dpmVersion',
                type: {
                  name: 'String'
                }
              },
              azure_backup_agent_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureBackupAgentVersion',
                type: {
                  name: 'String'
                }
              },
              is_azure_backup_agent_upgrade_available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isAzureBackupAgentUpgradeAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              is_dpmupgrade_available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isDPMUpgradeAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              extended_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'BackupEngineExtendedInfo'
                }
              },
              backupEngineType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'backupEngineType',
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