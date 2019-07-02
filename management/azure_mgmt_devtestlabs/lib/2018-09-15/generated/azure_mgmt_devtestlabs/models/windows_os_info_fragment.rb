# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Information about a Windows OS.
    #
    class WindowsOsInfoFragment

      include MsRestAzure

      # @return [WindowsOsState] The state of the Windows OS (i.e.
      # NonSysprepped, SysprepRequested, SysprepApplied). Possible values
      # include: 'NonSysprepped', 'SysprepRequested', 'SysprepApplied'
      attr_accessor :windows_os_state


      #
      # Mapper for WindowsOsInfoFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WindowsOsInfoFragment',
          type: {
            name: 'Composite',
            class_name: 'WindowsOsInfoFragment',
            model_properties: {
              windows_os_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'windowsOsState',
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
