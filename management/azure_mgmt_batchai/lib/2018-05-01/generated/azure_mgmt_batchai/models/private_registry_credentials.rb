# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_05_01
  module Models
    #
    # Credentials to access a container image in a private repository.
    #
    class PrivateRegistryCredentials

      include MsRestAzure

      # @return [String] User name. User name to login to the repository.
      attr_accessor :username

      # @return [String] Password. User password to login to the docker
      # repository. One of password or passwordSecretReference must be
      # specified.
      attr_accessor :password

      # @return [KeyVaultSecretReference] Password secret reference. KeyVault
      # Secret storing the password. Users can store their secrets in Azure
      # KeyVault and pass it to the Batch AI service to integrate with
      # KeyVault. One of password or passwordSecretReference must be specified.
      attr_accessor :password_secret_reference


      #
      # Mapper for PrivateRegistryCredentials class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateRegistryCredentials',
          type: {
            name: 'Composite',
            class_name: 'PrivateRegistryCredentials',
            model_properties: {
              username: {
                client_side_validation: true,
                required: true,
                serialized_name: 'username',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'password',
                type: {
                  name: 'String'
                }
              },
              password_secret_reference: {
                client_side_validation: true,
                required: false,
                serialized_name: 'passwordSecretReference',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultSecretReference'
                }
              }
            }
          }
        }
      end
    end
  end
end