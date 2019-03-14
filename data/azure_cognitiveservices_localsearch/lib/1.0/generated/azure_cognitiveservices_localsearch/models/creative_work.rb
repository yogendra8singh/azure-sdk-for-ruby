# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LocalSearch::V1_0
  module Models
    #
    # The most generic kind of creative work, including books, movies,
    # photographs, software programs, etc.
    #
    class CreativeWork < Thing

      include MsRestAzure


      def initialize
        @_type = "CreativeWork"
      end

      attr_accessor :_type

      # @return [String] The URL to a thumbnail of the item.
      attr_accessor :thumbnail_url

      # @return [Array<Thing>] For internal use only.
      attr_accessor :about

      # @return [Array<Thing>] For internal use only.
      attr_accessor :mentions

      # @return [Array<Thing>] The source of the creative work.
      attr_accessor :provider

      # @return [Thing]
      attr_accessor :creator

      # @return [String] Text content of this creative work
      attr_accessor :text

      # @return [String]
      attr_accessor :discussion_url

      # @return [Integer]
      attr_accessor :comment_count

      # @return [Thing]
      attr_accessor :main_entity

      # @return [String]
      attr_accessor :head_line

      # @return [Thing]
      attr_accessor :copyright_holder

      # @return [Integer]
      attr_accessor :copyright_year

      # @return [String]
      attr_accessor :disclaimer

      # @return [Boolean]
      attr_accessor :is_accessible_for_free

      # @return [Array<String>]
      attr_accessor :genre

      # @return [Boolean]
      attr_accessor :is_family_friendly


      #
      # Mapper for CreativeWork class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CreativeWork',
          type: {
            name: 'Composite',
            class_name: 'CreativeWork',
            model_properties: {
              _type: {
                client_side_validation: true,
                required: true,
                serialized_name: '_type',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              read_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'readLink',
                type: {
                  name: 'String'
                }
              },
              web_search_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'webSearchUrl',
                type: {
                  name: 'String'
                }
              },
              potential_action: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'potentialAction',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Action'
                      }
                  }
                }
              },
              immediate_action: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'immediateAction',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Action'
                      }
                  }
                }
              },
              preferred_clickthrough_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'preferredClickthroughUrl',
                type: {
                  name: 'String'
                }
              },
              adaptive_card: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'adaptiveCard',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'url',
                type: {
                  name: 'String'
                }
              },
              entity_presentation_info: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'entityPresentationInfo',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: '_type',
                  uber_parent: 'EntitiesEntityPresentationInfo',
                  class_name: 'EntitiesEntityPresentationInfo'
                }
              },
              thumbnail_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'thumbnailUrl',
                type: {
                  name: 'String'
                }
              },
              about: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'about',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ThingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Thing'
                      }
                  }
                }
              },
              mentions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'mentions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ThingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Thing'
                      }
                  }
                }
              },
              provider: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provider',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ThingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Thing'
                      }
                  }
                }
              },
              creator: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'creator',
                type: {
                  name: 'Composite',
                  class_name: 'Thing'
                }
              },
              text: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              discussion_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'discussionUrl',
                type: {
                  name: 'String'
                }
              },
              comment_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'commentCount',
                type: {
                  name: 'Number'
                }
              },
              main_entity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'mainEntity',
                type: {
                  name: 'Composite',
                  class_name: 'Thing'
                }
              },
              head_line: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'headLine',
                type: {
                  name: 'String'
                }
              },
              copyright_holder: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'copyrightHolder',
                type: {
                  name: 'Composite',
                  class_name: 'Thing'
                }
              },
              copyright_year: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'copyrightYear',
                type: {
                  name: 'Number'
                }
              },
              disclaimer: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'disclaimer',
                type: {
                  name: 'String'
                }
              },
              is_accessible_for_free: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isAccessibleForFree',
                type: {
                  name: 'Boolean'
                }
              },
              genre: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'genre',
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
              is_family_friendly: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isFamilyFriendly',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end