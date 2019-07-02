# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Properties for creating a custom image from a VHD.
    #
    class CustomImagePropertiesCustomFragment

      include MsRestAzure

      # @return [String] The image name.
      attr_accessor :image_name

      # @return [Boolean] Indicates whether sysprep has been run on the VHD.
      attr_accessor :sys_prep

      # @return [CustomImageOsType] The OS type of the custom image (i.e.
      # Windows, Linux). Possible values include: 'Windows', 'Linux', 'None'
      attr_accessor :os_type


      #
      # Mapper for CustomImagePropertiesCustomFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CustomImagePropertiesCustomFragment',
          type: {
            name: 'Composite',
            class_name: 'CustomImagePropertiesCustomFragment',
            model_properties: {
              image_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'imageName',
                type: {
                  name: 'String'
                }
              },
              sys_prep: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sysPrep',
                type: {
                  name: 'Boolean'
                }
              },
              os_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osType',
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
