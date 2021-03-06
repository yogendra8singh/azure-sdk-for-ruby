# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V3_0_preview
  module Models
    #
    # Phraselist Feature.
    #
    class PhraseListFeatureInfo < FeatureInfoObject

      include MsRestAzure

      # @return [String] A list of comma-separated values.
      attr_accessor :phrases

      # @return [Boolean] An exchangeable phrase list feature are serves as
      # single feature to the LUIS underlying training algorithm. It is used as
      # a lexicon lookup feature where its value is 1 if the lexicon contains a
      # given word or 0 if it doesn’t. Think of an exchangeable as a synonyms
      # list. A non-exchangeable phrase list feature has all the phrases in the
      # list serve as separate features to the underlying training algorithm.
      # So, if you your phrase list feature contains 5 phrases, they will be
      # mapped to 5 separate features. You can think of the non-exchangeable
      # phrase list feature as an additional bag of words that you are willing
      # to add to LUIS existing vocabulary features. Think of a
      # non-exchangeable as set of different words. Default value is true.
      attr_accessor :is_exchangeable


      #
      # Mapper for PhraseListFeatureInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PhraseListFeatureInfo',
          type: {
            name: 'Composite',
            class_name: 'PhraseListFeatureInfo',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'Number'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              is_active: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isActive',
                type: {
                  name: 'Boolean'
                }
              },
              enabled_for_all_models: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabledForAllModels',
                type: {
                  name: 'Boolean'
                }
              },
              phrases: {
                client_side_validation: true,
                required: false,
                serialized_name: 'phrases',
                type: {
                  name: 'String'
                }
              },
              is_exchangeable: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isExchangeable',
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
