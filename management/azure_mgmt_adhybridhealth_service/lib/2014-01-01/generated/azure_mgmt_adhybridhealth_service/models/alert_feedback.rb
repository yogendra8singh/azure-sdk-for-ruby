# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The alert feedback details.
    #
    class AlertFeedback

      include MsRestAzure

      # @return [String] The alert level which indicates the severity of the
      # alert.
      attr_accessor :level

      # @return [String] The alert state which can be either active or resolved
      # with multiple resolution types.
      attr_accessor :state

      # @return [String] The alert short name.
      attr_accessor :short_name

      # @return [String] The feedback for the alert which indicates if the
      # customer likes or dislikes the alert.
      attr_accessor :feedback

      # @return [String] Additional comments related to the alert.
      attr_accessor :comment

      # @return [Boolean] Indicates if the alert feedback can be shared from
      # product team.
      attr_accessor :consented_to_share

      # @return [String] The server Id of the alert.
      attr_accessor :service_member_id

      # @return [DateTime] The date and time,in UTC,when the alert was created.
      attr_accessor :created_date


      #
      # Mapper for AlertFeedback class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AlertFeedback',
          type: {
            name: 'Composite',
            class_name: 'AlertFeedback',
            model_properties: {
              level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'level',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              short_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'shortName',
                type: {
                  name: 'String'
                }
              },
              feedback: {
                client_side_validation: true,
                required: false,
                serialized_name: 'feedback',
                type: {
                  name: 'String'
                }
              },
              comment: {
                client_side_validation: true,
                required: false,
                serialized_name: 'comment',
                type: {
                  name: 'String'
                }
              },
              consented_to_share: {
                client_side_validation: true,
                required: false,
                serialized_name: 'consentedToShare',
                type: {
                  name: 'Boolean'
                }
              },
              service_member_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceMemberId',
                type: {
                  name: 'String'
                }
              },
              created_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'createdDate',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
