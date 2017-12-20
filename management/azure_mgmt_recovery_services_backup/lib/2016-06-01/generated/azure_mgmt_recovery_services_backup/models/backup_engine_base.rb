# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_06_01
  module Models
    #
    # The base backup engine class. All workload-specific backup engines derive
    # from this class.
    #
    class BackupEngineBase

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AzureBackupServerEngine"] = "AzureBackupServerEngine"
      @@discriminatorMap["DpmBackupEngine"] = "DpmBackupEngine"

      def initialize
        @backupEngineType = "BackupEngineBase"
      end

      attr_accessor :backupEngineType

      # @return [String] The friendly name of the backup engine.
      attr_accessor :friendly_name

      # @return [BackupManagementType] The type of backup management associated
      # with the backup engine. Possible values include: 'Invalid',
      # 'AzureIaasVM', 'MAB', 'DPM', 'AzureBackupServer', 'AzureSql'
      attr_accessor :backup_management_type

      # @return [String] The status of the backup engine registration with the
      # Recovery Services vault.
      attr_accessor :registration_status

      # @return [String] The backup status of the backup engine.
      attr_accessor :health_status

      # @return [Boolean] The flag indicating whether the backup engine be
      # registered again, once the engine has been initially registered.
      attr_accessor :can_re_register

      # @return [String] The ID of the backup engine.
      attr_accessor :backup_engine_id


      #
      # Mapper for BackupEngineBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupEngineBase',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'backupEngineType',
            uber_parent: 'BackupEngineBase',
            class_name: 'BackupEngineBase',
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
                  name: 'Enum',
                  module: 'BackupManagementType'
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
              }
            }
          }
        }
      end
    end
  end
end