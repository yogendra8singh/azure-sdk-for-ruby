# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # Specifies a setup task which can be used to customize the compute nodes
    # of the cluster.
    #
    class SetupTask

      include MsRestAzure

      # @return [String] Command Line to start Setup process.
      attr_accessor :command_line

      # @return [Array<EnvironmentVariable>] Collection of environment
      # variables to be set for setup task.
      attr_accessor :environment_variables

      # @return [Array<EnvironmentVariableWithSecretValue>] Collection of
      # environment variables with secret values to be set for setup task.
      # Server will never report values of these variables back.
      attr_accessor :secrets

      # @return [Boolean] Specifies whether to run the setup task under root
      # account. The default value is false. Note. Non-elevated tasks are run
      # under an account added into sudoer list and can perform sudo when
      # required. Default value: false .
      attr_accessor :run_elevated

      # @return [String] The prefix of a path where the Batch AI service will
      # upload the stdout and stderr of the setup task.
      attr_accessor :std_out_err_path_prefix

      # @return [String] A path segment appended by Batch AI to
      # stdOutErrPathPrefix to form a path where stdout and stderr of the setup
      # task will be uploaded. Batch AI creates the setup task output
      # directories under an unique path to avoid conflicts between different
      # clusters. You can concatenate stdOutErrPathPrefix and
      # stdOutErrPathSuffix to get the full path to the output directory.
      attr_accessor :std_out_err_path_suffix


      #
      # Mapper for SetupTask class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SetupTask',
          type: {
            name: 'Composite',
            class_name: 'SetupTask',
            model_properties: {
              command_line: {
                client_side_validation: true,
                required: true,
                serialized_name: 'commandLine',
                type: {
                  name: 'String'
                }
              },
              environment_variables: {
                client_side_validation: true,
                required: false,
                serialized_name: 'environmentVariables',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EnvironmentVariableElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EnvironmentVariable'
                      }
                  }
                }
              },
              secrets: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secrets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EnvironmentVariableWithSecretValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EnvironmentVariableWithSecretValue'
                      }
                  }
                }
              },
              run_elevated: {
                client_side_validation: true,
                required: false,
                serialized_name: 'runElevated',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              std_out_err_path_prefix: {
                client_side_validation: true,
                required: true,
                serialized_name: 'stdOutErrPathPrefix',
                type: {
                  name: 'String'
                }
              },
              std_out_err_path_suffix: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'stdOutErrPathSuffix',
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