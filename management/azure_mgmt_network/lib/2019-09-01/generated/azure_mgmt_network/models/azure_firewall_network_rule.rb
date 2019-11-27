# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_09_01
  module Models
    #
    # Properties of the network rule.
    #
    class AzureFirewallNetworkRule

      include MsRestAzure

      # @return [String] Name of the network rule.
      attr_accessor :name

      # @return [String] Description of the rule.
      attr_accessor :description

      # @return [Array<AzureFirewallNetworkRuleProtocol>] Array of
      # AzureFirewallNetworkRuleProtocols.
      attr_accessor :protocols

      # @return [Array<String>] List of source IP addresses for this rule.
      attr_accessor :source_addresses

      # @return [Array<String>] List of destination IP addresses.
      attr_accessor :destination_addresses

      # @return [Array<String>] List of destination ports.
      attr_accessor :destination_ports

      # @return [Array<String>] List of destination FQDNs.
      attr_accessor :destination_fqdns

      # @return [Array<String>] List of source IpGroups for this rule.
      attr_accessor :source_ip_groups

      # @return [Array<String>] List of destination IpGroups for this rule.
      attr_accessor :destination_ip_groups


      #
      # Mapper for AzureFirewallNetworkRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFirewallNetworkRule',
          type: {
            name: 'Composite',
            class_name: 'AzureFirewallNetworkRule',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              protocols: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocols',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureFirewallNetworkRuleProtocolElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              source_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              destination_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              destination_ports: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationPorts',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              destination_fqdns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationFqdns',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              source_ip_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceIpGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              destination_ip_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationIpGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end