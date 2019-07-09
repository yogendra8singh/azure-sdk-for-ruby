# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The list of servers that are onboarded for a given service.
    #
    class ServiceMembers

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The link used to get the next page of operations.
      attr_accessor :next_link

      # @return [Array<ServiceMember>] The value returned by the operation.
      attr_accessor :value

      # @return [Integer] The total count of service elements.
      attr_accessor :total_count

      # @return [String] The continuation token for paginated calls.
      attr_accessor :continuation_token

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<ServiceMember>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil && !page.next_link.strip.empty? do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [ServiceMembers] with next page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for ServiceMembers class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceMembers',
          type: {
            name: 'Composite',
            class_name: 'ServiceMembers',
            model_properties: {
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextLink',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceMemberElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceMember'
                      }
                  }
                }
              },
              total_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'totalCount',
                type: {
                  name: 'Number'
                }
              },
              continuation_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'continuationToken',
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
