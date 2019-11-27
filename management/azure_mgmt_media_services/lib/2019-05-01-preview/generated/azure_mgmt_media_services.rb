# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2019-05-01-preview/generated/azure_mgmt_media_services/module_definition'
require 'ms_rest_azure'

module Azure::MediaServices::Mgmt::V2019_05_01_preview
  autoload :AccountFilters,                                     '2019-05-01-preview/generated/azure_mgmt_media_services/account_filters.rb'
  autoload :Operations,                                         '2019-05-01-preview/generated/azure_mgmt_media_services/operations.rb'
  autoload :Mediaservices,                                      '2019-05-01-preview/generated/azure_mgmt_media_services/mediaservices.rb'
  autoload :Locations,                                          '2019-05-01-preview/generated/azure_mgmt_media_services/locations.rb'
  autoload :Assets,                                             '2019-05-01-preview/generated/azure_mgmt_media_services/assets.rb'
  autoload :AssetFilters,                                       '2019-05-01-preview/generated/azure_mgmt_media_services/asset_filters.rb'
  autoload :ContentKeyPolicies,                                 '2019-05-01-preview/generated/azure_mgmt_media_services/content_key_policies.rb'
  autoload :Transforms,                                         '2019-05-01-preview/generated/azure_mgmt_media_services/transforms.rb'
  autoload :Jobs,                                               '2019-05-01-preview/generated/azure_mgmt_media_services/jobs.rb'
  autoload :StreamingPolicies,                                  '2019-05-01-preview/generated/azure_mgmt_media_services/streaming_policies.rb'
  autoload :StreamingLocators,                                  '2019-05-01-preview/generated/azure_mgmt_media_services/streaming_locators.rb'
  autoload :LiveEvents,                                         '2019-05-01-preview/generated/azure_mgmt_media_services/live_events.rb'
  autoload :LiveOutputs,                                        '2019-05-01-preview/generated/azure_mgmt_media_services/live_outputs.rb'
  autoload :StreamingEndpoints,                                 '2019-05-01-preview/generated/azure_mgmt_media_services/streaming_endpoints.rb'
  autoload :AzureMediaServices,                                 '2019-05-01-preview/generated/azure_mgmt_media_services/azure_media_services.rb'

  module Models
    autoload :Rectangle,                                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/rectangle.rb'
    autoload :Filters,                                            '2019-05-01-preview/generated/azure_mgmt_media_services/models/filters.rb'
    autoload :FilterTrackPropertyCondition,                       '2019-05-01-preview/generated/azure_mgmt_media_services/models/filter_track_property_condition.rb'
    autoload :Layer,                                              '2019-05-01-preview/generated/azure_mgmt_media_services/models/layer.rb'
    autoload :FilterTrackSelection,                               '2019-05-01-preview/generated/azure_mgmt_media_services/models/filter_track_selection.rb'
    autoload :Overlay,                                            '2019-05-01-preview/generated/azure_mgmt_media_services/models/overlay.rb'
    autoload :Codec,                                              '2019-05-01-preview/generated/azure_mgmt_media_services/models/codec.rb'
    autoload :ApiError,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/api_error.rb'
    autoload :CencDrmConfiguration,                               '2019-05-01-preview/generated/azure_mgmt_media_services/models/cenc_drm_configuration.rb'
    autoload :JobError,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/job_error.rb'
    autoload :JobErrorDetail,                                     '2019-05-01-preview/generated/azure_mgmt_media_services/models/job_error_detail.rb'
    autoload :CbcsDrmConfiguration,                               '2019-05-01-preview/generated/azure_mgmt_media_services/models/cbcs_drm_configuration.rb'
    autoload :LiveEventEndpoint,                                  '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event_endpoint.rb'
    autoload :OperationDisplay,                                   '2019-05-01-preview/generated/azure_mgmt_media_services/models/operation_display.rb'
    autoload :IPRange,                                            '2019-05-01-preview/generated/azure_mgmt_media_services/models/iprange.rb'
    autoload :Metric,                                             '2019-05-01-preview/generated/azure_mgmt_media_services/models/metric.rb'
    autoload :ContentKeyPolicyOption,                             '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_option.rb'
    autoload :MetricProperties,                                   '2019-05-01-preview/generated/azure_mgmt_media_services/models/metric_properties.rb'
    autoload :ContentKeyPolicyProperties,                         '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_properties.rb'
    autoload :Location,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/location.rb'
    autoload :IPAccessControl,                                    '2019-05-01-preview/generated/azure_mgmt_media_services/models/ipaccess_control.rb'
    autoload :StorageAccount,                                     '2019-05-01-preview/generated/azure_mgmt_media_services/models/storage_account.rb'
    autoload :ContentKeyPolicyCollection,                         '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_collection.rb'
    autoload :StreamingPolicyFairPlayConfiguration,               '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_policy_fair_play_configuration.rb'
    autoload :Preset,                                             '2019-05-01-preview/generated/azure_mgmt_media_services/models/preset.rb'
    autoload :OperationCollection,                                '2019-05-01-preview/generated/azure_mgmt_media_services/models/operation_collection.rb'
    autoload :AccountFilterCollection,                            '2019-05-01-preview/generated/azure_mgmt_media_services/models/account_filter_collection.rb'
    autoload :CheckNameAvailabilityInput,                         '2019-05-01-preview/generated/azure_mgmt_media_services/models/check_name_availability_input.rb'
    autoload :LiveEventInputAccessControl,                        '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event_input_access_control.rb'
    autoload :AssetContainerSas,                                  '2019-05-01-preview/generated/azure_mgmt_media_services/models/asset_container_sas.rb'
    autoload :EnvelopeEncryption,                                 '2019-05-01-preview/generated/azure_mgmt_media_services/models/envelope_encryption.rb'
    autoload :StorageEncryptedAssetDecryptionData,                '2019-05-01-preview/generated/azure_mgmt_media_services/models/storage_encrypted_asset_decryption_data.rb'
    autoload :NoEncryption,                                       '2019-05-01-preview/generated/azure_mgmt_media_services/models/no_encryption.rb'
    autoload :ListStreamingLocatorsResponse,                      '2019-05-01-preview/generated/azure_mgmt_media_services/models/list_streaming_locators_response.rb'
    autoload :EnabledProtocols,                                   '2019-05-01-preview/generated/azure_mgmt_media_services/models/enabled_protocols.rb'
    autoload :StreamingPolicyContentKeys,                         '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_policy_content_keys.rb'
    autoload :ODataError,                                         '2019-05-01-preview/generated/azure_mgmt_media_services/models/odata_error.rb'
    autoload :ListContainerSasInput,                              '2019-05-01-preview/generated/azure_mgmt_media_services/models/list_container_sas_input.rb'
    autoload :StreamingPolicyCollection,                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_policy_collection.rb'
    autoload :ContentKeyPolicyPlayReadyExplicitAnalogTelevisionRestriction, '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_explicit_analog_television_restriction.rb'
    autoload :ListPathsResponse,                                  '2019-05-01-preview/generated/azure_mgmt_media_services/models/list_paths_response.rb'
    autoload :StreamingPolicyContentKey,                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_policy_content_key.rb'
    autoload :ListContentKeysResponse,                            '2019-05-01-preview/generated/azure_mgmt_media_services/models/list_content_keys_response.rb'
    autoload :ContentKeyPolicyPlayReadyPlayRight,                 '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_play_right.rb'
    autoload :StreamingPath,                                      '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_path.rb'
    autoload :ContentKeyPolicyPlayReadyLicense,                   '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_license.rb'
    autoload :Format,                                             '2019-05-01-preview/generated/azure_mgmt_media_services/models/format.rb'
    autoload :TrackSelection,                                     '2019-05-01-preview/generated/azure_mgmt_media_services/models/track_selection.rb'
    autoload :StreamingLocatorContentKey,                         '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_locator_content_key.rb'
    autoload :ContentKeyPolicyConfiguration,                      '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_configuration.rb'
    autoload :StreamingLocatorCollection,                         '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_locator_collection.rb'
    autoload :JobCollection,                                      '2019-05-01-preview/generated/azure_mgmt_media_services/models/job_collection.rb'
    autoload :CommonEncryptionCbcs,                               '2019-05-01-preview/generated/azure_mgmt_media_services/models/common_encryption_cbcs.rb'
    autoload :Hls,                                                '2019-05-01-preview/generated/azure_mgmt_media_services/models/hls.rb'
    autoload :CommonEncryptionCenc,                               '2019-05-01-preview/generated/azure_mgmt_media_services/models/common_encryption_cenc.rb'
    autoload :JobOutput,                                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/job_output.rb'
    autoload :Deinterlace,                                        '2019-05-01-preview/generated/azure_mgmt_media_services/models/deinterlace.rb'
    autoload :Provider,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/provider.rb'
    autoload :PresentationTimeRange,                              '2019-05-01-preview/generated/azure_mgmt_media_services/models/presentation_time_range.rb'
    autoload :ServiceSpecification,                               '2019-05-01-preview/generated/azure_mgmt_media_services/models/service_specification.rb'
    autoload :FirstQuality,                                       '2019-05-01-preview/generated/azure_mgmt_media_services/models/first_quality.rb'
    autoload :EntityNameAvailabilityCheckOutput,                  '2019-05-01-preview/generated/azure_mgmt_media_services/models/entity_name_availability_check_output.rb'
    autoload :SyncStorageKeysInput,                               '2019-05-01-preview/generated/azure_mgmt_media_services/models/sync_storage_keys_input.rb'
    autoload :LiveEventInput,                                     '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event_input.rb'
    autoload :MediaServiceCollection,                             '2019-05-01-preview/generated/azure_mgmt_media_services/models/media_service_collection.rb'
    autoload :AssetFileEncryptionMetadata,                        '2019-05-01-preview/generated/azure_mgmt_media_services/models/asset_file_encryption_metadata.rb'
    autoload :StreamingEndpointListResult,                        '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_endpoint_list_result.rb'
    autoload :StreamingPolicyPlayReadyConfiguration,              '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_policy_play_ready_configuration.rb'
    autoload :StreamingEntityScaleUnit,                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_entity_scale_unit.rb'
    autoload :AssetFilterCollection,                              '2019-05-01-preview/generated/azure_mgmt_media_services/models/asset_filter_collection.rb'
    autoload :StreamingEndpointAccessControl,                     '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_endpoint_access_control.rb'
    autoload :DefaultKey,                                         '2019-05-01-preview/generated/azure_mgmt_media_services/models/default_key.rb'
    autoload :AkamaiAccessControl,                                '2019-05-01-preview/generated/azure_mgmt_media_services/models/akamai_access_control.rb'
    autoload :ContentKeyPolicyRestriction,                        '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_restriction.rb'
    autoload :OutputFile,                                         '2019-05-01-preview/generated/azure_mgmt_media_services/models/output_file.rb'
    autoload :ContentKeyPolicyRestrictionTokenKey,                '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_restriction_token_key.rb'
    autoload :AkamaiSignatureHeaderAuthenticationKey,             '2019-05-01-preview/generated/azure_mgmt_media_services/models/akamai_signature_header_authentication_key.rb'
    autoload :LiveOutputListResult,                               '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_output_list_result.rb'
    autoload :LiveEventListResult,                                '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event_list_result.rb'
    autoload :MetricDimension,                                    '2019-05-01-preview/generated/azure_mgmt_media_services/models/metric_dimension.rb'
    autoload :LiveEventActionInput,                               '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event_action_input.rb'
    autoload :StreamingPolicyWidevineConfiguration,               '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_policy_widevine_configuration.rb'
    autoload :CrossSiteAccessPolicies,                            '2019-05-01-preview/generated/azure_mgmt_media_services/models/cross_site_access_policies.rb'
    autoload :AssetStreamingLocator,                              '2019-05-01-preview/generated/azure_mgmt_media_services/models/asset_streaming_locator.rb'
    autoload :LiveEventTranscription,                             '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event_transcription.rb'
    autoload :ContentKeyPolicyPlayReadyContentKeyLocation,        '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_content_key_location.rb'
    autoload :LiveEventOutputTranscriptionTrack,                  '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event_output_transcription_track.rb'
    autoload :TrackPropertyCondition,                             '2019-05-01-preview/generated/azure_mgmt_media_services/models/track_property_condition.rb'
    autoload :LiveEventInputTrackSelection,                       '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event_input_track_selection.rb'
    autoload :Resource,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/resource.rb'
    autoload :LiveEventEncoding,                                  '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event_encoding.rb'
    autoload :SubscriptionMediaServiceCollection,                 '2019-05-01-preview/generated/azure_mgmt_media_services/models/subscription_media_service_collection.rb'
    autoload :LiveEventPreview,                                   '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event_preview.rb'
    autoload :ContentKeyPolicyTokenClaim,                         '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_token_claim.rb'
    autoload :TransformOutput,                                    '2019-05-01-preview/generated/azure_mgmt_media_services/models/transform_output.rb'
    autoload :Operation,                                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/operation.rb'
    autoload :LiveEventPreviewAccessControl,                      '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event_preview_access_control.rb'
    autoload :TransformCollection,                                '2019-05-01-preview/generated/azure_mgmt_media_services/models/transform_collection.rb'
    autoload :JobInput,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/job_input.rb'
    autoload :AssetCollection,                                    '2019-05-01-preview/generated/azure_mgmt_media_services/models/asset_collection.rb'
    autoload :ClipTime,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/clip_time.rb'
    autoload :AccountFilter,                                      '2019-05-01-preview/generated/azure_mgmt_media_services/models/account_filter.rb'
    autoload :TrackedResource,                                    '2019-05-01-preview/generated/azure_mgmt_media_services/models/tracked_resource.rb'
    autoload :ProxyResource,                                      '2019-05-01-preview/generated/azure_mgmt_media_services/models/proxy_resource.rb'
    autoload :MediaService,                                       '2019-05-01-preview/generated/azure_mgmt_media_services/models/media_service.rb'
    autoload :SubscriptionMediaService,                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/subscription_media_service.rb'
    autoload :Asset,                                              '2019-05-01-preview/generated/azure_mgmt_media_services/models/asset.rb'
    autoload :AssetFilter,                                        '2019-05-01-preview/generated/azure_mgmt_media_services/models/asset_filter.rb'
    autoload :ContentKeyPolicyPlayReadyContentEncryptionKeyFromHeader, '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_content_encryption_key_from_header.rb'
    autoload :ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier, '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_content_encryption_key_from_key_identifier.rb'
    autoload :ContentKeyPolicyOpenRestriction,                    '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_open_restriction.rb'
    autoload :ContentKeyPolicyUnknownRestriction,                 '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_unknown_restriction.rb'
    autoload :ContentKeyPolicySymmetricTokenKey,                  '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_symmetric_token_key.rb'
    autoload :ContentKeyPolicyRsaTokenKey,                        '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_rsa_token_key.rb'
    autoload :ContentKeyPolicyX509CertificateTokenKey,            '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_x509certificate_token_key.rb'
    autoload :ContentKeyPolicyTokenRestriction,                   '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_token_restriction.rb'
    autoload :ContentKeyPolicyClearKeyConfiguration,              '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_clear_key_configuration.rb'
    autoload :ContentKeyPolicyUnknownConfiguration,               '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_unknown_configuration.rb'
    autoload :ContentKeyPolicyWidevineConfiguration,              '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_widevine_configuration.rb'
    autoload :ContentKeyPolicyPlayReadyConfiguration,             '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_configuration.rb'
    autoload :ContentKeyPolicyFairPlayConfiguration,              '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_fair_play_configuration.rb'
    autoload :ContentKeyPolicy,                                   '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy.rb'
    autoload :Audio,                                              '2019-05-01-preview/generated/azure_mgmt_media_services/models/audio.rb'
    autoload :AacAudio,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/aac_audio.rb'
    autoload :FaceDetectorPreset,                                 '2019-05-01-preview/generated/azure_mgmt_media_services/models/face_detector_preset.rb'
    autoload :AudioAnalyzerPreset,                                '2019-05-01-preview/generated/azure_mgmt_media_services/models/audio_analyzer_preset.rb'
    autoload :AudioOverlay,                                       '2019-05-01-preview/generated/azure_mgmt_media_services/models/audio_overlay.rb'
    autoload :CopyVideo,                                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/copy_video.rb'
    autoload :Video,                                              '2019-05-01-preview/generated/azure_mgmt_media_services/models/video.rb'
    autoload :Image,                                              '2019-05-01-preview/generated/azure_mgmt_media_services/models/image.rb'
    autoload :ImageFormat,                                        '2019-05-01-preview/generated/azure_mgmt_media_services/models/image_format.rb'
    autoload :JpgFormat,                                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/jpg_format.rb'
    autoload :PngFormat,                                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/png_format.rb'
    autoload :CopyAudio,                                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/copy_audio.rb'
    autoload :VideoLayer,                                         '2019-05-01-preview/generated/azure_mgmt_media_services/models/video_layer.rb'
    autoload :H264Layer,                                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/h264layer.rb'
    autoload :H264Video,                                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/h264video.rb'
    autoload :JpgLayer,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/jpg_layer.rb'
    autoload :JpgImage,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/jpg_image.rb'
    autoload :MultiBitrateFormat,                                 '2019-05-01-preview/generated/azure_mgmt_media_services/models/multi_bitrate_format.rb'
    autoload :Mp4Format,                                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/mp4format.rb'
    autoload :PngLayer,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/png_layer.rb'
    autoload :PngImage,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/png_image.rb'
    autoload :BuiltInStandardEncoderPreset,                       '2019-05-01-preview/generated/azure_mgmt_media_services/models/built_in_standard_encoder_preset.rb'
    autoload :StandardEncoderPreset,                              '2019-05-01-preview/generated/azure_mgmt_media_services/models/standard_encoder_preset.rb'
    autoload :VideoAnalyzerPreset,                                '2019-05-01-preview/generated/azure_mgmt_media_services/models/video_analyzer_preset.rb'
    autoload :TransportStreamFormat,                              '2019-05-01-preview/generated/azure_mgmt_media_services/models/transport_stream_format.rb'
    autoload :VideoOverlay,                                       '2019-05-01-preview/generated/azure_mgmt_media_services/models/video_overlay.rb'
    autoload :Transform,                                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/transform.rb'
    autoload :JobInputClip,                                       '2019-05-01-preview/generated/azure_mgmt_media_services/models/job_input_clip.rb'
    autoload :AbsoluteClipTime,                                   '2019-05-01-preview/generated/azure_mgmt_media_services/models/absolute_clip_time.rb'
    autoload :JobInputs,                                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/job_inputs.rb'
    autoload :JobInputAsset,                                      '2019-05-01-preview/generated/azure_mgmt_media_services/models/job_input_asset.rb'
    autoload :JobInputHttp,                                       '2019-05-01-preview/generated/azure_mgmt_media_services/models/job_input_http.rb'
    autoload :JobOutputAsset,                                     '2019-05-01-preview/generated/azure_mgmt_media_services/models/job_output_asset.rb'
    autoload :Job,                                                '2019-05-01-preview/generated/azure_mgmt_media_services/models/job.rb'
    autoload :StreamingPolicy,                                    '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_policy.rb'
    autoload :StreamingLocator,                                   '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_locator.rb'
    autoload :LiveOutput,                                         '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_output.rb'
    autoload :LiveEvent,                                          '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event.rb'
    autoload :StreamingEndpoint,                                  '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_endpoint.rb'
    autoload :FilterTrackPropertyType,                            '2019-05-01-preview/generated/azure_mgmt_media_services/models/filter_track_property_type.rb'
    autoload :FilterTrackPropertyCompareOperation,                '2019-05-01-preview/generated/azure_mgmt_media_services/models/filter_track_property_compare_operation.rb'
    autoload :MetricUnit,                                         '2019-05-01-preview/generated/azure_mgmt_media_services/models/metric_unit.rb'
    autoload :MetricAggregationType,                              '2019-05-01-preview/generated/azure_mgmt_media_services/models/metric_aggregation_type.rb'
    autoload :StorageAccountType,                                 '2019-05-01-preview/generated/azure_mgmt_media_services/models/storage_account_type.rb'
    autoload :AssetStorageEncryptionFormat,                       '2019-05-01-preview/generated/azure_mgmt_media_services/models/asset_storage_encryption_format.rb'
    autoload :AssetContainerPermission,                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/asset_container_permission.rb'
    autoload :ContentKeyPolicyPlayReadyUnknownOutputPassingOption, '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_unknown_output_passing_option.rb'
    autoload :ContentKeyPolicyPlayReadyLicenseType,               '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_license_type.rb'
    autoload :ContentKeyPolicyPlayReadyContentType,               '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_play_ready_content_type.rb'
    autoload :ContentKeyPolicyRestrictionTokenType,               '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_restriction_token_type.rb'
    autoload :ContentKeyPolicyFairPlayRentalAndLeaseKeyType,      '2019-05-01-preview/generated/azure_mgmt_media_services/models/content_key_policy_fair_play_rental_and_lease_key_type.rb'
    autoload :AacAudioProfile,                                    '2019-05-01-preview/generated/azure_mgmt_media_services/models/aac_audio_profile.rb'
    autoload :AnalysisResolution,                                 '2019-05-01-preview/generated/azure_mgmt_media_services/models/analysis_resolution.rb'
    autoload :StretchMode,                                        '2019-05-01-preview/generated/azure_mgmt_media_services/models/stretch_mode.rb'
    autoload :DeinterlaceParity,                                  '2019-05-01-preview/generated/azure_mgmt_media_services/models/deinterlace_parity.rb'
    autoload :DeinterlaceMode,                                    '2019-05-01-preview/generated/azure_mgmt_media_services/models/deinterlace_mode.rb'
    autoload :Rotation,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/rotation.rb'
    autoload :H264VideoProfile,                                   '2019-05-01-preview/generated/azure_mgmt_media_services/models/h264video_profile.rb'
    autoload :EntropyMode,                                        '2019-05-01-preview/generated/azure_mgmt_media_services/models/entropy_mode.rb'
    autoload :H264Complexity,                                     '2019-05-01-preview/generated/azure_mgmt_media_services/models/h264complexity.rb'
    autoload :EncoderNamedPreset,                                 '2019-05-01-preview/generated/azure_mgmt_media_services/models/encoder_named_preset.rb'
    autoload :InsightsType,                                       '2019-05-01-preview/generated/azure_mgmt_media_services/models/insights_type.rb'
    autoload :OnErrorType,                                        '2019-05-01-preview/generated/azure_mgmt_media_services/models/on_error_type.rb'
    autoload :Priority,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/priority.rb'
    autoload :JobErrorCode,                                       '2019-05-01-preview/generated/azure_mgmt_media_services/models/job_error_code.rb'
    autoload :JobErrorCategory,                                   '2019-05-01-preview/generated/azure_mgmt_media_services/models/job_error_category.rb'
    autoload :JobRetry,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/job_retry.rb'
    autoload :JobState,                                           '2019-05-01-preview/generated/azure_mgmt_media_services/models/job_state.rb'
    autoload :TrackPropertyType,                                  '2019-05-01-preview/generated/azure_mgmt_media_services/models/track_property_type.rb'
    autoload :TrackPropertyCompareOperation,                      '2019-05-01-preview/generated/azure_mgmt_media_services/models/track_property_compare_operation.rb'
    autoload :StreamingLocatorContentKeyType,                     '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_locator_content_key_type.rb'
    autoload :StreamingPolicyStreamingProtocol,                   '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_policy_streaming_protocol.rb'
    autoload :EncryptionScheme,                                   '2019-05-01-preview/generated/azure_mgmt_media_services/models/encryption_scheme.rb'
    autoload :LiveOutputResourceState,                            '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_output_resource_state.rb'
    autoload :LiveEventInputProtocol,                             '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event_input_protocol.rb'
    autoload :LiveEventEncodingType,                              '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event_encoding_type.rb'
    autoload :LiveEventResourceState,                             '2019-05-01-preview/generated/azure_mgmt_media_services/models/live_event_resource_state.rb'
    autoload :StreamOptionsFlag,                                  '2019-05-01-preview/generated/azure_mgmt_media_services/models/stream_options_flag.rb'
    autoload :StreamingEndpointResourceState,                     '2019-05-01-preview/generated/azure_mgmt_media_services/models/streaming_endpoint_resource_state.rb'
  end
end