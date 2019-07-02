# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Properties for evaluating a policy set.
    #
    class EvaluatePoliciesProperties

      include MsRestAzure

      # @return [String] The fact name.
      attr_accessor :fact_name

      # @return [String] The fact data.
      attr_accessor :fact_data

      # @return [String] The value offset.
      attr_accessor :value_offset

      # @return [String] The user for which policies will be evaluated
      attr_accessor :user_object_id


      #
      # Mapper for EvaluatePoliciesProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EvaluatePoliciesProperties',
          type: {
            name: 'Composite',
            class_name: 'EvaluatePoliciesProperties',
            model_properties: {
              fact_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'factName',
                type: {
                  name: 'String'
                }
              },
              fact_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'factData',
                type: {
                  name: 'String'
                }
              },
              value_offset: {
                client_side_validation: true,
                required: false,
                serialized_name: 'valueOffset',
                type: {
                  name: 'String'
                }
              },
              user_object_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userObjectId',
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
