# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::Mgmt::V2018_02_14
  module Models
    #
    # The parameters used to check the availabity of the vault name.
    #
    class VaultCheckNameAvailabilityParameters

      include MsRestAzure

      # @return [String] The vault name.
      attr_accessor :name

      # @return [String] The type of resource, Microsoft.KeyVault/vaults.
      # Default value: 'Microsoft.KeyVault/vaults' .
      attr_accessor :type


      #
      # Mapper for VaultCheckNameAvailabilityParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VaultCheckNameAvailabilityParameters',
          type: {
            name: 'Composite',
            class_name: 'VaultCheckNameAvailabilityParameters',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'Microsoft.KeyVault/vaults',
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
