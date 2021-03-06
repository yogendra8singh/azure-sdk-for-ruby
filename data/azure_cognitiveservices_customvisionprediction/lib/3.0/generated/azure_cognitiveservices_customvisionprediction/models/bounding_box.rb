# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Customvisionprediction::V3_0
  module Models
    #
    # Bounding box that defines a region of an image.
    #
    class BoundingBox

      include MsRestAzure

      # @return [Float] Coordinate of the left boundary.
      attr_accessor :left

      # @return [Float] Coordinate of the top boundary.
      attr_accessor :top

      # @return [Float] Width.
      attr_accessor :width

      # @return [Float] Height.
      attr_accessor :height


      #
      # Mapper for BoundingBox class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BoundingBox',
          type: {
            name: 'Composite',
            class_name: 'BoundingBox',
            model_properties: {
              left: {
                client_side_validation: true,
                required: true,
                serialized_name: 'left',
                type: {
                  name: 'Double'
                }
              },
              top: {
                client_side_validation: true,
                required: true,
                serialized_name: 'top',
                type: {
                  name: 'Double'
                }
              },
              width: {
                client_side_validation: true,
                required: true,
                serialized_name: 'width',
                type: {
                  name: 'Double'
                }
              },
              height: {
                client_side_validation: true,
                required: true,
                serialized_name: 'height',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
