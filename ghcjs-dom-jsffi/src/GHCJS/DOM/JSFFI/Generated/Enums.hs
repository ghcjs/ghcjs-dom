{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Enums
       (KeyType(..), PToJSVal, ToJSVal, PFromJSVal, FromJSVal,
        js_KeyTypePublic, js_KeyTypePrivate, js_KeyTypeSecret,
        CryptoKeyUsage(..), js_CryptoKeyUsageEncrypt,
        js_CryptoKeyUsageDecrypt, js_CryptoKeyUsageSign,
        js_CryptoKeyUsageVerify, js_CryptoKeyUsageDeriveKey,
        js_CryptoKeyUsageDeriveBits, js_CryptoKeyUsageWrapKey,
        js_CryptoKeyUsageUnwrapKey, KeyFormat(..), js_KeyFormatRaw,
        js_KeyFormatSpki, js_KeyFormatPkcs8, js_KeyFormatJwk,
        FontFaceLoadStatus(..), js_FontFaceLoadStatusUnloaded,
        js_FontFaceLoadStatusLoading, js_FontFaceLoadStatusLoaded,
        js_FontFaceLoadStatusError, FontFaceSetLoadStatus(..),
        js_FontFaceSetLoadStatusLoading, js_FontFaceSetLoadStatusLoaded,
        VisibilityState(..), js_VisibilityStateHidden,
        js_VisibilityStateVisible, js_VisibilityStatePrerender,
        DocumentReadyState(..), js_DocumentReadyStateLoading,
        js_DocumentReadyStateInteractive, js_DocumentReadyStateComplete,
        ShadowRootMode(..), js_ShadowRootModeUserAgent,
        js_ShadowRootModeClosed, js_ShadowRootModeOpen,
        BlobLineEndings(..), js_BlobLineEndingsTransparent,
        js_BlobLineEndingsNative, ImageSmoothingQuality(..),
        js_ImageSmoothingQualityLow, js_ImageSmoothingQualityMedium,
        js_ImageSmoothingQualityHigh, CanvasWindingRule(..),
        js_CanvasWindingRuleNonzero, js_CanvasWindingRuleEvenodd,
        WebGLPowerPreference(..), js_WebGLPowerPreferenceDefault,
        js_WebGLPowerPreferenceLowPower,
        js_WebGLPowerPreferenceHighPerformance, WebGPUCompareFunction(..),
        js_WebGPUCompareFunctionNever, js_WebGPUCompareFunctionLess,
        js_WebGPUCompareFunctionEqual, js_WebGPUCompareFunctionLessequal,
        js_WebGPUCompareFunctionGreater, js_WebGPUCompareFunctionNotequal,
        js_WebGPUCompareFunctionGreaterequal,
        js_WebGPUCompareFunctionAlways, WebGPUPixelFormat(..),
        js_WebGPUPixelFormatBGRA8Unorm, WebGPULoadAction(..),
        js_WebGPULoadActionDontcare, js_WebGPULoadActionLoad,
        js_WebGPULoadActionClear, WebGPUStoreAction(..),
        js_WebGPUStoreActionDontcare, js_WebGPUStoreActionStore,
        js_WebGPUStoreActionMultisampleresolve, WebGPUPrimitiveType(..),
        js_WebGPUPrimitiveTypePoint, js_WebGPUPrimitiveTypeLine,
        js_WebGPUPrimitiveTypeLinestrip, js_WebGPUPrimitiveTypeTriangle,
        js_WebGPUPrimitiveTypeTrianglestrip, WebGPUFunctionType(..),
        js_WebGPUFunctionTypeFragment, js_WebGPUFunctionTypeVertex,
        WebGPUStencilOperation(..), js_WebGPUStencilOperationKeep,
        js_WebGPUStencilOperationZero, js_WebGPUStencilOperationReplace,
        js_WebGPUStencilOperationIncrementclamp,
        js_WebGPUStencilOperationDecrementclamp,
        js_WebGPUStencilOperationInvert,
        js_WebGPUStencilOperationIncrementwrap,
        js_WebGPUStencilOperationDecrementwrap, WebGPUStatus(..),
        js_WebGPUStatusNotenqueued, js_WebGPUStatusEnqueued,
        js_WebGPUStatusCommitted, js_WebGPUStatusScheduled,
        js_WebGPUStatusCompleted, js_WebGPUStatusError,
        WebGPUSamplerAddressMode(..),
        js_WebGPUSamplerAddressModeClamptoedge,
        js_WebGPUSamplerAddressModeMirrorclamptoedge,
        js_WebGPUSamplerAddressModeRepeat,
        js_WebGPUSamplerAddressModeMirrorrepeat,
        js_WebGPUSamplerAddressModeClamptozero,
        WebGPUSamplerMinMagFilter(..), js_WebGPUSamplerMinMagFilterNearest,
        js_WebGPUSamplerMinMagFilterLinear, WebGPUSamplerMipFilter(..),
        js_WebGPUSamplerMipFilterNotmipmapped,
        js_WebGPUSamplerMipFilterNearest, js_WebGPUSamplerMipFilterLinear,
        WebGPUCullMode(..), js_WebGPUCullModeNone, js_WebGPUCullModeFront,
        js_WebGPUCullModeBack, WebGPUIndexType(..),
        js_WebGPUIndexTypeUint16, js_WebGPUIndexTypeUint32,
        WebGPUVisibilityResultMode(..),
        js_WebGPUVisibilityResultModeDisabled,
        js_WebGPUVisibilityResultModeBoolean,
        js_WebGPUVisibilityResultModeCounting, WebGPUWinding(..),
        js_WebGPUWindingClockwise, js_WebGPUWindingCounterclockwise,
        WebGPUDepthClipMode(..), js_WebGPUDepthClipModeClip,
        js_WebGPUDepthClipModeClamp, WebGPUTriangleFillMode(..),
        js_WebGPUTriangleFillModeFill, js_WebGPUTriangleFillModeLines,
        WebGPUCPUCacheMode(..), js_WebGPUCPUCacheModeDefaultcache,
        js_WebGPUCPUCacheModeWritecombined, WebGPUStorageMode(..),
        js_WebGPUStorageModeShared, js_WebGPUStorageModeManaged,
        js_WebGPUStorageModePrivate, WebGPUResourceOptions(..),
        js_WebGPUResourceOptionsCpucachemodedefaultcache,
        js_WebGPUResourceOptionsCpucachemodewritecombined,
        js_WebGPUResourceOptionsStoragemodeshared,
        js_WebGPUResourceOptionsStoragemodemanaged,
        js_WebGPUResourceOptionsStoragemodeprivate,
        js_WebGPUResourceOptionsOptioncpucachemodedefaultcache,
        js_WebGPUResourceOptionsOptioncpucachemodewritecombined,
        WebGPUTextureUsage(..), js_WebGPUTextureUsageUnknown,
        js_WebGPUTextureUsageShaderread, js_WebGPUTextureUsageShaderwrite,
        js_WebGPUTextureUsageRendertarget,
        js_WebGPUTextureUsagePixelformatview, WebGPUBlendOperation(..),
        js_WebGPUBlendOperationAdd, js_WebGPUBlendOperationSubtract,
        js_WebGPUBlendOperationReversesubtract, js_WebGPUBlendOperationMin,
        js_WebGPUBlendOperationMax, WebGPUBlendFactor(..),
        js_WebGPUBlendFactorZero, js_WebGPUBlendFactorOne,
        js_WebGPUBlendFactorSourcecolor,
        js_WebGPUBlendFactorOneminussourcecolor,
        js_WebGPUBlendFactorSourcealpha,
        js_WebGPUBlendFactorOneminussourcealpha,
        js_WebGPUBlendFactorDestinationcolor,
        js_WebGPUBlendFactorOneminusdestinationcolor,
        js_WebGPUBlendFactorDestinationalpha,
        js_WebGPUBlendFactorOneminusdestinationalpha,
        js_WebGPUBlendFactorSourcealphasaturated,
        js_WebGPUBlendFactorBlendcolor,
        js_WebGPUBlendFactorOneminusblendcolor,
        js_WebGPUBlendFactorBlendalpha,
        js_WebGPUBlendFactorOneminusblendalpha, WebGPUColorWriteMask(..),
        js_WebGPUColorWriteMaskNone, js_WebGPUColorWriteMaskRed,
        js_WebGPUColorWriteMaskGreen, js_WebGPUColorWriteMaskBlue,
        js_WebGPUColorWriteMaskAlpha, js_WebGPUColorWriteMaskAll,
        WebGPUMultisampleDepthResolveFilter(..),
        js_WebGPUMultisampleDepthResolveFilterSample0,
        js_WebGPUMultisampleDepthResolveFilterMin,
        js_WebGPUMultisampleDepthResolveFilterMax, WebGPUFeatureSet(..),
        js_WebGPUFeatureSetLevel1, js_WebGPUFeatureSetLevel2,
        VideoPresentationMode(..), js_VideoPresentationModeFullscreen,
        js_VideoPresentationModePictureInPicture,
        js_VideoPresentationModeInline, TextTrackMode(..),
        js_TextTrackModeDisabled, js_TextTrackModeHidden,
        js_TextTrackModeShowing, TextTrackKind(..),
        js_TextTrackKindSubtitles, js_TextTrackKindCaptions,
        js_TextTrackKindDescriptions, js_TextTrackKindChapters,
        js_TextTrackKindMetadata, js_TextTrackKindForced,
        ApplePayErrorCode(..), js_ApplePayErrorCodeUnknown,
        js_ApplePayErrorCodeShippingContactInvalid,
        js_ApplePayErrorCodeBillingContactInvalid,
        js_ApplePayErrorCodeAddressUnservicable,
        ApplePayErrorContactField(..),
        js_ApplePayErrorContactFieldPhoneNumber,
        js_ApplePayErrorContactFieldEmailAddress,
        js_ApplePayErrorContactFieldName,
        js_ApplePayErrorContactFieldPostalAddress,
        js_ApplePayErrorContactFieldAddressLines,
        js_ApplePayErrorContactFieldLocality,
        js_ApplePayErrorContactFieldPostalCode,
        js_ApplePayErrorContactFieldAdministrativeArea,
        js_ApplePayErrorContactFieldCountry, ApplePayLineItemType(..),
        js_ApplePayLineItemTypePending, js_ApplePayLineItemTypeFinal,
        ApplePayPaymentMethodType(..), js_ApplePayPaymentMethodTypeDebit,
        js_ApplePayPaymentMethodTypeCredit,
        js_ApplePayPaymentMethodTypePrepaid,
        js_ApplePayPaymentMethodTypeStore,
        ApplePayPaymentPassActivationState(..),
        js_ApplePayPaymentPassActivationStateActivated,
        js_ApplePayPaymentPassActivationStateRequiresActivation,
        js_ApplePayPaymentPassActivationStateActivating,
        js_ApplePayPaymentPassActivationStateSuspended,
        js_ApplePayPaymentPassActivationStateDeactivated,
        ApplePayMerchantCapability(..),
        js_ApplePayMerchantCapabilitySupports3DS,
        js_ApplePayMerchantCapabilitySupportsEMV,
        js_ApplePayMerchantCapabilitySupportsCredit,
        js_ApplePayMerchantCapabilitySupportsDebit,
        ApplePayContactField(..), js_ApplePayContactFieldEmail,
        js_ApplePayContactFieldName, js_ApplePayContactFieldPhone,
        js_ApplePayContactFieldPostalAddress, ApplePayShippingType(..),
        js_ApplePayShippingTypeShipping, js_ApplePayShippingTypeDelivery,
        js_ApplePayShippingTypeStorePickup,
        js_ApplePayShippingTypeServicePickup, MediaKeyMessageType(..),
        js_MediaKeyMessageTypeLicenseRequest,
        js_MediaKeyMessageTypeLicenseRenewal,
        js_MediaKeyMessageTypeLicenseRelease,
        js_MediaKeyMessageTypeIndividualizationRequest,
        MediaKeySessionType(..), js_MediaKeySessionTypeTemporary,
        js_MediaKeySessionTypePersistentUsageRecord,
        js_MediaKeySessionTypePersistentLicense, MediaKeysRequirement(..),
        js_MediaKeysRequirementRequired, js_MediaKeysRequirementOptional,
        js_MediaKeysRequirementNotAllowed, MediaKeyStatus(..),
        js_MediaKeyStatusUsable, js_MediaKeyStatusExpired,
        js_MediaKeyStatusReleased, js_MediaKeyStatusOutputRestricted,
        js_MediaKeyStatusOutputDownscaled, js_MediaKeyStatusStatusPending,
        js_MediaKeyStatusInternalError, RequestType(..), js_RequestType,
        js_RequestTypeAudio, js_RequestTypeFont, js_RequestTypeImage,
        js_RequestTypeScript, js_RequestTypeStyle, js_RequestTypeTrack,
        js_RequestTypeVideo, RequestDestination(..), js_RequestDestination,
        js_RequestDestinationDocument, js_RequestDestinationSharedworker,
        js_RequestDestinationSubresource, js_RequestDestinationUnknown,
        js_RequestDestinationWorker, RequestMode(..),
        js_RequestModeNavigate, js_RequestModeSameOrigin,
        js_RequestModeNoCors, js_RequestModeCors, RequestCredentials(..),
        js_RequestCredentialsOmit, js_RequestCredentialsSameOrigin,
        js_RequestCredentialsInclude, RequestCache(..),
        js_RequestCacheDefault, js_RequestCacheNoStore,
        js_RequestCacheReload, js_RequestCacheNoCache,
        js_RequestCacheForceCache, js_RequestCacheOnlyIfCached,
        RequestRedirect(..), js_RequestRedirectFollow,
        js_RequestRedirectError, js_RequestRedirectManual,
        ReferrerPolicy(..), js_ReferrerPolicy, js_ReferrerPolicyNoReferrer,
        js_ReferrerPolicyNoReferrerWhenDowngrade, js_ReferrerPolicyOrigin,
        js_ReferrerPolicyOriginWhenCrossOrigin, js_ReferrerPolicyUnsafeUrl,
        ResponseType(..), js_ResponseTypeBasic, js_ResponseTypeCors,
        js_ResponseTypeDefault, js_ResponseTypeError,
        js_ResponseTypeOpaque, js_ResponseTypeOpaqueredirect,
        IDBCursorDirection(..), js_IDBCursorDirectionNext,
        js_IDBCursorDirectionNextunique, js_IDBCursorDirectionPrev,
        js_IDBCursorDirectionPrevunique, IDBRequestReadyState(..),
        js_IDBRequestReadyStatePending, js_IDBRequestReadyStateDone,
        IDBTransactionMode(..), js_IDBTransactionModeReadonly,
        js_IDBTransactionModeReadwrite, js_IDBTransactionModeVersionchange,
        DeviceType(..), js_DeviceTypeNone, js_DeviceTypeAirplay,
        js_DeviceTypeTvout, MediaSessionKind(..),
        js_MediaSessionKindContent, js_MediaSessionKindTransient,
        js_MediaSessionKindTransientSolo, js_MediaSessionKindAmbient,
        EndOfStreamError(..), js_EndOfStreamErrorNetwork,
        js_EndOfStreamErrorDecode, ReadyState(..), js_ReadyStateClosed,
        js_ReadyStateOpen, js_ReadyStateEnded, AppendMode(..),
        js_AppendModeSegments, js_AppendModeSequence, MediaDeviceKind(..),
        js_MediaDeviceKindAudioinput, js_MediaDeviceKindAudiooutput,
        js_MediaDeviceKindVideoinput, MediaStreamTrackState(..),
        js_MediaStreamTrackStateLive, js_MediaStreamTrackStateEnded,
        RTCIceTransportPolicy(..), js_RTCIceTransportPolicyRelay,
        js_RTCIceTransportPolicyAll, RTCBundlePolicy(..),
        js_RTCBundlePolicyBalanced, js_RTCBundlePolicyMaxCompat,
        js_RTCBundlePolicyMaxBundle, RTCDataChannelState(..),
        js_RTCDataChannelStateConnecting, js_RTCDataChannelStateOpen,
        js_RTCDataChannelStateClosing, js_RTCDataChannelStateClosed,
        RTCIceConnectionState(..), js_RTCIceConnectionStateNew,
        js_RTCIceConnectionStateChecking,
        js_RTCIceConnectionStateConnected,
        js_RTCIceConnectionStateCompleted, js_RTCIceConnectionStateFailed,
        js_RTCIceConnectionStateDisconnected,
        js_RTCIceConnectionStateClosed, RTCIceGatheringState(..),
        js_RTCIceGatheringStateNew, js_RTCIceGatheringStateGathering,
        js_RTCIceGatheringStateComplete, RTCIceTransportState(..),
        js_RTCIceTransportStateNew, js_RTCIceTransportStateChecking,
        js_RTCIceTransportStateConnected, js_RTCIceTransportStateCompleted,
        js_RTCIceTransportStateFailed, js_RTCIceTransportStateDisconnected,
        js_RTCIceTransportStateClosed, RTCPeerConnectionState(..),
        js_RTCPeerConnectionStateNew, js_RTCPeerConnectionStateConnecting,
        js_RTCPeerConnectionStateConnected,
        js_RTCPeerConnectionStateDisconnected,
        js_RTCPeerConnectionStateFailed, js_RTCPeerConnectionStateClosed,
        RTCDegradationPreference(..),
        js_RTCDegradationPreferenceMaintainFramerate,
        js_RTCDegradationPreferenceMaintainResolution,
        js_RTCDegradationPreferenceBalanced, RTCDtxStatus(..),
        js_RTCDtxStatusDisabled, js_RTCDtxStatusEnabled,
        RTCPriorityType(..), js_RTCPriorityTypeVeryLow,
        js_RTCPriorityTypeLow, js_RTCPriorityTypeMedium,
        js_RTCPriorityTypeHigh, RTCRtpTransceiverDirection(..),
        js_RTCRtpTransceiverDirectionSendrecv,
        js_RTCRtpTransceiverDirectionSendonly,
        js_RTCRtpTransceiverDirectionRecvonly,
        js_RTCRtpTransceiverDirectionInactive, RTCSdpType(..),
        js_RTCSdpTypeOffer, js_RTCSdpTypePranswer, js_RTCSdpTypeAnswer,
        js_RTCSdpTypeRollback, RTCSignalingState(..),
        js_RTCSignalingStateStable, js_RTCSignalingStateHaveLocalOffer,
        js_RTCSignalingStateHaveRemoteOffer,
        js_RTCSignalingStateHaveLocalPranswer,
        js_RTCSignalingStateHaveRemotePranswer, RTCStatsType(..),
        js_RTCStatsTypeCodec, js_RTCStatsTypeInboundRtp,
        js_RTCStatsTypeOutboundRtp, js_RTCStatsTypePeerConnection,
        js_RTCStatsTypeDataChannel, js_RTCStatsTypeTrack,
        js_RTCStatsTypeTransport, js_RTCStatsTypeCandidatePair,
        js_RTCStatsTypeLocalCandidate, js_RTCStatsTypeRemoteCandidate,
        js_RTCStatsTypeCertificate, NotificationDirection(..),
        js_NotificationDirectionAuto, js_NotificationDirectionLtr,
        js_NotificationDirectionRtl, AudioContextState(..),
        js_AudioContextStateSuspended, js_AudioContextStateRunning,
        js_AudioContextStateInterrupted, js_AudioContextStateClosed,
        BiquadFilterType(..), js_BiquadFilterTypeLowpass,
        js_BiquadFilterTypeHighpass, js_BiquadFilterTypeBandpass,
        js_BiquadFilterTypeLowshelf, js_BiquadFilterTypeHighshelf,
        js_BiquadFilterTypePeaking, js_BiquadFilterTypeNotch,
        js_BiquadFilterTypeAllpass, OscillatorType(..),
        js_OscillatorTypeSine, js_OscillatorTypeSquare,
        js_OscillatorTypeSawtooth, js_OscillatorTypeTriangle,
        js_OscillatorTypeCustom, PanningModelType(..),
        js_PanningModelTypeEqualpower, js_PanningModelTypeHRTF,
        DistanceModelType(..), js_DistanceModelTypeLinear,
        js_DistanceModelTypeInverse, js_DistanceModelTypeExponential,
        OverSampleType(..), js_OverSampleTypeNone, js_OverSampleType2x,
        js_OverSampleType4x, ScrollRestoration(..),
        js_ScrollRestorationAuto, js_ScrollRestorationManual,
        XMLHttpRequestResponseType(..), js_XMLHttpRequestResponseType,
        js_XMLHttpRequestResponseTypeArraybuffer,
        js_XMLHttpRequestResponseTypeBlob,
        js_XMLHttpRequestResponseTypeDocument,
        js_XMLHttpRequestResponseTypeJson,
        js_XMLHttpRequestResponseTypeText)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
 
data KeyType = KeyTypePublic
             | KeyTypePrivate
             | KeyTypeSecret
             deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal KeyType where
        pToJSVal KeyTypePublic = js_KeyTypePublic
        pToJSVal KeyTypePrivate = js_KeyTypePrivate
        pToJSVal KeyTypeSecret = js_KeyTypeSecret
 
instance ToJSVal KeyType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal KeyType where
        pFromJSVal x | x `js_eq` js_KeyTypePublic = KeyTypePublic
        pFromJSVal x | x `js_eq` js_KeyTypePrivate = KeyTypePrivate
        pFromJSVal x | x `js_eq` js_KeyTypeSecret = KeyTypeSecret
 
instance FromJSVal KeyType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"public\"" js_KeyTypePublic ::
        JSVal
 
foreign import javascript unsafe "\"private\"" js_KeyTypePrivate ::
        JSVal
 
foreign import javascript unsafe "\"secret\"" js_KeyTypeSecret ::
        JSVal
 
data CryptoKeyUsage = CryptoKeyUsageEncrypt
                    | CryptoKeyUsageDecrypt
                    | CryptoKeyUsageSign
                    | CryptoKeyUsageVerify
                    | CryptoKeyUsageDeriveKey
                    | CryptoKeyUsageDeriveBits
                    | CryptoKeyUsageWrapKey
                    | CryptoKeyUsageUnwrapKey
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal CryptoKeyUsage where
        pToJSVal CryptoKeyUsageEncrypt = js_CryptoKeyUsageEncrypt
        pToJSVal CryptoKeyUsageDecrypt = js_CryptoKeyUsageDecrypt
        pToJSVal CryptoKeyUsageSign = js_CryptoKeyUsageSign
        pToJSVal CryptoKeyUsageVerify = js_CryptoKeyUsageVerify
        pToJSVal CryptoKeyUsageDeriveKey = js_CryptoKeyUsageDeriveKey
        pToJSVal CryptoKeyUsageDeriveBits = js_CryptoKeyUsageDeriveBits
        pToJSVal CryptoKeyUsageWrapKey = js_CryptoKeyUsageWrapKey
        pToJSVal CryptoKeyUsageUnwrapKey = js_CryptoKeyUsageUnwrapKey
 
instance ToJSVal CryptoKeyUsage where
        toJSVal = return . pToJSVal
 
instance PFromJSVal CryptoKeyUsage where
        pFromJSVal x
          | x `js_eq` js_CryptoKeyUsageEncrypt = CryptoKeyUsageEncrypt
        pFromJSVal x
          | x `js_eq` js_CryptoKeyUsageDecrypt = CryptoKeyUsageDecrypt
        pFromJSVal x | x `js_eq` js_CryptoKeyUsageSign = CryptoKeyUsageSign
        pFromJSVal x
          | x `js_eq` js_CryptoKeyUsageVerify = CryptoKeyUsageVerify
        pFromJSVal x
          | x `js_eq` js_CryptoKeyUsageDeriveKey = CryptoKeyUsageDeriveKey
        pFromJSVal x
          | x `js_eq` js_CryptoKeyUsageDeriveBits = CryptoKeyUsageDeriveBits
        pFromJSVal x
          | x `js_eq` js_CryptoKeyUsageWrapKey = CryptoKeyUsageWrapKey
        pFromJSVal x
          | x `js_eq` js_CryptoKeyUsageUnwrapKey = CryptoKeyUsageUnwrapKey
 
instance FromJSVal CryptoKeyUsage where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"encrypt\""
        js_CryptoKeyUsageEncrypt :: JSVal
 
foreign import javascript unsafe "\"decrypt\""
        js_CryptoKeyUsageDecrypt :: JSVal
 
foreign import javascript unsafe "\"sign\"" js_CryptoKeyUsageSign
        :: JSVal
 
foreign import javascript unsafe "\"verify\""
        js_CryptoKeyUsageVerify :: JSVal
 
foreign import javascript unsafe "\"deriveKey\""
        js_CryptoKeyUsageDeriveKey :: JSVal
 
foreign import javascript unsafe "\"deriveBits\""
        js_CryptoKeyUsageDeriveBits :: JSVal
 
foreign import javascript unsafe "\"wrapKey\""
        js_CryptoKeyUsageWrapKey :: JSVal
 
foreign import javascript unsafe "\"unwrapKey\""
        js_CryptoKeyUsageUnwrapKey :: JSVal
 
data KeyFormat = KeyFormatRaw
               | KeyFormatSpki
               | KeyFormatPkcs8
               | KeyFormatJwk
               deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal KeyFormat where
        pToJSVal KeyFormatRaw = js_KeyFormatRaw
        pToJSVal KeyFormatSpki = js_KeyFormatSpki
        pToJSVal KeyFormatPkcs8 = js_KeyFormatPkcs8
        pToJSVal KeyFormatJwk = js_KeyFormatJwk
 
instance ToJSVal KeyFormat where
        toJSVal = return . pToJSVal
 
instance PFromJSVal KeyFormat where
        pFromJSVal x | x `js_eq` js_KeyFormatRaw = KeyFormatRaw
        pFromJSVal x | x `js_eq` js_KeyFormatSpki = KeyFormatSpki
        pFromJSVal x | x `js_eq` js_KeyFormatPkcs8 = KeyFormatPkcs8
        pFromJSVal x | x `js_eq` js_KeyFormatJwk = KeyFormatJwk
 
instance FromJSVal KeyFormat where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"raw\"" js_KeyFormatRaw :: JSVal
 
foreign import javascript unsafe "\"spki\"" js_KeyFormatSpki ::
        JSVal
 
foreign import javascript unsafe "\"pkcs8\"" js_KeyFormatPkcs8 ::
        JSVal
 
foreign import javascript unsafe "\"jwk\"" js_KeyFormatJwk :: JSVal
 
data FontFaceLoadStatus = FontFaceLoadStatusUnloaded
                        | FontFaceLoadStatusLoading
                        | FontFaceLoadStatusLoaded
                        | FontFaceLoadStatusError
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal FontFaceLoadStatus where
        pToJSVal FontFaceLoadStatusUnloaded = js_FontFaceLoadStatusUnloaded
        pToJSVal FontFaceLoadStatusLoading = js_FontFaceLoadStatusLoading
        pToJSVal FontFaceLoadStatusLoaded = js_FontFaceLoadStatusLoaded
        pToJSVal FontFaceLoadStatusError = js_FontFaceLoadStatusError
 
instance ToJSVal FontFaceLoadStatus where
        toJSVal = return . pToJSVal
 
instance PFromJSVal FontFaceLoadStatus where
        pFromJSVal x
          | x `js_eq` js_FontFaceLoadStatusUnloaded =
            FontFaceLoadStatusUnloaded
        pFromJSVal x
          | x `js_eq` js_FontFaceLoadStatusLoading =
            FontFaceLoadStatusLoading
        pFromJSVal x
          | x `js_eq` js_FontFaceLoadStatusLoaded = FontFaceLoadStatusLoaded
        pFromJSVal x
          | x `js_eq` js_FontFaceLoadStatusError = FontFaceLoadStatusError
 
instance FromJSVal FontFaceLoadStatus where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"unloaded\""
        js_FontFaceLoadStatusUnloaded :: JSVal
 
foreign import javascript unsafe "\"loading\""
        js_FontFaceLoadStatusLoading :: JSVal
 
foreign import javascript unsafe "\"loaded\""
        js_FontFaceLoadStatusLoaded :: JSVal
 
foreign import javascript unsafe "\"error\""
        js_FontFaceLoadStatusError :: JSVal
 
data FontFaceSetLoadStatus = FontFaceSetLoadStatusLoading
                           | FontFaceSetLoadStatusLoaded
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal FontFaceSetLoadStatus where
        pToJSVal FontFaceSetLoadStatusLoading
          = js_FontFaceSetLoadStatusLoading
        pToJSVal FontFaceSetLoadStatusLoaded
          = js_FontFaceSetLoadStatusLoaded
 
instance ToJSVal FontFaceSetLoadStatus where
        toJSVal = return . pToJSVal
 
instance PFromJSVal FontFaceSetLoadStatus where
        pFromJSVal x
          | x `js_eq` js_FontFaceSetLoadStatusLoading =
            FontFaceSetLoadStatusLoading
        pFromJSVal x
          | x `js_eq` js_FontFaceSetLoadStatusLoaded =
            FontFaceSetLoadStatusLoaded
 
instance FromJSVal FontFaceSetLoadStatus where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"loading\""
        js_FontFaceSetLoadStatusLoading :: JSVal
 
foreign import javascript unsafe "\"loaded\""
        js_FontFaceSetLoadStatusLoaded :: JSVal
 
data VisibilityState = VisibilityStateHidden
                     | VisibilityStateVisible
                     | VisibilityStatePrerender
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal VisibilityState where
        pToJSVal VisibilityStateHidden = js_VisibilityStateHidden
        pToJSVal VisibilityStateVisible = js_VisibilityStateVisible
        pToJSVal VisibilityStatePrerender = js_VisibilityStatePrerender
 
instance ToJSVal VisibilityState where
        toJSVal = return . pToJSVal
 
instance PFromJSVal VisibilityState where
        pFromJSVal x
          | x `js_eq` js_VisibilityStateHidden = VisibilityStateHidden
        pFromJSVal x
          | x `js_eq` js_VisibilityStateVisible = VisibilityStateVisible
        pFromJSVal x
          | x `js_eq` js_VisibilityStatePrerender = VisibilityStatePrerender
 
instance FromJSVal VisibilityState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"hidden\""
        js_VisibilityStateHidden :: JSVal
 
foreign import javascript unsafe "\"visible\""
        js_VisibilityStateVisible :: JSVal
 
foreign import javascript unsafe "\"prerender\""
        js_VisibilityStatePrerender :: JSVal
 
data DocumentReadyState = DocumentReadyStateLoading
                        | DocumentReadyStateInteractive
                        | DocumentReadyStateComplete
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal DocumentReadyState where
        pToJSVal DocumentReadyStateLoading = js_DocumentReadyStateLoading
        pToJSVal DocumentReadyStateInteractive
          = js_DocumentReadyStateInteractive
        pToJSVal DocumentReadyStateComplete = js_DocumentReadyStateComplete
 
instance ToJSVal DocumentReadyState where
        toJSVal = return . pToJSVal
 
instance PFromJSVal DocumentReadyState where
        pFromJSVal x
          | x `js_eq` js_DocumentReadyStateLoading =
            DocumentReadyStateLoading
        pFromJSVal x
          | x `js_eq` js_DocumentReadyStateInteractive =
            DocumentReadyStateInteractive
        pFromJSVal x
          | x `js_eq` js_DocumentReadyStateComplete =
            DocumentReadyStateComplete
 
instance FromJSVal DocumentReadyState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"loading\""
        js_DocumentReadyStateLoading :: JSVal
 
foreign import javascript unsafe "\"interactive\""
        js_DocumentReadyStateInteractive :: JSVal
 
foreign import javascript unsafe "\"complete\""
        js_DocumentReadyStateComplete :: JSVal
 
data ShadowRootMode = ShadowRootModeUserAgent
                    | ShadowRootModeClosed
                    | ShadowRootModeOpen
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ShadowRootMode where
        pToJSVal ShadowRootModeUserAgent = js_ShadowRootModeUserAgent
        pToJSVal ShadowRootModeClosed = js_ShadowRootModeClosed
        pToJSVal ShadowRootModeOpen = js_ShadowRootModeOpen
 
instance ToJSVal ShadowRootMode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ShadowRootMode where
        pFromJSVal x
          | x `js_eq` js_ShadowRootModeUserAgent = ShadowRootModeUserAgent
        pFromJSVal x
          | x `js_eq` js_ShadowRootModeClosed = ShadowRootModeClosed
        pFromJSVal x | x `js_eq` js_ShadowRootModeOpen = ShadowRootModeOpen
 
instance FromJSVal ShadowRootMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"user-agent\""
        js_ShadowRootModeUserAgent :: JSVal
 
foreign import javascript unsafe "\"closed\""
        js_ShadowRootModeClosed :: JSVal
 
foreign import javascript unsafe "\"open\"" js_ShadowRootModeOpen
        :: JSVal
 
data BlobLineEndings = BlobLineEndingsTransparent
                     | BlobLineEndingsNative
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal BlobLineEndings where
        pToJSVal BlobLineEndingsTransparent = js_BlobLineEndingsTransparent
        pToJSVal BlobLineEndingsNative = js_BlobLineEndingsNative
 
instance ToJSVal BlobLineEndings where
        toJSVal = return . pToJSVal
 
instance PFromJSVal BlobLineEndings where
        pFromJSVal x
          | x `js_eq` js_BlobLineEndingsTransparent =
            BlobLineEndingsTransparent
        pFromJSVal x
          | x `js_eq` js_BlobLineEndingsNative = BlobLineEndingsNative
 
instance FromJSVal BlobLineEndings where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"transparent\""
        js_BlobLineEndingsTransparent :: JSVal
 
foreign import javascript unsafe "\"native\""
        js_BlobLineEndingsNative :: JSVal
 
data ImageSmoothingQuality = ImageSmoothingQualityLow
                           | ImageSmoothingQualityMedium
                           | ImageSmoothingQualityHigh
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ImageSmoothingQuality where
        pToJSVal ImageSmoothingQualityLow = js_ImageSmoothingQualityLow
        pToJSVal ImageSmoothingQualityMedium
          = js_ImageSmoothingQualityMedium
        pToJSVal ImageSmoothingQualityHigh = js_ImageSmoothingQualityHigh
 
instance ToJSVal ImageSmoothingQuality where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ImageSmoothingQuality where
        pFromJSVal x
          | x `js_eq` js_ImageSmoothingQualityLow = ImageSmoothingQualityLow
        pFromJSVal x
          | x `js_eq` js_ImageSmoothingQualityMedium =
            ImageSmoothingQualityMedium
        pFromJSVal x
          | x `js_eq` js_ImageSmoothingQualityHigh =
            ImageSmoothingQualityHigh
 
instance FromJSVal ImageSmoothingQuality where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"low\""
        js_ImageSmoothingQualityLow :: JSVal
 
foreign import javascript unsafe "\"medium\""
        js_ImageSmoothingQualityMedium :: JSVal
 
foreign import javascript unsafe "\"high\""
        js_ImageSmoothingQualityHigh :: JSVal
 
data CanvasWindingRule = CanvasWindingRuleNonzero
                       | CanvasWindingRuleEvenodd
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal CanvasWindingRule where
        pToJSVal CanvasWindingRuleNonzero = js_CanvasWindingRuleNonzero
        pToJSVal CanvasWindingRuleEvenodd = js_CanvasWindingRuleEvenodd
 
instance ToJSVal CanvasWindingRule where
        toJSVal = return . pToJSVal
 
instance PFromJSVal CanvasWindingRule where
        pFromJSVal x
          | x `js_eq` js_CanvasWindingRuleNonzero = CanvasWindingRuleNonzero
        pFromJSVal x
          | x `js_eq` js_CanvasWindingRuleEvenodd = CanvasWindingRuleEvenodd
 
instance FromJSVal CanvasWindingRule where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"nonzero\""
        js_CanvasWindingRuleNonzero :: JSVal
 
foreign import javascript unsafe "\"evenodd\""
        js_CanvasWindingRuleEvenodd :: JSVal
 
data WebGLPowerPreference = WebGLPowerPreferenceDefault
                          | WebGLPowerPreferenceLowPower
                          | WebGLPowerPreferenceHighPerformance
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGLPowerPreference where
        pToJSVal WebGLPowerPreferenceDefault
          = js_WebGLPowerPreferenceDefault
        pToJSVal WebGLPowerPreferenceLowPower
          = js_WebGLPowerPreferenceLowPower
        pToJSVal WebGLPowerPreferenceHighPerformance
          = js_WebGLPowerPreferenceHighPerformance
 
instance ToJSVal WebGLPowerPreference where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGLPowerPreference where
        pFromJSVal x
          | x `js_eq` js_WebGLPowerPreferenceDefault =
            WebGLPowerPreferenceDefault
        pFromJSVal x
          | x `js_eq` js_WebGLPowerPreferenceLowPower =
            WebGLPowerPreferenceLowPower
        pFromJSVal x
          | x `js_eq` js_WebGLPowerPreferenceHighPerformance =
            WebGLPowerPreferenceHighPerformance
 
instance FromJSVal WebGLPowerPreference where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"default\""
        js_WebGLPowerPreferenceDefault :: JSVal
 
foreign import javascript unsafe "\"low-power\""
        js_WebGLPowerPreferenceLowPower :: JSVal
 
foreign import javascript unsafe "\"high-performance\""
        js_WebGLPowerPreferenceHighPerformance :: JSVal
 
data WebGPUCompareFunction = WebGPUCompareFunctionNever
                           | WebGPUCompareFunctionLess
                           | WebGPUCompareFunctionEqual
                           | WebGPUCompareFunctionLessequal
                           | WebGPUCompareFunctionGreater
                           | WebGPUCompareFunctionNotequal
                           | WebGPUCompareFunctionGreaterequal
                           | WebGPUCompareFunctionAlways
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUCompareFunction where
        pToJSVal WebGPUCompareFunctionNever = js_WebGPUCompareFunctionNever
        pToJSVal WebGPUCompareFunctionLess = js_WebGPUCompareFunctionLess
        pToJSVal WebGPUCompareFunctionEqual = js_WebGPUCompareFunctionEqual
        pToJSVal WebGPUCompareFunctionLessequal
          = js_WebGPUCompareFunctionLessequal
        pToJSVal WebGPUCompareFunctionGreater
          = js_WebGPUCompareFunctionGreater
        pToJSVal WebGPUCompareFunctionNotequal
          = js_WebGPUCompareFunctionNotequal
        pToJSVal WebGPUCompareFunctionGreaterequal
          = js_WebGPUCompareFunctionGreaterequal
        pToJSVal WebGPUCompareFunctionAlways
          = js_WebGPUCompareFunctionAlways
 
instance ToJSVal WebGPUCompareFunction where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUCompareFunction where
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionNever =
            WebGPUCompareFunctionNever
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionLess =
            WebGPUCompareFunctionLess
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionEqual =
            WebGPUCompareFunctionEqual
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionLessequal =
            WebGPUCompareFunctionLessequal
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionGreater =
            WebGPUCompareFunctionGreater
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionNotequal =
            WebGPUCompareFunctionNotequal
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionGreaterequal =
            WebGPUCompareFunctionGreaterequal
        pFromJSVal x
          | x `js_eq` js_WebGPUCompareFunctionAlways =
            WebGPUCompareFunctionAlways
 
instance FromJSVal WebGPUCompareFunction where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"never\""
        js_WebGPUCompareFunctionNever :: JSVal
 
foreign import javascript unsafe "\"less\""
        js_WebGPUCompareFunctionLess :: JSVal
 
foreign import javascript unsafe "\"equal\""
        js_WebGPUCompareFunctionEqual :: JSVal
 
foreign import javascript unsafe "\"lessequal\""
        js_WebGPUCompareFunctionLessequal :: JSVal
 
foreign import javascript unsafe "\"greater\""
        js_WebGPUCompareFunctionGreater :: JSVal
 
foreign import javascript unsafe "\"notequal\""
        js_WebGPUCompareFunctionNotequal :: JSVal
 
foreign import javascript unsafe "\"greaterequal\""
        js_WebGPUCompareFunctionGreaterequal :: JSVal
 
foreign import javascript unsafe "\"always\""
        js_WebGPUCompareFunctionAlways :: JSVal
 
data WebGPUPixelFormat = WebGPUPixelFormatBGRA8Unorm
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUPixelFormat where
        pToJSVal WebGPUPixelFormatBGRA8Unorm
          = js_WebGPUPixelFormatBGRA8Unorm
 
instance ToJSVal WebGPUPixelFormat where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUPixelFormat where
        pFromJSVal x
          | x `js_eq` js_WebGPUPixelFormatBGRA8Unorm =
            WebGPUPixelFormatBGRA8Unorm
 
instance FromJSVal WebGPUPixelFormat where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"BGRA8Unorm\""
        js_WebGPUPixelFormatBGRA8Unorm :: JSVal
 
data WebGPULoadAction = WebGPULoadActionDontcare
                      | WebGPULoadActionLoad
                      | WebGPULoadActionClear
                      deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPULoadAction where
        pToJSVal WebGPULoadActionDontcare = js_WebGPULoadActionDontcare
        pToJSVal WebGPULoadActionLoad = js_WebGPULoadActionLoad
        pToJSVal WebGPULoadActionClear = js_WebGPULoadActionClear
 
instance ToJSVal WebGPULoadAction where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPULoadAction where
        pFromJSVal x
          | x `js_eq` js_WebGPULoadActionDontcare = WebGPULoadActionDontcare
        pFromJSVal x
          | x `js_eq` js_WebGPULoadActionLoad = WebGPULoadActionLoad
        pFromJSVal x
          | x `js_eq` js_WebGPULoadActionClear = WebGPULoadActionClear
 
instance FromJSVal WebGPULoadAction where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"dontcare\""
        js_WebGPULoadActionDontcare :: JSVal
 
foreign import javascript unsafe "\"load\"" js_WebGPULoadActionLoad
        :: JSVal
 
foreign import javascript unsafe "\"clear\""
        js_WebGPULoadActionClear :: JSVal
 
data WebGPUStoreAction = WebGPUStoreActionDontcare
                       | WebGPUStoreActionStore
                       | WebGPUStoreActionMultisampleresolve
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUStoreAction where
        pToJSVal WebGPUStoreActionDontcare = js_WebGPUStoreActionDontcare
        pToJSVal WebGPUStoreActionStore = js_WebGPUStoreActionStore
        pToJSVal WebGPUStoreActionMultisampleresolve
          = js_WebGPUStoreActionMultisampleresolve
 
instance ToJSVal WebGPUStoreAction where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUStoreAction where
        pFromJSVal x
          | x `js_eq` js_WebGPUStoreActionDontcare =
            WebGPUStoreActionDontcare
        pFromJSVal x
          | x `js_eq` js_WebGPUStoreActionStore = WebGPUStoreActionStore
        pFromJSVal x
          | x `js_eq` js_WebGPUStoreActionMultisampleresolve =
            WebGPUStoreActionMultisampleresolve
 
instance FromJSVal WebGPUStoreAction where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"dontcare\""
        js_WebGPUStoreActionDontcare :: JSVal
 
foreign import javascript unsafe "\"store\""
        js_WebGPUStoreActionStore :: JSVal
 
foreign import javascript unsafe "\"multisampleresolve\""
        js_WebGPUStoreActionMultisampleresolve :: JSVal
 
data WebGPUPrimitiveType = WebGPUPrimitiveTypePoint
                         | WebGPUPrimitiveTypeLine
                         | WebGPUPrimitiveTypeLinestrip
                         | WebGPUPrimitiveTypeTriangle
                         | WebGPUPrimitiveTypeTrianglestrip
                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUPrimitiveType where
        pToJSVal WebGPUPrimitiveTypePoint = js_WebGPUPrimitiveTypePoint
        pToJSVal WebGPUPrimitiveTypeLine = js_WebGPUPrimitiveTypeLine
        pToJSVal WebGPUPrimitiveTypeLinestrip
          = js_WebGPUPrimitiveTypeLinestrip
        pToJSVal WebGPUPrimitiveTypeTriangle
          = js_WebGPUPrimitiveTypeTriangle
        pToJSVal WebGPUPrimitiveTypeTrianglestrip
          = js_WebGPUPrimitiveTypeTrianglestrip
 
instance ToJSVal WebGPUPrimitiveType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUPrimitiveType where
        pFromJSVal x
          | x `js_eq` js_WebGPUPrimitiveTypePoint = WebGPUPrimitiveTypePoint
        pFromJSVal x
          | x `js_eq` js_WebGPUPrimitiveTypeLine = WebGPUPrimitiveTypeLine
        pFromJSVal x
          | x `js_eq` js_WebGPUPrimitiveTypeLinestrip =
            WebGPUPrimitiveTypeLinestrip
        pFromJSVal x
          | x `js_eq` js_WebGPUPrimitiveTypeTriangle =
            WebGPUPrimitiveTypeTriangle
        pFromJSVal x
          | x `js_eq` js_WebGPUPrimitiveTypeTrianglestrip =
            WebGPUPrimitiveTypeTrianglestrip
 
instance FromJSVal WebGPUPrimitiveType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"point\""
        js_WebGPUPrimitiveTypePoint :: JSVal
 
foreign import javascript unsafe "\"line\""
        js_WebGPUPrimitiveTypeLine :: JSVal
 
foreign import javascript unsafe "\"linestrip\""
        js_WebGPUPrimitiveTypeLinestrip :: JSVal
 
foreign import javascript unsafe "\"triangle\""
        js_WebGPUPrimitiveTypeTriangle :: JSVal
 
foreign import javascript unsafe "\"trianglestrip\""
        js_WebGPUPrimitiveTypeTrianglestrip :: JSVal
 
data WebGPUFunctionType = WebGPUFunctionTypeFragment
                        | WebGPUFunctionTypeVertex
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUFunctionType where
        pToJSVal WebGPUFunctionTypeFragment = js_WebGPUFunctionTypeFragment
        pToJSVal WebGPUFunctionTypeVertex = js_WebGPUFunctionTypeVertex
 
instance ToJSVal WebGPUFunctionType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUFunctionType where
        pFromJSVal x
          | x `js_eq` js_WebGPUFunctionTypeFragment =
            WebGPUFunctionTypeFragment
        pFromJSVal x
          | x `js_eq` js_WebGPUFunctionTypeVertex = WebGPUFunctionTypeVertex
 
instance FromJSVal WebGPUFunctionType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"fragment\""
        js_WebGPUFunctionTypeFragment :: JSVal
 
foreign import javascript unsafe "\"vertex\""
        js_WebGPUFunctionTypeVertex :: JSVal
 
data WebGPUStencilOperation = WebGPUStencilOperationKeep
                            | WebGPUStencilOperationZero
                            | WebGPUStencilOperationReplace
                            | WebGPUStencilOperationIncrementclamp
                            | WebGPUStencilOperationDecrementclamp
                            | WebGPUStencilOperationInvert
                            | WebGPUStencilOperationIncrementwrap
                            | WebGPUStencilOperationDecrementwrap
                            deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUStencilOperation where
        pToJSVal WebGPUStencilOperationKeep = js_WebGPUStencilOperationKeep
        pToJSVal WebGPUStencilOperationZero = js_WebGPUStencilOperationZero
        pToJSVal WebGPUStencilOperationReplace
          = js_WebGPUStencilOperationReplace
        pToJSVal WebGPUStencilOperationIncrementclamp
          = js_WebGPUStencilOperationIncrementclamp
        pToJSVal WebGPUStencilOperationDecrementclamp
          = js_WebGPUStencilOperationDecrementclamp
        pToJSVal WebGPUStencilOperationInvert
          = js_WebGPUStencilOperationInvert
        pToJSVal WebGPUStencilOperationIncrementwrap
          = js_WebGPUStencilOperationIncrementwrap
        pToJSVal WebGPUStencilOperationDecrementwrap
          = js_WebGPUStencilOperationDecrementwrap
 
instance ToJSVal WebGPUStencilOperation where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUStencilOperation where
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationKeep =
            WebGPUStencilOperationKeep
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationZero =
            WebGPUStencilOperationZero
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationReplace =
            WebGPUStencilOperationReplace
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationIncrementclamp =
            WebGPUStencilOperationIncrementclamp
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationDecrementclamp =
            WebGPUStencilOperationDecrementclamp
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationInvert =
            WebGPUStencilOperationInvert
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationIncrementwrap =
            WebGPUStencilOperationIncrementwrap
        pFromJSVal x
          | x `js_eq` js_WebGPUStencilOperationDecrementwrap =
            WebGPUStencilOperationDecrementwrap
 
instance FromJSVal WebGPUStencilOperation where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"keep\""
        js_WebGPUStencilOperationKeep :: JSVal
 
foreign import javascript unsafe "\"zero\""
        js_WebGPUStencilOperationZero :: JSVal
 
foreign import javascript unsafe "\"replace\""
        js_WebGPUStencilOperationReplace :: JSVal
 
foreign import javascript unsafe "\"incrementclamp\""
        js_WebGPUStencilOperationIncrementclamp :: JSVal
 
foreign import javascript unsafe "\"decrementclamp\""
        js_WebGPUStencilOperationDecrementclamp :: JSVal
 
foreign import javascript unsafe "\"invert\""
        js_WebGPUStencilOperationInvert :: JSVal
 
foreign import javascript unsafe "\"incrementwrap\""
        js_WebGPUStencilOperationIncrementwrap :: JSVal
 
foreign import javascript unsafe "\"decrementwrap\""
        js_WebGPUStencilOperationDecrementwrap :: JSVal
 
data WebGPUStatus = WebGPUStatusNotenqueued
                  | WebGPUStatusEnqueued
                  | WebGPUStatusCommitted
                  | WebGPUStatusScheduled
                  | WebGPUStatusCompleted
                  | WebGPUStatusError
                  deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUStatus where
        pToJSVal WebGPUStatusNotenqueued = js_WebGPUStatusNotenqueued
        pToJSVal WebGPUStatusEnqueued = js_WebGPUStatusEnqueued
        pToJSVal WebGPUStatusCommitted = js_WebGPUStatusCommitted
        pToJSVal WebGPUStatusScheduled = js_WebGPUStatusScheduled
        pToJSVal WebGPUStatusCompleted = js_WebGPUStatusCompleted
        pToJSVal WebGPUStatusError = js_WebGPUStatusError
 
instance ToJSVal WebGPUStatus where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUStatus where
        pFromJSVal x
          | x `js_eq` js_WebGPUStatusNotenqueued = WebGPUStatusNotenqueued
        pFromJSVal x
          | x `js_eq` js_WebGPUStatusEnqueued = WebGPUStatusEnqueued
        pFromJSVal x
          | x `js_eq` js_WebGPUStatusCommitted = WebGPUStatusCommitted
        pFromJSVal x
          | x `js_eq` js_WebGPUStatusScheduled = WebGPUStatusScheduled
        pFromJSVal x
          | x `js_eq` js_WebGPUStatusCompleted = WebGPUStatusCompleted
        pFromJSVal x | x `js_eq` js_WebGPUStatusError = WebGPUStatusError
 
instance FromJSVal WebGPUStatus where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"notenqueued\""
        js_WebGPUStatusNotenqueued :: JSVal
 
foreign import javascript unsafe "\"enqueued\""
        js_WebGPUStatusEnqueued :: JSVal
 
foreign import javascript unsafe "\"committed\""
        js_WebGPUStatusCommitted :: JSVal
 
foreign import javascript unsafe "\"scheduled\""
        js_WebGPUStatusScheduled :: JSVal
 
foreign import javascript unsafe "\"completed\""
        js_WebGPUStatusCompleted :: JSVal
 
foreign import javascript unsafe "\"error\"" js_WebGPUStatusError
        :: JSVal
 
data WebGPUSamplerAddressMode = WebGPUSamplerAddressModeClamptoedge
                              | WebGPUSamplerAddressModeMirrorclamptoedge
                              | WebGPUSamplerAddressModeRepeat
                              | WebGPUSamplerAddressModeMirrorrepeat
                              | WebGPUSamplerAddressModeClamptozero
                              deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUSamplerAddressMode where
        pToJSVal WebGPUSamplerAddressModeClamptoedge
          = js_WebGPUSamplerAddressModeClamptoedge
        pToJSVal WebGPUSamplerAddressModeMirrorclamptoedge
          = js_WebGPUSamplerAddressModeMirrorclamptoedge
        pToJSVal WebGPUSamplerAddressModeRepeat
          = js_WebGPUSamplerAddressModeRepeat
        pToJSVal WebGPUSamplerAddressModeMirrorrepeat
          = js_WebGPUSamplerAddressModeMirrorrepeat
        pToJSVal WebGPUSamplerAddressModeClamptozero
          = js_WebGPUSamplerAddressModeClamptozero
 
instance ToJSVal WebGPUSamplerAddressMode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUSamplerAddressMode where
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerAddressModeClamptoedge =
            WebGPUSamplerAddressModeClamptoedge
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerAddressModeMirrorclamptoedge =
            WebGPUSamplerAddressModeMirrorclamptoedge
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerAddressModeRepeat =
            WebGPUSamplerAddressModeRepeat
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerAddressModeMirrorrepeat =
            WebGPUSamplerAddressModeMirrorrepeat
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerAddressModeClamptozero =
            WebGPUSamplerAddressModeClamptozero
 
instance FromJSVal WebGPUSamplerAddressMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"clamptoedge\""
        js_WebGPUSamplerAddressModeClamptoedge :: JSVal
 
foreign import javascript unsafe "\"mirrorclamptoedge\""
        js_WebGPUSamplerAddressModeMirrorclamptoedge :: JSVal
 
foreign import javascript unsafe "\"repeat\""
        js_WebGPUSamplerAddressModeRepeat :: JSVal
 
foreign import javascript unsafe "\"mirrorrepeat\""
        js_WebGPUSamplerAddressModeMirrorrepeat :: JSVal
 
foreign import javascript unsafe "\"clamptozero\""
        js_WebGPUSamplerAddressModeClamptozero :: JSVal
 
data WebGPUSamplerMinMagFilter = WebGPUSamplerMinMagFilterNearest
                               | WebGPUSamplerMinMagFilterLinear
                               deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUSamplerMinMagFilter where
        pToJSVal WebGPUSamplerMinMagFilterNearest
          = js_WebGPUSamplerMinMagFilterNearest
        pToJSVal WebGPUSamplerMinMagFilterLinear
          = js_WebGPUSamplerMinMagFilterLinear
 
instance ToJSVal WebGPUSamplerMinMagFilter where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUSamplerMinMagFilter where
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerMinMagFilterNearest =
            WebGPUSamplerMinMagFilterNearest
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerMinMagFilterLinear =
            WebGPUSamplerMinMagFilterLinear
 
instance FromJSVal WebGPUSamplerMinMagFilter where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"nearest\""
        js_WebGPUSamplerMinMagFilterNearest :: JSVal
 
foreign import javascript unsafe "\"linear\""
        js_WebGPUSamplerMinMagFilterLinear :: JSVal
 
data WebGPUSamplerMipFilter = WebGPUSamplerMipFilterNotmipmapped
                            | WebGPUSamplerMipFilterNearest
                            | WebGPUSamplerMipFilterLinear
                            deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUSamplerMipFilter where
        pToJSVal WebGPUSamplerMipFilterNotmipmapped
          = js_WebGPUSamplerMipFilterNotmipmapped
        pToJSVal WebGPUSamplerMipFilterNearest
          = js_WebGPUSamplerMipFilterNearest
        pToJSVal WebGPUSamplerMipFilterLinear
          = js_WebGPUSamplerMipFilterLinear
 
instance ToJSVal WebGPUSamplerMipFilter where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUSamplerMipFilter where
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerMipFilterNotmipmapped =
            WebGPUSamplerMipFilterNotmipmapped
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerMipFilterNearest =
            WebGPUSamplerMipFilterNearest
        pFromJSVal x
          | x `js_eq` js_WebGPUSamplerMipFilterLinear =
            WebGPUSamplerMipFilterLinear
 
instance FromJSVal WebGPUSamplerMipFilter where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"notmipmapped\""
        js_WebGPUSamplerMipFilterNotmipmapped :: JSVal
 
foreign import javascript unsafe "\"nearest\""
        js_WebGPUSamplerMipFilterNearest :: JSVal
 
foreign import javascript unsafe "\"linear\""
        js_WebGPUSamplerMipFilterLinear :: JSVal
 
data WebGPUCullMode = WebGPUCullModeNone
                    | WebGPUCullModeFront
                    | WebGPUCullModeBack
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUCullMode where
        pToJSVal WebGPUCullModeNone = js_WebGPUCullModeNone
        pToJSVal WebGPUCullModeFront = js_WebGPUCullModeFront
        pToJSVal WebGPUCullModeBack = js_WebGPUCullModeBack
 
instance ToJSVal WebGPUCullMode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUCullMode where
        pFromJSVal x | x `js_eq` js_WebGPUCullModeNone = WebGPUCullModeNone
        pFromJSVal x
          | x `js_eq` js_WebGPUCullModeFront = WebGPUCullModeFront
        pFromJSVal x | x `js_eq` js_WebGPUCullModeBack = WebGPUCullModeBack
 
instance FromJSVal WebGPUCullMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"none\"" js_WebGPUCullModeNone
        :: JSVal
 
foreign import javascript unsafe "\"front\"" js_WebGPUCullModeFront
        :: JSVal
 
foreign import javascript unsafe "\"back\"" js_WebGPUCullModeBack
        :: JSVal
 
data WebGPUIndexType = WebGPUIndexTypeUint16
                     | WebGPUIndexTypeUint32
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUIndexType where
        pToJSVal WebGPUIndexTypeUint16 = js_WebGPUIndexTypeUint16
        pToJSVal WebGPUIndexTypeUint32 = js_WebGPUIndexTypeUint32
 
instance ToJSVal WebGPUIndexType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUIndexType where
        pFromJSVal x
          | x `js_eq` js_WebGPUIndexTypeUint16 = WebGPUIndexTypeUint16
        pFromJSVal x
          | x `js_eq` js_WebGPUIndexTypeUint32 = WebGPUIndexTypeUint32
 
instance FromJSVal WebGPUIndexType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"uint16\""
        js_WebGPUIndexTypeUint16 :: JSVal
 
foreign import javascript unsafe "\"uint32\""
        js_WebGPUIndexTypeUint32 :: JSVal
 
data WebGPUVisibilityResultMode = WebGPUVisibilityResultModeDisabled
                                | WebGPUVisibilityResultModeBoolean
                                | WebGPUVisibilityResultModeCounting
                                deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUVisibilityResultMode where
        pToJSVal WebGPUVisibilityResultModeDisabled
          = js_WebGPUVisibilityResultModeDisabled
        pToJSVal WebGPUVisibilityResultModeBoolean
          = js_WebGPUVisibilityResultModeBoolean
        pToJSVal WebGPUVisibilityResultModeCounting
          = js_WebGPUVisibilityResultModeCounting
 
instance ToJSVal WebGPUVisibilityResultMode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUVisibilityResultMode where
        pFromJSVal x
          | x `js_eq` js_WebGPUVisibilityResultModeDisabled =
            WebGPUVisibilityResultModeDisabled
        pFromJSVal x
          | x `js_eq` js_WebGPUVisibilityResultModeBoolean =
            WebGPUVisibilityResultModeBoolean
        pFromJSVal x
          | x `js_eq` js_WebGPUVisibilityResultModeCounting =
            WebGPUVisibilityResultModeCounting
 
instance FromJSVal WebGPUVisibilityResultMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"disabled\""
        js_WebGPUVisibilityResultModeDisabled :: JSVal
 
foreign import javascript unsafe "\"boolean\""
        js_WebGPUVisibilityResultModeBoolean :: JSVal
 
foreign import javascript unsafe "\"counting\""
        js_WebGPUVisibilityResultModeCounting :: JSVal
 
data WebGPUWinding = WebGPUWindingClockwise
                   | WebGPUWindingCounterclockwise
                   deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUWinding where
        pToJSVal WebGPUWindingClockwise = js_WebGPUWindingClockwise
        pToJSVal WebGPUWindingCounterclockwise
          = js_WebGPUWindingCounterclockwise
 
instance ToJSVal WebGPUWinding where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUWinding where
        pFromJSVal x
          | x `js_eq` js_WebGPUWindingClockwise = WebGPUWindingClockwise
        pFromJSVal x
          | x `js_eq` js_WebGPUWindingCounterclockwise =
            WebGPUWindingCounterclockwise
 
instance FromJSVal WebGPUWinding where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"clockwise\""
        js_WebGPUWindingClockwise :: JSVal
 
foreign import javascript unsafe "\"counterclockwise\""
        js_WebGPUWindingCounterclockwise :: JSVal
 
data WebGPUDepthClipMode = WebGPUDepthClipModeClip
                         | WebGPUDepthClipModeClamp
                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUDepthClipMode where
        pToJSVal WebGPUDepthClipModeClip = js_WebGPUDepthClipModeClip
        pToJSVal WebGPUDepthClipModeClamp = js_WebGPUDepthClipModeClamp
 
instance ToJSVal WebGPUDepthClipMode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUDepthClipMode where
        pFromJSVal x
          | x `js_eq` js_WebGPUDepthClipModeClip = WebGPUDepthClipModeClip
        pFromJSVal x
          | x `js_eq` js_WebGPUDepthClipModeClamp = WebGPUDepthClipModeClamp
 
instance FromJSVal WebGPUDepthClipMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"clip\""
        js_WebGPUDepthClipModeClip :: JSVal
 
foreign import javascript unsafe "\"clamp\""
        js_WebGPUDepthClipModeClamp :: JSVal
 
data WebGPUTriangleFillMode = WebGPUTriangleFillModeFill
                            | WebGPUTriangleFillModeLines
                            deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUTriangleFillMode where
        pToJSVal WebGPUTriangleFillModeFill = js_WebGPUTriangleFillModeFill
        pToJSVal WebGPUTriangleFillModeLines
          = js_WebGPUTriangleFillModeLines
 
instance ToJSVal WebGPUTriangleFillMode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUTriangleFillMode where
        pFromJSVal x
          | x `js_eq` js_WebGPUTriangleFillModeFill =
            WebGPUTriangleFillModeFill
        pFromJSVal x
          | x `js_eq` js_WebGPUTriangleFillModeLines =
            WebGPUTriangleFillModeLines
 
instance FromJSVal WebGPUTriangleFillMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"fill\""
        js_WebGPUTriangleFillModeFill :: JSVal
 
foreign import javascript unsafe "\"lines\""
        js_WebGPUTriangleFillModeLines :: JSVal
 
data WebGPUCPUCacheMode = WebGPUCPUCacheModeDefaultcache
                        | WebGPUCPUCacheModeWritecombined
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUCPUCacheMode where
        pToJSVal WebGPUCPUCacheModeDefaultcache
          = js_WebGPUCPUCacheModeDefaultcache
        pToJSVal WebGPUCPUCacheModeWritecombined
          = js_WebGPUCPUCacheModeWritecombined
 
instance ToJSVal WebGPUCPUCacheMode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUCPUCacheMode where
        pFromJSVal x
          | x `js_eq` js_WebGPUCPUCacheModeDefaultcache =
            WebGPUCPUCacheModeDefaultcache
        pFromJSVal x
          | x `js_eq` js_WebGPUCPUCacheModeWritecombined =
            WebGPUCPUCacheModeWritecombined
 
instance FromJSVal WebGPUCPUCacheMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"defaultcache\""
        js_WebGPUCPUCacheModeDefaultcache :: JSVal
 
foreign import javascript unsafe "\"writecombined\""
        js_WebGPUCPUCacheModeWritecombined :: JSVal
 
data WebGPUStorageMode = WebGPUStorageModeShared
                       | WebGPUStorageModeManaged
                       | WebGPUStorageModePrivate
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUStorageMode where
        pToJSVal WebGPUStorageModeShared = js_WebGPUStorageModeShared
        pToJSVal WebGPUStorageModeManaged = js_WebGPUStorageModeManaged
        pToJSVal WebGPUStorageModePrivate = js_WebGPUStorageModePrivate
 
instance ToJSVal WebGPUStorageMode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUStorageMode where
        pFromJSVal x
          | x `js_eq` js_WebGPUStorageModeShared = WebGPUStorageModeShared
        pFromJSVal x
          | x `js_eq` js_WebGPUStorageModeManaged = WebGPUStorageModeManaged
        pFromJSVal x
          | x `js_eq` js_WebGPUStorageModePrivate = WebGPUStorageModePrivate
 
instance FromJSVal WebGPUStorageMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"shared\""
        js_WebGPUStorageModeShared :: JSVal
 
foreign import javascript unsafe "\"managed\""
        js_WebGPUStorageModeManaged :: JSVal
 
foreign import javascript unsafe "\"private\""
        js_WebGPUStorageModePrivate :: JSVal
 
data WebGPUResourceOptions = WebGPUResourceOptionsCpucachemodedefaultcache
                           | WebGPUResourceOptionsCpucachemodewritecombined
                           | WebGPUResourceOptionsStoragemodeshared
                           | WebGPUResourceOptionsStoragemodemanaged
                           | WebGPUResourceOptionsStoragemodeprivate
                           | WebGPUResourceOptionsOptioncpucachemodedefaultcache
                           | WebGPUResourceOptionsOptioncpucachemodewritecombined
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUResourceOptions where
        pToJSVal WebGPUResourceOptionsCpucachemodedefaultcache
          = js_WebGPUResourceOptionsCpucachemodedefaultcache
        pToJSVal WebGPUResourceOptionsCpucachemodewritecombined
          = js_WebGPUResourceOptionsCpucachemodewritecombined
        pToJSVal WebGPUResourceOptionsStoragemodeshared
          = js_WebGPUResourceOptionsStoragemodeshared
        pToJSVal WebGPUResourceOptionsStoragemodemanaged
          = js_WebGPUResourceOptionsStoragemodemanaged
        pToJSVal WebGPUResourceOptionsStoragemodeprivate
          = js_WebGPUResourceOptionsStoragemodeprivate
        pToJSVal WebGPUResourceOptionsOptioncpucachemodedefaultcache
          = js_WebGPUResourceOptionsOptioncpucachemodedefaultcache
        pToJSVal WebGPUResourceOptionsOptioncpucachemodewritecombined
          = js_WebGPUResourceOptionsOptioncpucachemodewritecombined
 
instance ToJSVal WebGPUResourceOptions where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUResourceOptions where
        pFromJSVal x
          | x `js_eq` js_WebGPUResourceOptionsCpucachemodedefaultcache =
            WebGPUResourceOptionsCpucachemodedefaultcache
        pFromJSVal x
          | x `js_eq` js_WebGPUResourceOptionsCpucachemodewritecombined =
            WebGPUResourceOptionsCpucachemodewritecombined
        pFromJSVal x
          | x `js_eq` js_WebGPUResourceOptionsStoragemodeshared =
            WebGPUResourceOptionsStoragemodeshared
        pFromJSVal x
          | x `js_eq` js_WebGPUResourceOptionsStoragemodemanaged =
            WebGPUResourceOptionsStoragemodemanaged
        pFromJSVal x
          | x `js_eq` js_WebGPUResourceOptionsStoragemodeprivate =
            WebGPUResourceOptionsStoragemodeprivate
        pFromJSVal x
          | x `js_eq` js_WebGPUResourceOptionsOptioncpucachemodedefaultcache
            = WebGPUResourceOptionsOptioncpucachemodedefaultcache
        pFromJSVal x
          | x `js_eq` js_WebGPUResourceOptionsOptioncpucachemodewritecombined
            = WebGPUResourceOptionsOptioncpucachemodewritecombined
 
instance FromJSVal WebGPUResourceOptions where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"cpucachemodedefaultcache\""
        js_WebGPUResourceOptionsCpucachemodedefaultcache :: JSVal
 
foreign import javascript unsafe "\"cpucachemodewritecombined\""
        js_WebGPUResourceOptionsCpucachemodewritecombined :: JSVal
 
foreign import javascript unsafe "\"storagemodeshared\""
        js_WebGPUResourceOptionsStoragemodeshared :: JSVal
 
foreign import javascript unsafe "\"storagemodemanaged\""
        js_WebGPUResourceOptionsStoragemodemanaged :: JSVal
 
foreign import javascript unsafe "\"storagemodeprivate\""
        js_WebGPUResourceOptionsStoragemodeprivate :: JSVal
 
foreign import javascript unsafe
        "\"optioncpucachemodedefaultcache\""
        js_WebGPUResourceOptionsOptioncpucachemodedefaultcache :: JSVal
 
foreign import javascript unsafe
        "\"optioncpucachemodewritecombined\""
        js_WebGPUResourceOptionsOptioncpucachemodewritecombined :: JSVal
 
data WebGPUTextureUsage = WebGPUTextureUsageUnknown
                        | WebGPUTextureUsageShaderread
                        | WebGPUTextureUsageShaderwrite
                        | WebGPUTextureUsageRendertarget
                        | WebGPUTextureUsagePixelformatview
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUTextureUsage where
        pToJSVal WebGPUTextureUsageUnknown = js_WebGPUTextureUsageUnknown
        pToJSVal WebGPUTextureUsageShaderread
          = js_WebGPUTextureUsageShaderread
        pToJSVal WebGPUTextureUsageShaderwrite
          = js_WebGPUTextureUsageShaderwrite
        pToJSVal WebGPUTextureUsageRendertarget
          = js_WebGPUTextureUsageRendertarget
        pToJSVal WebGPUTextureUsagePixelformatview
          = js_WebGPUTextureUsagePixelformatview
 
instance ToJSVal WebGPUTextureUsage where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUTextureUsage where
        pFromJSVal x
          | x `js_eq` js_WebGPUTextureUsageUnknown =
            WebGPUTextureUsageUnknown
        pFromJSVal x
          | x `js_eq` js_WebGPUTextureUsageShaderread =
            WebGPUTextureUsageShaderread
        pFromJSVal x
          | x `js_eq` js_WebGPUTextureUsageShaderwrite =
            WebGPUTextureUsageShaderwrite
        pFromJSVal x
          | x `js_eq` js_WebGPUTextureUsageRendertarget =
            WebGPUTextureUsageRendertarget
        pFromJSVal x
          | x `js_eq` js_WebGPUTextureUsagePixelformatview =
            WebGPUTextureUsagePixelformatview
 
instance FromJSVal WebGPUTextureUsage where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"unknown\""
        js_WebGPUTextureUsageUnknown :: JSVal
 
foreign import javascript unsafe "\"shaderread\""
        js_WebGPUTextureUsageShaderread :: JSVal
 
foreign import javascript unsafe "\"shaderwrite\""
        js_WebGPUTextureUsageShaderwrite :: JSVal
 
foreign import javascript unsafe "\"rendertarget\""
        js_WebGPUTextureUsageRendertarget :: JSVal
 
foreign import javascript unsafe "\"pixelformatview\""
        js_WebGPUTextureUsagePixelformatview :: JSVal
 
data WebGPUBlendOperation = WebGPUBlendOperationAdd
                          | WebGPUBlendOperationSubtract
                          | WebGPUBlendOperationReversesubtract
                          | WebGPUBlendOperationMin
                          | WebGPUBlendOperationMax
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUBlendOperation where
        pToJSVal WebGPUBlendOperationAdd = js_WebGPUBlendOperationAdd
        pToJSVal WebGPUBlendOperationSubtract
          = js_WebGPUBlendOperationSubtract
        pToJSVal WebGPUBlendOperationReversesubtract
          = js_WebGPUBlendOperationReversesubtract
        pToJSVal WebGPUBlendOperationMin = js_WebGPUBlendOperationMin
        pToJSVal WebGPUBlendOperationMax = js_WebGPUBlendOperationMax
 
instance ToJSVal WebGPUBlendOperation where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUBlendOperation where
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendOperationAdd = WebGPUBlendOperationAdd
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendOperationSubtract =
            WebGPUBlendOperationSubtract
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendOperationReversesubtract =
            WebGPUBlendOperationReversesubtract
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendOperationMin = WebGPUBlendOperationMin
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendOperationMax = WebGPUBlendOperationMax
 
instance FromJSVal WebGPUBlendOperation where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"add\""
        js_WebGPUBlendOperationAdd :: JSVal
 
foreign import javascript unsafe "\"subtract\""
        js_WebGPUBlendOperationSubtract :: JSVal
 
foreign import javascript unsafe "\"reversesubtract\""
        js_WebGPUBlendOperationReversesubtract :: JSVal
 
foreign import javascript unsafe "\"min\""
        js_WebGPUBlendOperationMin :: JSVal
 
foreign import javascript unsafe "\"max\""
        js_WebGPUBlendOperationMax :: JSVal
 
data WebGPUBlendFactor = WebGPUBlendFactorZero
                       | WebGPUBlendFactorOne
                       | WebGPUBlendFactorSourcecolor
                       | WebGPUBlendFactorOneminussourcecolor
                       | WebGPUBlendFactorSourcealpha
                       | WebGPUBlendFactorOneminussourcealpha
                       | WebGPUBlendFactorDestinationcolor
                       | WebGPUBlendFactorOneminusdestinationcolor
                       | WebGPUBlendFactorDestinationalpha
                       | WebGPUBlendFactorOneminusdestinationalpha
                       | WebGPUBlendFactorSourcealphasaturated
                       | WebGPUBlendFactorBlendcolor
                       | WebGPUBlendFactorOneminusblendcolor
                       | WebGPUBlendFactorBlendalpha
                       | WebGPUBlendFactorOneminusblendalpha
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUBlendFactor where
        pToJSVal WebGPUBlendFactorZero = js_WebGPUBlendFactorZero
        pToJSVal WebGPUBlendFactorOne = js_WebGPUBlendFactorOne
        pToJSVal WebGPUBlendFactorSourcecolor
          = js_WebGPUBlendFactorSourcecolor
        pToJSVal WebGPUBlendFactorOneminussourcecolor
          = js_WebGPUBlendFactorOneminussourcecolor
        pToJSVal WebGPUBlendFactorSourcealpha
          = js_WebGPUBlendFactorSourcealpha
        pToJSVal WebGPUBlendFactorOneminussourcealpha
          = js_WebGPUBlendFactorOneminussourcealpha
        pToJSVal WebGPUBlendFactorDestinationcolor
          = js_WebGPUBlendFactorDestinationcolor
        pToJSVal WebGPUBlendFactorOneminusdestinationcolor
          = js_WebGPUBlendFactorOneminusdestinationcolor
        pToJSVal WebGPUBlendFactorDestinationalpha
          = js_WebGPUBlendFactorDestinationalpha
        pToJSVal WebGPUBlendFactorOneminusdestinationalpha
          = js_WebGPUBlendFactorOneminusdestinationalpha
        pToJSVal WebGPUBlendFactorSourcealphasaturated
          = js_WebGPUBlendFactorSourcealphasaturated
        pToJSVal WebGPUBlendFactorBlendcolor
          = js_WebGPUBlendFactorBlendcolor
        pToJSVal WebGPUBlendFactorOneminusblendcolor
          = js_WebGPUBlendFactorOneminusblendcolor
        pToJSVal WebGPUBlendFactorBlendalpha
          = js_WebGPUBlendFactorBlendalpha
        pToJSVal WebGPUBlendFactorOneminusblendalpha
          = js_WebGPUBlendFactorOneminusblendalpha
 
instance ToJSVal WebGPUBlendFactor where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUBlendFactor where
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorZero = WebGPUBlendFactorZero
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorOne = WebGPUBlendFactorOne
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorSourcecolor =
            WebGPUBlendFactorSourcecolor
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorOneminussourcecolor =
            WebGPUBlendFactorOneminussourcecolor
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorSourcealpha =
            WebGPUBlendFactorSourcealpha
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorOneminussourcealpha =
            WebGPUBlendFactorOneminussourcealpha
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorDestinationcolor =
            WebGPUBlendFactorDestinationcolor
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorOneminusdestinationcolor =
            WebGPUBlendFactorOneminusdestinationcolor
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorDestinationalpha =
            WebGPUBlendFactorDestinationalpha
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorOneminusdestinationalpha =
            WebGPUBlendFactorOneminusdestinationalpha
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorSourcealphasaturated =
            WebGPUBlendFactorSourcealphasaturated
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorBlendcolor =
            WebGPUBlendFactorBlendcolor
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorOneminusblendcolor =
            WebGPUBlendFactorOneminusblendcolor
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorBlendalpha =
            WebGPUBlendFactorBlendalpha
        pFromJSVal x
          | x `js_eq` js_WebGPUBlendFactorOneminusblendalpha =
            WebGPUBlendFactorOneminusblendalpha
 
instance FromJSVal WebGPUBlendFactor where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"zero\""
        js_WebGPUBlendFactorZero :: JSVal
 
foreign import javascript unsafe "\"one\"" js_WebGPUBlendFactorOne
        :: JSVal
 
foreign import javascript unsafe "\"sourcecolor\""
        js_WebGPUBlendFactorSourcecolor :: JSVal
 
foreign import javascript unsafe "\"oneminussourcecolor\""
        js_WebGPUBlendFactorOneminussourcecolor :: JSVal
 
foreign import javascript unsafe "\"sourcealpha\""
        js_WebGPUBlendFactorSourcealpha :: JSVal
 
foreign import javascript unsafe "\"oneminussourcealpha\""
        js_WebGPUBlendFactorOneminussourcealpha :: JSVal
 
foreign import javascript unsafe "\"destinationcolor\""
        js_WebGPUBlendFactorDestinationcolor :: JSVal
 
foreign import javascript unsafe "\"oneminusdestinationcolor\""
        js_WebGPUBlendFactorOneminusdestinationcolor :: JSVal
 
foreign import javascript unsafe "\"destinationalpha\""
        js_WebGPUBlendFactorDestinationalpha :: JSVal
 
foreign import javascript unsafe "\"oneminusdestinationalpha\""
        js_WebGPUBlendFactorOneminusdestinationalpha :: JSVal
 
foreign import javascript unsafe "\"sourcealphasaturated\""
        js_WebGPUBlendFactorSourcealphasaturated :: JSVal
 
foreign import javascript unsafe "\"blendcolor\""
        js_WebGPUBlendFactorBlendcolor :: JSVal
 
foreign import javascript unsafe "\"oneminusblendcolor\""
        js_WebGPUBlendFactorOneminusblendcolor :: JSVal
 
foreign import javascript unsafe "\"blendalpha\""
        js_WebGPUBlendFactorBlendalpha :: JSVal
 
foreign import javascript unsafe "\"oneminusblendalpha\""
        js_WebGPUBlendFactorOneminusblendalpha :: JSVal
 
data WebGPUColorWriteMask = WebGPUColorWriteMaskNone
                          | WebGPUColorWriteMaskRed
                          | WebGPUColorWriteMaskGreen
                          | WebGPUColorWriteMaskBlue
                          | WebGPUColorWriteMaskAlpha
                          | WebGPUColorWriteMaskAll
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUColorWriteMask where
        pToJSVal WebGPUColorWriteMaskNone = js_WebGPUColorWriteMaskNone
        pToJSVal WebGPUColorWriteMaskRed = js_WebGPUColorWriteMaskRed
        pToJSVal WebGPUColorWriteMaskGreen = js_WebGPUColorWriteMaskGreen
        pToJSVal WebGPUColorWriteMaskBlue = js_WebGPUColorWriteMaskBlue
        pToJSVal WebGPUColorWriteMaskAlpha = js_WebGPUColorWriteMaskAlpha
        pToJSVal WebGPUColorWriteMaskAll = js_WebGPUColorWriteMaskAll
 
instance ToJSVal WebGPUColorWriteMask where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUColorWriteMask where
        pFromJSVal x
          | x `js_eq` js_WebGPUColorWriteMaskNone = WebGPUColorWriteMaskNone
        pFromJSVal x
          | x `js_eq` js_WebGPUColorWriteMaskRed = WebGPUColorWriteMaskRed
        pFromJSVal x
          | x `js_eq` js_WebGPUColorWriteMaskGreen =
            WebGPUColorWriteMaskGreen
        pFromJSVal x
          | x `js_eq` js_WebGPUColorWriteMaskBlue = WebGPUColorWriteMaskBlue
        pFromJSVal x
          | x `js_eq` js_WebGPUColorWriteMaskAlpha =
            WebGPUColorWriteMaskAlpha
        pFromJSVal x
          | x `js_eq` js_WebGPUColorWriteMaskAll = WebGPUColorWriteMaskAll
 
instance FromJSVal WebGPUColorWriteMask where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"none\""
        js_WebGPUColorWriteMaskNone :: JSVal
 
foreign import javascript unsafe "\"red\""
        js_WebGPUColorWriteMaskRed :: JSVal
 
foreign import javascript unsafe "\"green\""
        js_WebGPUColorWriteMaskGreen :: JSVal
 
foreign import javascript unsafe "\"blue\""
        js_WebGPUColorWriteMaskBlue :: JSVal
 
foreign import javascript unsafe "\"alpha\""
        js_WebGPUColorWriteMaskAlpha :: JSVal
 
foreign import javascript unsafe "\"all\""
        js_WebGPUColorWriteMaskAll :: JSVal
 
data WebGPUMultisampleDepthResolveFilter = WebGPUMultisampleDepthResolveFilterSample0
                                         | WebGPUMultisampleDepthResolveFilterMin
                                         | WebGPUMultisampleDepthResolveFilterMax
                                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUMultisampleDepthResolveFilter where
        pToJSVal WebGPUMultisampleDepthResolveFilterSample0
          = js_WebGPUMultisampleDepthResolveFilterSample0
        pToJSVal WebGPUMultisampleDepthResolveFilterMin
          = js_WebGPUMultisampleDepthResolveFilterMin
        pToJSVal WebGPUMultisampleDepthResolveFilterMax
          = js_WebGPUMultisampleDepthResolveFilterMax
 
instance ToJSVal WebGPUMultisampleDepthResolveFilter where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUMultisampleDepthResolveFilter where
        pFromJSVal x
          | x `js_eq` js_WebGPUMultisampleDepthResolveFilterSample0 =
            WebGPUMultisampleDepthResolveFilterSample0
        pFromJSVal x
          | x `js_eq` js_WebGPUMultisampleDepthResolveFilterMin =
            WebGPUMultisampleDepthResolveFilterMin
        pFromJSVal x
          | x `js_eq` js_WebGPUMultisampleDepthResolveFilterMax =
            WebGPUMultisampleDepthResolveFilterMax
 
instance FromJSVal WebGPUMultisampleDepthResolveFilter where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"sample0\""
        js_WebGPUMultisampleDepthResolveFilterSample0 :: JSVal
 
foreign import javascript unsafe "\"min\""
        js_WebGPUMultisampleDepthResolveFilterMin :: JSVal
 
foreign import javascript unsafe "\"max\""
        js_WebGPUMultisampleDepthResolveFilterMax :: JSVal
 
data WebGPUFeatureSet = WebGPUFeatureSetLevel1
                      | WebGPUFeatureSetLevel2
                      deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal WebGPUFeatureSet where
        pToJSVal WebGPUFeatureSetLevel1 = js_WebGPUFeatureSetLevel1
        pToJSVal WebGPUFeatureSetLevel2 = js_WebGPUFeatureSetLevel2
 
instance ToJSVal WebGPUFeatureSet where
        toJSVal = return . pToJSVal
 
instance PFromJSVal WebGPUFeatureSet where
        pFromJSVal x
          | x `js_eq` js_WebGPUFeatureSetLevel1 = WebGPUFeatureSetLevel1
        pFromJSVal x
          | x `js_eq` js_WebGPUFeatureSetLevel2 = WebGPUFeatureSetLevel2
 
instance FromJSVal WebGPUFeatureSet where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"level1\""
        js_WebGPUFeatureSetLevel1 :: JSVal
 
foreign import javascript unsafe "\"level2\""
        js_WebGPUFeatureSetLevel2 :: JSVal
 
data VideoPresentationMode = VideoPresentationModeFullscreen
                           | VideoPresentationModePictureInPicture
                           | VideoPresentationModeInline
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal VideoPresentationMode where
        pToJSVal VideoPresentationModeFullscreen
          = js_VideoPresentationModeFullscreen
        pToJSVal VideoPresentationModePictureInPicture
          = js_VideoPresentationModePictureInPicture
        pToJSVal VideoPresentationModeInline
          = js_VideoPresentationModeInline
 
instance ToJSVal VideoPresentationMode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal VideoPresentationMode where
        pFromJSVal x
          | x `js_eq` js_VideoPresentationModeFullscreen =
            VideoPresentationModeFullscreen
        pFromJSVal x
          | x `js_eq` js_VideoPresentationModePictureInPicture =
            VideoPresentationModePictureInPicture
        pFromJSVal x
          | x `js_eq` js_VideoPresentationModeInline =
            VideoPresentationModeInline
 
instance FromJSVal VideoPresentationMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"fullscreen\""
        js_VideoPresentationModeFullscreen :: JSVal
 
foreign import javascript unsafe "\"picture-in-picture\""
        js_VideoPresentationModePictureInPicture :: JSVal
 
foreign import javascript unsafe "\"inline\""
        js_VideoPresentationModeInline :: JSVal
 
data TextTrackMode = TextTrackModeDisabled
                   | TextTrackModeHidden
                   | TextTrackModeShowing
                   deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal TextTrackMode where
        pToJSVal TextTrackModeDisabled = js_TextTrackModeDisabled
        pToJSVal TextTrackModeHidden = js_TextTrackModeHidden
        pToJSVal TextTrackModeShowing = js_TextTrackModeShowing
 
instance ToJSVal TextTrackMode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal TextTrackMode where
        pFromJSVal x
          | x `js_eq` js_TextTrackModeDisabled = TextTrackModeDisabled
        pFromJSVal x
          | x `js_eq` js_TextTrackModeHidden = TextTrackModeHidden
        pFromJSVal x
          | x `js_eq` js_TextTrackModeShowing = TextTrackModeShowing
 
instance FromJSVal TextTrackMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"disabled\""
        js_TextTrackModeDisabled :: JSVal
 
foreign import javascript unsafe "\"hidden\""
        js_TextTrackModeHidden :: JSVal
 
foreign import javascript unsafe "\"showing\""
        js_TextTrackModeShowing :: JSVal
 
data TextTrackKind = TextTrackKindSubtitles
                   | TextTrackKindCaptions
                   | TextTrackKindDescriptions
                   | TextTrackKindChapters
                   | TextTrackKindMetadata
                   | TextTrackKindForced
                   deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal TextTrackKind where
        pToJSVal TextTrackKindSubtitles = js_TextTrackKindSubtitles
        pToJSVal TextTrackKindCaptions = js_TextTrackKindCaptions
        pToJSVal TextTrackKindDescriptions = js_TextTrackKindDescriptions
        pToJSVal TextTrackKindChapters = js_TextTrackKindChapters
        pToJSVal TextTrackKindMetadata = js_TextTrackKindMetadata
        pToJSVal TextTrackKindForced = js_TextTrackKindForced
 
instance ToJSVal TextTrackKind where
        toJSVal = return . pToJSVal
 
instance PFromJSVal TextTrackKind where
        pFromJSVal x
          | x `js_eq` js_TextTrackKindSubtitles = TextTrackKindSubtitles
        pFromJSVal x
          | x `js_eq` js_TextTrackKindCaptions = TextTrackKindCaptions
        pFromJSVal x
          | x `js_eq` js_TextTrackKindDescriptions =
            TextTrackKindDescriptions
        pFromJSVal x
          | x `js_eq` js_TextTrackKindChapters = TextTrackKindChapters
        pFromJSVal x
          | x `js_eq` js_TextTrackKindMetadata = TextTrackKindMetadata
        pFromJSVal x
          | x `js_eq` js_TextTrackKindForced = TextTrackKindForced
 
instance FromJSVal TextTrackKind where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"subtitles\""
        js_TextTrackKindSubtitles :: JSVal
 
foreign import javascript unsafe "\"captions\""
        js_TextTrackKindCaptions :: JSVal
 
foreign import javascript unsafe "\"descriptions\""
        js_TextTrackKindDescriptions :: JSVal
 
foreign import javascript unsafe "\"chapters\""
        js_TextTrackKindChapters :: JSVal
 
foreign import javascript unsafe "\"metadata\""
        js_TextTrackKindMetadata :: JSVal
 
foreign import javascript unsafe "\"forced\""
        js_TextTrackKindForced :: JSVal
 
data ApplePayErrorCode = ApplePayErrorCodeUnknown
                       | ApplePayErrorCodeShippingContactInvalid
                       | ApplePayErrorCodeBillingContactInvalid
                       | ApplePayErrorCodeAddressUnservicable
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ApplePayErrorCode where
        pToJSVal ApplePayErrorCodeUnknown = js_ApplePayErrorCodeUnknown
        pToJSVal ApplePayErrorCodeShippingContactInvalid
          = js_ApplePayErrorCodeShippingContactInvalid
        pToJSVal ApplePayErrorCodeBillingContactInvalid
          = js_ApplePayErrorCodeBillingContactInvalid
        pToJSVal ApplePayErrorCodeAddressUnservicable
          = js_ApplePayErrorCodeAddressUnservicable
 
instance ToJSVal ApplePayErrorCode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ApplePayErrorCode where
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorCodeUnknown = ApplePayErrorCodeUnknown
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorCodeShippingContactInvalid =
            ApplePayErrorCodeShippingContactInvalid
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorCodeBillingContactInvalid =
            ApplePayErrorCodeBillingContactInvalid
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorCodeAddressUnservicable =
            ApplePayErrorCodeAddressUnservicable
 
instance FromJSVal ApplePayErrorCode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"unknown\""
        js_ApplePayErrorCodeUnknown :: JSVal
 
foreign import javascript unsafe "\"shippingContactInvalid\""
        js_ApplePayErrorCodeShippingContactInvalid :: JSVal
 
foreign import javascript unsafe "\"billingContactInvalid\""
        js_ApplePayErrorCodeBillingContactInvalid :: JSVal
 
foreign import javascript unsafe "\"addressUnservicable\""
        js_ApplePayErrorCodeAddressUnservicable :: JSVal
 
data ApplePayErrorContactField = ApplePayErrorContactFieldPhoneNumber
                               | ApplePayErrorContactFieldEmailAddress
                               | ApplePayErrorContactFieldName
                               | ApplePayErrorContactFieldPostalAddress
                               | ApplePayErrorContactFieldAddressLines
                               | ApplePayErrorContactFieldLocality
                               | ApplePayErrorContactFieldPostalCode
                               | ApplePayErrorContactFieldAdministrativeArea
                               | ApplePayErrorContactFieldCountry
                               deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ApplePayErrorContactField where
        pToJSVal ApplePayErrorContactFieldPhoneNumber
          = js_ApplePayErrorContactFieldPhoneNumber
        pToJSVal ApplePayErrorContactFieldEmailAddress
          = js_ApplePayErrorContactFieldEmailAddress
        pToJSVal ApplePayErrorContactFieldName
          = js_ApplePayErrorContactFieldName
        pToJSVal ApplePayErrorContactFieldPostalAddress
          = js_ApplePayErrorContactFieldPostalAddress
        pToJSVal ApplePayErrorContactFieldAddressLines
          = js_ApplePayErrorContactFieldAddressLines
        pToJSVal ApplePayErrorContactFieldLocality
          = js_ApplePayErrorContactFieldLocality
        pToJSVal ApplePayErrorContactFieldPostalCode
          = js_ApplePayErrorContactFieldPostalCode
        pToJSVal ApplePayErrorContactFieldAdministrativeArea
          = js_ApplePayErrorContactFieldAdministrativeArea
        pToJSVal ApplePayErrorContactFieldCountry
          = js_ApplePayErrorContactFieldCountry
 
instance ToJSVal ApplePayErrorContactField where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ApplePayErrorContactField where
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldPhoneNumber =
            ApplePayErrorContactFieldPhoneNumber
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldEmailAddress =
            ApplePayErrorContactFieldEmailAddress
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldName =
            ApplePayErrorContactFieldName
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldPostalAddress =
            ApplePayErrorContactFieldPostalAddress
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldAddressLines =
            ApplePayErrorContactFieldAddressLines
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldLocality =
            ApplePayErrorContactFieldLocality
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldPostalCode =
            ApplePayErrorContactFieldPostalCode
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldAdministrativeArea =
            ApplePayErrorContactFieldAdministrativeArea
        pFromJSVal x
          | x `js_eq` js_ApplePayErrorContactFieldCountry =
            ApplePayErrorContactFieldCountry
 
instance FromJSVal ApplePayErrorContactField where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"phoneNumber\""
        js_ApplePayErrorContactFieldPhoneNumber :: JSVal
 
foreign import javascript unsafe "\"emailAddress\""
        js_ApplePayErrorContactFieldEmailAddress :: JSVal
 
foreign import javascript unsafe "\"name\""
        js_ApplePayErrorContactFieldName :: JSVal
 
foreign import javascript unsafe "\"postalAddress\""
        js_ApplePayErrorContactFieldPostalAddress :: JSVal
 
foreign import javascript unsafe "\"addressLines\""
        js_ApplePayErrorContactFieldAddressLines :: JSVal
 
foreign import javascript unsafe "\"locality\""
        js_ApplePayErrorContactFieldLocality :: JSVal
 
foreign import javascript unsafe "\"postalCode\""
        js_ApplePayErrorContactFieldPostalCode :: JSVal
 
foreign import javascript unsafe "\"administrativeArea\""
        js_ApplePayErrorContactFieldAdministrativeArea :: JSVal
 
foreign import javascript unsafe "\"country\""
        js_ApplePayErrorContactFieldCountry :: JSVal
 
data ApplePayLineItemType = ApplePayLineItemTypePending
                          | ApplePayLineItemTypeFinal
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ApplePayLineItemType where
        pToJSVal ApplePayLineItemTypePending
          = js_ApplePayLineItemTypePending
        pToJSVal ApplePayLineItemTypeFinal = js_ApplePayLineItemTypeFinal
 
instance ToJSVal ApplePayLineItemType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ApplePayLineItemType where
        pFromJSVal x
          | x `js_eq` js_ApplePayLineItemTypePending =
            ApplePayLineItemTypePending
        pFromJSVal x
          | x `js_eq` js_ApplePayLineItemTypeFinal =
            ApplePayLineItemTypeFinal
 
instance FromJSVal ApplePayLineItemType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"pending\""
        js_ApplePayLineItemTypePending :: JSVal
 
foreign import javascript unsafe "\"final\""
        js_ApplePayLineItemTypeFinal :: JSVal
 
data ApplePayPaymentMethodType = ApplePayPaymentMethodTypeDebit
                               | ApplePayPaymentMethodTypeCredit
                               | ApplePayPaymentMethodTypePrepaid
                               | ApplePayPaymentMethodTypeStore
                               deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ApplePayPaymentMethodType where
        pToJSVal ApplePayPaymentMethodTypeDebit
          = js_ApplePayPaymentMethodTypeDebit
        pToJSVal ApplePayPaymentMethodTypeCredit
          = js_ApplePayPaymentMethodTypeCredit
        pToJSVal ApplePayPaymentMethodTypePrepaid
          = js_ApplePayPaymentMethodTypePrepaid
        pToJSVal ApplePayPaymentMethodTypeStore
          = js_ApplePayPaymentMethodTypeStore
 
instance ToJSVal ApplePayPaymentMethodType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ApplePayPaymentMethodType where
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentMethodTypeDebit =
            ApplePayPaymentMethodTypeDebit
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentMethodTypeCredit =
            ApplePayPaymentMethodTypeCredit
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentMethodTypePrepaid =
            ApplePayPaymentMethodTypePrepaid
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentMethodTypeStore =
            ApplePayPaymentMethodTypeStore
 
instance FromJSVal ApplePayPaymentMethodType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"debit\""
        js_ApplePayPaymentMethodTypeDebit :: JSVal
 
foreign import javascript unsafe "\"credit\""
        js_ApplePayPaymentMethodTypeCredit :: JSVal
 
foreign import javascript unsafe "\"prepaid\""
        js_ApplePayPaymentMethodTypePrepaid :: JSVal
 
foreign import javascript unsafe "\"store\""
        js_ApplePayPaymentMethodTypeStore :: JSVal
 
data ApplePayPaymentPassActivationState = ApplePayPaymentPassActivationStateActivated
                                        | ApplePayPaymentPassActivationStateRequiresActivation
                                        | ApplePayPaymentPassActivationStateActivating
                                        | ApplePayPaymentPassActivationStateSuspended
                                        | ApplePayPaymentPassActivationStateDeactivated
                                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ApplePayPaymentPassActivationState where
        pToJSVal ApplePayPaymentPassActivationStateActivated
          = js_ApplePayPaymentPassActivationStateActivated
        pToJSVal ApplePayPaymentPassActivationStateRequiresActivation
          = js_ApplePayPaymentPassActivationStateRequiresActivation
        pToJSVal ApplePayPaymentPassActivationStateActivating
          = js_ApplePayPaymentPassActivationStateActivating
        pToJSVal ApplePayPaymentPassActivationStateSuspended
          = js_ApplePayPaymentPassActivationStateSuspended
        pToJSVal ApplePayPaymentPassActivationStateDeactivated
          = js_ApplePayPaymentPassActivationStateDeactivated
 
instance ToJSVal ApplePayPaymentPassActivationState where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ApplePayPaymentPassActivationState where
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentPassActivationStateActivated =
            ApplePayPaymentPassActivationStateActivated
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentPassActivationStateRequiresActivation
            = ApplePayPaymentPassActivationStateRequiresActivation
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentPassActivationStateActivating =
            ApplePayPaymentPassActivationStateActivating
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentPassActivationStateSuspended =
            ApplePayPaymentPassActivationStateSuspended
        pFromJSVal x
          | x `js_eq` js_ApplePayPaymentPassActivationStateDeactivated =
            ApplePayPaymentPassActivationStateDeactivated
 
instance FromJSVal ApplePayPaymentPassActivationState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"activated\""
        js_ApplePayPaymentPassActivationStateActivated :: JSVal
 
foreign import javascript unsafe "\"requiresActivation\""
        js_ApplePayPaymentPassActivationStateRequiresActivation :: JSVal
 
foreign import javascript unsafe "\"activating\""
        js_ApplePayPaymentPassActivationStateActivating :: JSVal
 
foreign import javascript unsafe "\"suspended\""
        js_ApplePayPaymentPassActivationStateSuspended :: JSVal
 
foreign import javascript unsafe "\"deactivated\""
        js_ApplePayPaymentPassActivationStateDeactivated :: JSVal
 
data ApplePayMerchantCapability = ApplePayMerchantCapabilitySupports3DS
                                | ApplePayMerchantCapabilitySupportsEMV
                                | ApplePayMerchantCapabilitySupportsCredit
                                | ApplePayMerchantCapabilitySupportsDebit
                                deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ApplePayMerchantCapability where
        pToJSVal ApplePayMerchantCapabilitySupports3DS
          = js_ApplePayMerchantCapabilitySupports3DS
        pToJSVal ApplePayMerchantCapabilitySupportsEMV
          = js_ApplePayMerchantCapabilitySupportsEMV
        pToJSVal ApplePayMerchantCapabilitySupportsCredit
          = js_ApplePayMerchantCapabilitySupportsCredit
        pToJSVal ApplePayMerchantCapabilitySupportsDebit
          = js_ApplePayMerchantCapabilitySupportsDebit
 
instance ToJSVal ApplePayMerchantCapability where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ApplePayMerchantCapability where
        pFromJSVal x
          | x `js_eq` js_ApplePayMerchantCapabilitySupports3DS =
            ApplePayMerchantCapabilitySupports3DS
        pFromJSVal x
          | x `js_eq` js_ApplePayMerchantCapabilitySupportsEMV =
            ApplePayMerchantCapabilitySupportsEMV
        pFromJSVal x
          | x `js_eq` js_ApplePayMerchantCapabilitySupportsCredit =
            ApplePayMerchantCapabilitySupportsCredit
        pFromJSVal x
          | x `js_eq` js_ApplePayMerchantCapabilitySupportsDebit =
            ApplePayMerchantCapabilitySupportsDebit
 
instance FromJSVal ApplePayMerchantCapability where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"supports3DS\""
        js_ApplePayMerchantCapabilitySupports3DS :: JSVal
 
foreign import javascript unsafe "\"supportsEMV\""
        js_ApplePayMerchantCapabilitySupportsEMV :: JSVal
 
foreign import javascript unsafe "\"supportsCredit\""
        js_ApplePayMerchantCapabilitySupportsCredit :: JSVal
 
foreign import javascript unsafe "\"supportsDebit\""
        js_ApplePayMerchantCapabilitySupportsDebit :: JSVal
 
data ApplePayContactField = ApplePayContactFieldEmail
                          | ApplePayContactFieldName
                          | ApplePayContactFieldPhone
                          | ApplePayContactFieldPostalAddress
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ApplePayContactField where
        pToJSVal ApplePayContactFieldEmail = js_ApplePayContactFieldEmail
        pToJSVal ApplePayContactFieldName = js_ApplePayContactFieldName
        pToJSVal ApplePayContactFieldPhone = js_ApplePayContactFieldPhone
        pToJSVal ApplePayContactFieldPostalAddress
          = js_ApplePayContactFieldPostalAddress
 
instance ToJSVal ApplePayContactField where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ApplePayContactField where
        pFromJSVal x
          | x `js_eq` js_ApplePayContactFieldEmail =
            ApplePayContactFieldEmail
        pFromJSVal x
          | x `js_eq` js_ApplePayContactFieldName = ApplePayContactFieldName
        pFromJSVal x
          | x `js_eq` js_ApplePayContactFieldPhone =
            ApplePayContactFieldPhone
        pFromJSVal x
          | x `js_eq` js_ApplePayContactFieldPostalAddress =
            ApplePayContactFieldPostalAddress
 
instance FromJSVal ApplePayContactField where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"email\""
        js_ApplePayContactFieldEmail :: JSVal
 
foreign import javascript unsafe "\"name\""
        js_ApplePayContactFieldName :: JSVal
 
foreign import javascript unsafe "\"phone\""
        js_ApplePayContactFieldPhone :: JSVal
 
foreign import javascript unsafe "\"postalAddress\""
        js_ApplePayContactFieldPostalAddress :: JSVal
 
data ApplePayShippingType = ApplePayShippingTypeShipping
                          | ApplePayShippingTypeDelivery
                          | ApplePayShippingTypeStorePickup
                          | ApplePayShippingTypeServicePickup
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ApplePayShippingType where
        pToJSVal ApplePayShippingTypeShipping
          = js_ApplePayShippingTypeShipping
        pToJSVal ApplePayShippingTypeDelivery
          = js_ApplePayShippingTypeDelivery
        pToJSVal ApplePayShippingTypeStorePickup
          = js_ApplePayShippingTypeStorePickup
        pToJSVal ApplePayShippingTypeServicePickup
          = js_ApplePayShippingTypeServicePickup
 
instance ToJSVal ApplePayShippingType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ApplePayShippingType where
        pFromJSVal x
          | x `js_eq` js_ApplePayShippingTypeShipping =
            ApplePayShippingTypeShipping
        pFromJSVal x
          | x `js_eq` js_ApplePayShippingTypeDelivery =
            ApplePayShippingTypeDelivery
        pFromJSVal x
          | x `js_eq` js_ApplePayShippingTypeStorePickup =
            ApplePayShippingTypeStorePickup
        pFromJSVal x
          | x `js_eq` js_ApplePayShippingTypeServicePickup =
            ApplePayShippingTypeServicePickup
 
instance FromJSVal ApplePayShippingType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"shipping\""
        js_ApplePayShippingTypeShipping :: JSVal
 
foreign import javascript unsafe "\"delivery\""
        js_ApplePayShippingTypeDelivery :: JSVal
 
foreign import javascript unsafe "\"storePickup\""
        js_ApplePayShippingTypeStorePickup :: JSVal
 
foreign import javascript unsafe "\"servicePickup\""
        js_ApplePayShippingTypeServicePickup :: JSVal
 
data MediaKeyMessageType = MediaKeyMessageTypeLicenseRequest
                         | MediaKeyMessageTypeLicenseRenewal
                         | MediaKeyMessageTypeLicenseRelease
                         | MediaKeyMessageTypeIndividualizationRequest
                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal MediaKeyMessageType where
        pToJSVal MediaKeyMessageTypeLicenseRequest
          = js_MediaKeyMessageTypeLicenseRequest
        pToJSVal MediaKeyMessageTypeLicenseRenewal
          = js_MediaKeyMessageTypeLicenseRenewal
        pToJSVal MediaKeyMessageTypeLicenseRelease
          = js_MediaKeyMessageTypeLicenseRelease
        pToJSVal MediaKeyMessageTypeIndividualizationRequest
          = js_MediaKeyMessageTypeIndividualizationRequest
 
instance ToJSVal MediaKeyMessageType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal MediaKeyMessageType where
        pFromJSVal x
          | x `js_eq` js_MediaKeyMessageTypeLicenseRequest =
            MediaKeyMessageTypeLicenseRequest
        pFromJSVal x
          | x `js_eq` js_MediaKeyMessageTypeLicenseRenewal =
            MediaKeyMessageTypeLicenseRenewal
        pFromJSVal x
          | x `js_eq` js_MediaKeyMessageTypeLicenseRelease =
            MediaKeyMessageTypeLicenseRelease
        pFromJSVal x
          | x `js_eq` js_MediaKeyMessageTypeIndividualizationRequest =
            MediaKeyMessageTypeIndividualizationRequest
 
instance FromJSVal MediaKeyMessageType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"license-request\""
        js_MediaKeyMessageTypeLicenseRequest :: JSVal
 
foreign import javascript unsafe "\"license-renewal\""
        js_MediaKeyMessageTypeLicenseRenewal :: JSVal
 
foreign import javascript unsafe "\"license-release\""
        js_MediaKeyMessageTypeLicenseRelease :: JSVal
 
foreign import javascript unsafe "\"individualization-request\""
        js_MediaKeyMessageTypeIndividualizationRequest :: JSVal
 
data MediaKeySessionType = MediaKeySessionTypeTemporary
                         | MediaKeySessionTypePersistentUsageRecord
                         | MediaKeySessionTypePersistentLicense
                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal MediaKeySessionType where
        pToJSVal MediaKeySessionTypeTemporary
          = js_MediaKeySessionTypeTemporary
        pToJSVal MediaKeySessionTypePersistentUsageRecord
          = js_MediaKeySessionTypePersistentUsageRecord
        pToJSVal MediaKeySessionTypePersistentLicense
          = js_MediaKeySessionTypePersistentLicense
 
instance ToJSVal MediaKeySessionType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal MediaKeySessionType where
        pFromJSVal x
          | x `js_eq` js_MediaKeySessionTypeTemporary =
            MediaKeySessionTypeTemporary
        pFromJSVal x
          | x `js_eq` js_MediaKeySessionTypePersistentUsageRecord =
            MediaKeySessionTypePersistentUsageRecord
        pFromJSVal x
          | x `js_eq` js_MediaKeySessionTypePersistentLicense =
            MediaKeySessionTypePersistentLicense
 
instance FromJSVal MediaKeySessionType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"temporary\""
        js_MediaKeySessionTypeTemporary :: JSVal
 
foreign import javascript unsafe "\"persistent-usage-record\""
        js_MediaKeySessionTypePersistentUsageRecord :: JSVal
 
foreign import javascript unsafe "\"persistent-license\""
        js_MediaKeySessionTypePersistentLicense :: JSVal
 
data MediaKeysRequirement = MediaKeysRequirementRequired
                          | MediaKeysRequirementOptional
                          | MediaKeysRequirementNotAllowed
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal MediaKeysRequirement where
        pToJSVal MediaKeysRequirementRequired
          = js_MediaKeysRequirementRequired
        pToJSVal MediaKeysRequirementOptional
          = js_MediaKeysRequirementOptional
        pToJSVal MediaKeysRequirementNotAllowed
          = js_MediaKeysRequirementNotAllowed
 
instance ToJSVal MediaKeysRequirement where
        toJSVal = return . pToJSVal
 
instance PFromJSVal MediaKeysRequirement where
        pFromJSVal x
          | x `js_eq` js_MediaKeysRequirementRequired =
            MediaKeysRequirementRequired
        pFromJSVal x
          | x `js_eq` js_MediaKeysRequirementOptional =
            MediaKeysRequirementOptional
        pFromJSVal x
          | x `js_eq` js_MediaKeysRequirementNotAllowed =
            MediaKeysRequirementNotAllowed
 
instance FromJSVal MediaKeysRequirement where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"required\""
        js_MediaKeysRequirementRequired :: JSVal
 
foreign import javascript unsafe "\"optional\""
        js_MediaKeysRequirementOptional :: JSVal
 
foreign import javascript unsafe "\"not-allowed\""
        js_MediaKeysRequirementNotAllowed :: JSVal
 
data MediaKeyStatus = MediaKeyStatusUsable
                    | MediaKeyStatusExpired
                    | MediaKeyStatusReleased
                    | MediaKeyStatusOutputRestricted
                    | MediaKeyStatusOutputDownscaled
                    | MediaKeyStatusStatusPending
                    | MediaKeyStatusInternalError
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal MediaKeyStatus where
        pToJSVal MediaKeyStatusUsable = js_MediaKeyStatusUsable
        pToJSVal MediaKeyStatusExpired = js_MediaKeyStatusExpired
        pToJSVal MediaKeyStatusReleased = js_MediaKeyStatusReleased
        pToJSVal MediaKeyStatusOutputRestricted
          = js_MediaKeyStatusOutputRestricted
        pToJSVal MediaKeyStatusOutputDownscaled
          = js_MediaKeyStatusOutputDownscaled
        pToJSVal MediaKeyStatusStatusPending
          = js_MediaKeyStatusStatusPending
        pToJSVal MediaKeyStatusInternalError
          = js_MediaKeyStatusInternalError
 
instance ToJSVal MediaKeyStatus where
        toJSVal = return . pToJSVal
 
instance PFromJSVal MediaKeyStatus where
        pFromJSVal x
          | x `js_eq` js_MediaKeyStatusUsable = MediaKeyStatusUsable
        pFromJSVal x
          | x `js_eq` js_MediaKeyStatusExpired = MediaKeyStatusExpired
        pFromJSVal x
          | x `js_eq` js_MediaKeyStatusReleased = MediaKeyStatusReleased
        pFromJSVal x
          | x `js_eq` js_MediaKeyStatusOutputRestricted =
            MediaKeyStatusOutputRestricted
        pFromJSVal x
          | x `js_eq` js_MediaKeyStatusOutputDownscaled =
            MediaKeyStatusOutputDownscaled
        pFromJSVal x
          | x `js_eq` js_MediaKeyStatusStatusPending =
            MediaKeyStatusStatusPending
        pFromJSVal x
          | x `js_eq` js_MediaKeyStatusInternalError =
            MediaKeyStatusInternalError
 
instance FromJSVal MediaKeyStatus where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"usable\""
        js_MediaKeyStatusUsable :: JSVal
 
foreign import javascript unsafe "\"expired\""
        js_MediaKeyStatusExpired :: JSVal
 
foreign import javascript unsafe "\"released\""
        js_MediaKeyStatusReleased :: JSVal
 
foreign import javascript unsafe "\"output-restricted\""
        js_MediaKeyStatusOutputRestricted :: JSVal
 
foreign import javascript unsafe "\"output-downscaled\""
        js_MediaKeyStatusOutputDownscaled :: JSVal
 
foreign import javascript unsafe "\"status-pending\""
        js_MediaKeyStatusStatusPending :: JSVal
 
foreign import javascript unsafe "\"internal-error\""
        js_MediaKeyStatusInternalError :: JSVal
 
data RequestType = RequestType
                 | RequestTypeAudio
                 | RequestTypeFont
                 | RequestTypeImage
                 | RequestTypeScript
                 | RequestTypeStyle
                 | RequestTypeTrack
                 | RequestTypeVideo
                 deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RequestType where
        pToJSVal RequestType = js_RequestType
        pToJSVal RequestTypeAudio = js_RequestTypeAudio
        pToJSVal RequestTypeFont = js_RequestTypeFont
        pToJSVal RequestTypeImage = js_RequestTypeImage
        pToJSVal RequestTypeScript = js_RequestTypeScript
        pToJSVal RequestTypeStyle = js_RequestTypeStyle
        pToJSVal RequestTypeTrack = js_RequestTypeTrack
        pToJSVal RequestTypeVideo = js_RequestTypeVideo
 
instance ToJSVal RequestType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RequestType where
        pFromJSVal x | x `js_eq` js_RequestType = RequestType
        pFromJSVal x | x `js_eq` js_RequestTypeAudio = RequestTypeAudio
        pFromJSVal x | x `js_eq` js_RequestTypeFont = RequestTypeFont
        pFromJSVal x | x `js_eq` js_RequestTypeImage = RequestTypeImage
        pFromJSVal x | x `js_eq` js_RequestTypeScript = RequestTypeScript
        pFromJSVal x | x `js_eq` js_RequestTypeStyle = RequestTypeStyle
        pFromJSVal x | x `js_eq` js_RequestTypeTrack = RequestTypeTrack
        pFromJSVal x | x `js_eq` js_RequestTypeVideo = RequestTypeVideo
 
instance FromJSVal RequestType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"\"" js_RequestType :: JSVal
 
foreign import javascript unsafe "\"audio\"" js_RequestTypeAudio ::
        JSVal
 
foreign import javascript unsafe "\"font\"" js_RequestTypeFont ::
        JSVal
 
foreign import javascript unsafe "\"image\"" js_RequestTypeImage ::
        JSVal
 
foreign import javascript unsafe "\"script\"" js_RequestTypeScript
        :: JSVal
 
foreign import javascript unsafe "\"style\"" js_RequestTypeStyle ::
        JSVal
 
foreign import javascript unsafe "\"track\"" js_RequestTypeTrack ::
        JSVal
 
foreign import javascript unsafe "\"video\"" js_RequestTypeVideo ::
        JSVal
 
data RequestDestination = RequestDestination
                        | RequestDestinationDocument
                        | RequestDestinationSharedworker
                        | RequestDestinationSubresource
                        | RequestDestinationUnknown
                        | RequestDestinationWorker
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RequestDestination where
        pToJSVal RequestDestination = js_RequestDestination
        pToJSVal RequestDestinationDocument = js_RequestDestinationDocument
        pToJSVal RequestDestinationSharedworker
          = js_RequestDestinationSharedworker
        pToJSVal RequestDestinationSubresource
          = js_RequestDestinationSubresource
        pToJSVal RequestDestinationUnknown = js_RequestDestinationUnknown
        pToJSVal RequestDestinationWorker = js_RequestDestinationWorker
 
instance ToJSVal RequestDestination where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RequestDestination where
        pFromJSVal x | x `js_eq` js_RequestDestination = RequestDestination
        pFromJSVal x
          | x `js_eq` js_RequestDestinationDocument =
            RequestDestinationDocument
        pFromJSVal x
          | x `js_eq` js_RequestDestinationSharedworker =
            RequestDestinationSharedworker
        pFromJSVal x
          | x `js_eq` js_RequestDestinationSubresource =
            RequestDestinationSubresource
        pFromJSVal x
          | x `js_eq` js_RequestDestinationUnknown =
            RequestDestinationUnknown
        pFromJSVal x
          | x `js_eq` js_RequestDestinationWorker = RequestDestinationWorker
 
instance FromJSVal RequestDestination where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"\"" js_RequestDestination ::
        JSVal
 
foreign import javascript unsafe "\"document\""
        js_RequestDestinationDocument :: JSVal
 
foreign import javascript unsafe "\"sharedworker\""
        js_RequestDestinationSharedworker :: JSVal
 
foreign import javascript unsafe "\"subresource\""
        js_RequestDestinationSubresource :: JSVal
 
foreign import javascript unsafe "\"unknown\""
        js_RequestDestinationUnknown :: JSVal
 
foreign import javascript unsafe "\"worker\""
        js_RequestDestinationWorker :: JSVal
 
data RequestMode = RequestModeNavigate
                 | RequestModeSameOrigin
                 | RequestModeNoCors
                 | RequestModeCors
                 deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RequestMode where
        pToJSVal RequestModeNavigate = js_RequestModeNavigate
        pToJSVal RequestModeSameOrigin = js_RequestModeSameOrigin
        pToJSVal RequestModeNoCors = js_RequestModeNoCors
        pToJSVal RequestModeCors = js_RequestModeCors
 
instance ToJSVal RequestMode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RequestMode where
        pFromJSVal x
          | x `js_eq` js_RequestModeNavigate = RequestModeNavigate
        pFromJSVal x
          | x `js_eq` js_RequestModeSameOrigin = RequestModeSameOrigin
        pFromJSVal x | x `js_eq` js_RequestModeNoCors = RequestModeNoCors
        pFromJSVal x | x `js_eq` js_RequestModeCors = RequestModeCors
 
instance FromJSVal RequestMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"navigate\""
        js_RequestModeNavigate :: JSVal
 
foreign import javascript unsafe "\"same-origin\""
        js_RequestModeSameOrigin :: JSVal
 
foreign import javascript unsafe "\"no-cors\"" js_RequestModeNoCors
        :: JSVal
 
foreign import javascript unsafe "\"cors\"" js_RequestModeCors ::
        JSVal
 
data RequestCredentials = RequestCredentialsOmit
                        | RequestCredentialsSameOrigin
                        | RequestCredentialsInclude
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RequestCredentials where
        pToJSVal RequestCredentialsOmit = js_RequestCredentialsOmit
        pToJSVal RequestCredentialsSameOrigin
          = js_RequestCredentialsSameOrigin
        pToJSVal RequestCredentialsInclude = js_RequestCredentialsInclude
 
instance ToJSVal RequestCredentials where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RequestCredentials where
        pFromJSVal x
          | x `js_eq` js_RequestCredentialsOmit = RequestCredentialsOmit
        pFromJSVal x
          | x `js_eq` js_RequestCredentialsSameOrigin =
            RequestCredentialsSameOrigin
        pFromJSVal x
          | x `js_eq` js_RequestCredentialsInclude =
            RequestCredentialsInclude
 
instance FromJSVal RequestCredentials where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"omit\""
        js_RequestCredentialsOmit :: JSVal
 
foreign import javascript unsafe "\"same-origin\""
        js_RequestCredentialsSameOrigin :: JSVal
 
foreign import javascript unsafe "\"include\""
        js_RequestCredentialsInclude :: JSVal
 
data RequestCache = RequestCacheDefault
                  | RequestCacheNoStore
                  | RequestCacheReload
                  | RequestCacheNoCache
                  | RequestCacheForceCache
                  | RequestCacheOnlyIfCached
                  deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RequestCache where
        pToJSVal RequestCacheDefault = js_RequestCacheDefault
        pToJSVal RequestCacheNoStore = js_RequestCacheNoStore
        pToJSVal RequestCacheReload = js_RequestCacheReload
        pToJSVal RequestCacheNoCache = js_RequestCacheNoCache
        pToJSVal RequestCacheForceCache = js_RequestCacheForceCache
        pToJSVal RequestCacheOnlyIfCached = js_RequestCacheOnlyIfCached
 
instance ToJSVal RequestCache where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RequestCache where
        pFromJSVal x
          | x `js_eq` js_RequestCacheDefault = RequestCacheDefault
        pFromJSVal x
          | x `js_eq` js_RequestCacheNoStore = RequestCacheNoStore
        pFromJSVal x | x `js_eq` js_RequestCacheReload = RequestCacheReload
        pFromJSVal x
          | x `js_eq` js_RequestCacheNoCache = RequestCacheNoCache
        pFromJSVal x
          | x `js_eq` js_RequestCacheForceCache = RequestCacheForceCache
        pFromJSVal x
          | x `js_eq` js_RequestCacheOnlyIfCached = RequestCacheOnlyIfCached
 
instance FromJSVal RequestCache where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"default\""
        js_RequestCacheDefault :: JSVal
 
foreign import javascript unsafe "\"no-store\""
        js_RequestCacheNoStore :: JSVal
 
foreign import javascript unsafe "\"reload\"" js_RequestCacheReload
        :: JSVal
 
foreign import javascript unsafe "\"no-cache\""
        js_RequestCacheNoCache :: JSVal
 
foreign import javascript unsafe "\"force-cache\""
        js_RequestCacheForceCache :: JSVal
 
foreign import javascript unsafe "\"only-if-cached\""
        js_RequestCacheOnlyIfCached :: JSVal
 
data RequestRedirect = RequestRedirectFollow
                     | RequestRedirectError
                     | RequestRedirectManual
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RequestRedirect where
        pToJSVal RequestRedirectFollow = js_RequestRedirectFollow
        pToJSVal RequestRedirectError = js_RequestRedirectError
        pToJSVal RequestRedirectManual = js_RequestRedirectManual
 
instance ToJSVal RequestRedirect where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RequestRedirect where
        pFromJSVal x
          | x `js_eq` js_RequestRedirectFollow = RequestRedirectFollow
        pFromJSVal x
          | x `js_eq` js_RequestRedirectError = RequestRedirectError
        pFromJSVal x
          | x `js_eq` js_RequestRedirectManual = RequestRedirectManual
 
instance FromJSVal RequestRedirect where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"follow\""
        js_RequestRedirectFollow :: JSVal
 
foreign import javascript unsafe "\"error\""
        js_RequestRedirectError :: JSVal
 
foreign import javascript unsafe "\"manual\""
        js_RequestRedirectManual :: JSVal
 
data ReferrerPolicy = ReferrerPolicy
                    | ReferrerPolicyNoReferrer
                    | ReferrerPolicyNoReferrerWhenDowngrade
                    | ReferrerPolicyOrigin
                    | ReferrerPolicyOriginWhenCrossOrigin
                    | ReferrerPolicyUnsafeUrl
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ReferrerPolicy where
        pToJSVal ReferrerPolicy = js_ReferrerPolicy
        pToJSVal ReferrerPolicyNoReferrer = js_ReferrerPolicyNoReferrer
        pToJSVal ReferrerPolicyNoReferrerWhenDowngrade
          = js_ReferrerPolicyNoReferrerWhenDowngrade
        pToJSVal ReferrerPolicyOrigin = js_ReferrerPolicyOrigin
        pToJSVal ReferrerPolicyOriginWhenCrossOrigin
          = js_ReferrerPolicyOriginWhenCrossOrigin
        pToJSVal ReferrerPolicyUnsafeUrl = js_ReferrerPolicyUnsafeUrl
 
instance ToJSVal ReferrerPolicy where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ReferrerPolicy where
        pFromJSVal x | x `js_eq` js_ReferrerPolicy = ReferrerPolicy
        pFromJSVal x
          | x `js_eq` js_ReferrerPolicyNoReferrer = ReferrerPolicyNoReferrer
        pFromJSVal x
          | x `js_eq` js_ReferrerPolicyNoReferrerWhenDowngrade =
            ReferrerPolicyNoReferrerWhenDowngrade
        pFromJSVal x
          | x `js_eq` js_ReferrerPolicyOrigin = ReferrerPolicyOrigin
        pFromJSVal x
          | x `js_eq` js_ReferrerPolicyOriginWhenCrossOrigin =
            ReferrerPolicyOriginWhenCrossOrigin
        pFromJSVal x
          | x `js_eq` js_ReferrerPolicyUnsafeUrl = ReferrerPolicyUnsafeUrl
 
instance FromJSVal ReferrerPolicy where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"\"" js_ReferrerPolicy :: JSVal
 
foreign import javascript unsafe "\"no-referrer\""
        js_ReferrerPolicyNoReferrer :: JSVal
 
foreign import javascript unsafe "\"no-referrer-when-downgrade\""
        js_ReferrerPolicyNoReferrerWhenDowngrade :: JSVal
 
foreign import javascript unsafe "\"origin\""
        js_ReferrerPolicyOrigin :: JSVal
 
foreign import javascript unsafe "\"origin-when-cross-origin\""
        js_ReferrerPolicyOriginWhenCrossOrigin :: JSVal
 
foreign import javascript unsafe "\"unsafe-url\""
        js_ReferrerPolicyUnsafeUrl :: JSVal
 
data ResponseType = ResponseTypeBasic
                  | ResponseTypeCors
                  | ResponseTypeDefault
                  | ResponseTypeError
                  | ResponseTypeOpaque
                  | ResponseTypeOpaqueredirect
                  deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ResponseType where
        pToJSVal ResponseTypeBasic = js_ResponseTypeBasic
        pToJSVal ResponseTypeCors = js_ResponseTypeCors
        pToJSVal ResponseTypeDefault = js_ResponseTypeDefault
        pToJSVal ResponseTypeError = js_ResponseTypeError
        pToJSVal ResponseTypeOpaque = js_ResponseTypeOpaque
        pToJSVal ResponseTypeOpaqueredirect = js_ResponseTypeOpaqueredirect
 
instance ToJSVal ResponseType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ResponseType where
        pFromJSVal x | x `js_eq` js_ResponseTypeBasic = ResponseTypeBasic
        pFromJSVal x | x `js_eq` js_ResponseTypeCors = ResponseTypeCors
        pFromJSVal x
          | x `js_eq` js_ResponseTypeDefault = ResponseTypeDefault
        pFromJSVal x | x `js_eq` js_ResponseTypeError = ResponseTypeError
        pFromJSVal x | x `js_eq` js_ResponseTypeOpaque = ResponseTypeOpaque
        pFromJSVal x
          | x `js_eq` js_ResponseTypeOpaqueredirect =
            ResponseTypeOpaqueredirect
 
instance FromJSVal ResponseType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"basic\"" js_ResponseTypeBasic
        :: JSVal
 
foreign import javascript unsafe "\"cors\"" js_ResponseTypeCors ::
        JSVal
 
foreign import javascript unsafe "\"default\""
        js_ResponseTypeDefault :: JSVal
 
foreign import javascript unsafe "\"error\"" js_ResponseTypeError
        :: JSVal
 
foreign import javascript unsafe "\"opaque\"" js_ResponseTypeOpaque
        :: JSVal
 
foreign import javascript unsafe "\"opaqueredirect\""
        js_ResponseTypeOpaqueredirect :: JSVal
 
data IDBCursorDirection = IDBCursorDirectionNext
                        | IDBCursorDirectionNextunique
                        | IDBCursorDirectionPrev
                        | IDBCursorDirectionPrevunique
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal IDBCursorDirection where
        pToJSVal IDBCursorDirectionNext = js_IDBCursorDirectionNext
        pToJSVal IDBCursorDirectionNextunique
          = js_IDBCursorDirectionNextunique
        pToJSVal IDBCursorDirectionPrev = js_IDBCursorDirectionPrev
        pToJSVal IDBCursorDirectionPrevunique
          = js_IDBCursorDirectionPrevunique
 
instance ToJSVal IDBCursorDirection where
        toJSVal = return . pToJSVal
 
instance PFromJSVal IDBCursorDirection where
        pFromJSVal x
          | x `js_eq` js_IDBCursorDirectionNext = IDBCursorDirectionNext
        pFromJSVal x
          | x `js_eq` js_IDBCursorDirectionNextunique =
            IDBCursorDirectionNextunique
        pFromJSVal x
          | x `js_eq` js_IDBCursorDirectionPrev = IDBCursorDirectionPrev
        pFromJSVal x
          | x `js_eq` js_IDBCursorDirectionPrevunique =
            IDBCursorDirectionPrevunique
 
instance FromJSVal IDBCursorDirection where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"next\""
        js_IDBCursorDirectionNext :: JSVal
 
foreign import javascript unsafe "\"nextunique\""
        js_IDBCursorDirectionNextunique :: JSVal
 
foreign import javascript unsafe "\"prev\""
        js_IDBCursorDirectionPrev :: JSVal
 
foreign import javascript unsafe "\"prevunique\""
        js_IDBCursorDirectionPrevunique :: JSVal
 
data IDBRequestReadyState = IDBRequestReadyStatePending
                          | IDBRequestReadyStateDone
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal IDBRequestReadyState where
        pToJSVal IDBRequestReadyStatePending
          = js_IDBRequestReadyStatePending
        pToJSVal IDBRequestReadyStateDone = js_IDBRequestReadyStateDone
 
instance ToJSVal IDBRequestReadyState where
        toJSVal = return . pToJSVal
 
instance PFromJSVal IDBRequestReadyState where
        pFromJSVal x
          | x `js_eq` js_IDBRequestReadyStatePending =
            IDBRequestReadyStatePending
        pFromJSVal x
          | x `js_eq` js_IDBRequestReadyStateDone = IDBRequestReadyStateDone
 
instance FromJSVal IDBRequestReadyState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"pending\""
        js_IDBRequestReadyStatePending :: JSVal
 
foreign import javascript unsafe "\"done\""
        js_IDBRequestReadyStateDone :: JSVal
 
data IDBTransactionMode = IDBTransactionModeReadonly
                        | IDBTransactionModeReadwrite
                        | IDBTransactionModeVersionchange
                        deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal IDBTransactionMode where
        pToJSVal IDBTransactionModeReadonly = js_IDBTransactionModeReadonly
        pToJSVal IDBTransactionModeReadwrite
          = js_IDBTransactionModeReadwrite
        pToJSVal IDBTransactionModeVersionchange
          = js_IDBTransactionModeVersionchange
 
instance ToJSVal IDBTransactionMode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal IDBTransactionMode where
        pFromJSVal x
          | x `js_eq` js_IDBTransactionModeReadonly =
            IDBTransactionModeReadonly
        pFromJSVal x
          | x `js_eq` js_IDBTransactionModeReadwrite =
            IDBTransactionModeReadwrite
        pFromJSVal x
          | x `js_eq` js_IDBTransactionModeVersionchange =
            IDBTransactionModeVersionchange
 
instance FromJSVal IDBTransactionMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"readonly\""
        js_IDBTransactionModeReadonly :: JSVal
 
foreign import javascript unsafe "\"readwrite\""
        js_IDBTransactionModeReadwrite :: JSVal
 
foreign import javascript unsafe "\"versionchange\""
        js_IDBTransactionModeVersionchange :: JSVal
 
data DeviceType = DeviceTypeNone
                | DeviceTypeAirplay
                | DeviceTypeTvout
                deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal DeviceType where
        pToJSVal DeviceTypeNone = js_DeviceTypeNone
        pToJSVal DeviceTypeAirplay = js_DeviceTypeAirplay
        pToJSVal DeviceTypeTvout = js_DeviceTypeTvout
 
instance ToJSVal DeviceType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal DeviceType where
        pFromJSVal x | x `js_eq` js_DeviceTypeNone = DeviceTypeNone
        pFromJSVal x | x `js_eq` js_DeviceTypeAirplay = DeviceTypeAirplay
        pFromJSVal x | x `js_eq` js_DeviceTypeTvout = DeviceTypeTvout
 
instance FromJSVal DeviceType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"none\"" js_DeviceTypeNone ::
        JSVal
 
foreign import javascript unsafe "\"airplay\"" js_DeviceTypeAirplay
        :: JSVal
 
foreign import javascript unsafe "\"tvout\"" js_DeviceTypeTvout ::
        JSVal
 
data MediaSessionKind = MediaSessionKindContent
                      | MediaSessionKindTransient
                      | MediaSessionKindTransientSolo
                      | MediaSessionKindAmbient
                      deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal MediaSessionKind where
        pToJSVal MediaSessionKindContent = js_MediaSessionKindContent
        pToJSVal MediaSessionKindTransient = js_MediaSessionKindTransient
        pToJSVal MediaSessionKindTransientSolo
          = js_MediaSessionKindTransientSolo
        pToJSVal MediaSessionKindAmbient = js_MediaSessionKindAmbient
 
instance ToJSVal MediaSessionKind where
        toJSVal = return . pToJSVal
 
instance PFromJSVal MediaSessionKind where
        pFromJSVal x
          | x `js_eq` js_MediaSessionKindContent = MediaSessionKindContent
        pFromJSVal x
          | x `js_eq` js_MediaSessionKindTransient =
            MediaSessionKindTransient
        pFromJSVal x
          | x `js_eq` js_MediaSessionKindTransientSolo =
            MediaSessionKindTransientSolo
        pFromJSVal x
          | x `js_eq` js_MediaSessionKindAmbient = MediaSessionKindAmbient
 
instance FromJSVal MediaSessionKind where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"content\""
        js_MediaSessionKindContent :: JSVal
 
foreign import javascript unsafe "\"transient\""
        js_MediaSessionKindTransient :: JSVal
 
foreign import javascript unsafe "\"transient-solo\""
        js_MediaSessionKindTransientSolo :: JSVal
 
foreign import javascript unsafe "\"ambient\""
        js_MediaSessionKindAmbient :: JSVal
 
data EndOfStreamError = EndOfStreamErrorNetwork
                      | EndOfStreamErrorDecode
                      deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal EndOfStreamError where
        pToJSVal EndOfStreamErrorNetwork = js_EndOfStreamErrorNetwork
        pToJSVal EndOfStreamErrorDecode = js_EndOfStreamErrorDecode
 
instance ToJSVal EndOfStreamError where
        toJSVal = return . pToJSVal
 
instance PFromJSVal EndOfStreamError where
        pFromJSVal x
          | x `js_eq` js_EndOfStreamErrorNetwork = EndOfStreamErrorNetwork
        pFromJSVal x
          | x `js_eq` js_EndOfStreamErrorDecode = EndOfStreamErrorDecode
 
instance FromJSVal EndOfStreamError where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"network\""
        js_EndOfStreamErrorNetwork :: JSVal
 
foreign import javascript unsafe "\"decode\""
        js_EndOfStreamErrorDecode :: JSVal
 
data ReadyState = ReadyStateClosed
                | ReadyStateOpen
                | ReadyStateEnded
                deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ReadyState where
        pToJSVal ReadyStateClosed = js_ReadyStateClosed
        pToJSVal ReadyStateOpen = js_ReadyStateOpen
        pToJSVal ReadyStateEnded = js_ReadyStateEnded
 
instance ToJSVal ReadyState where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ReadyState where
        pFromJSVal x | x `js_eq` js_ReadyStateClosed = ReadyStateClosed
        pFromJSVal x | x `js_eq` js_ReadyStateOpen = ReadyStateOpen
        pFromJSVal x | x `js_eq` js_ReadyStateEnded = ReadyStateEnded
 
instance FromJSVal ReadyState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"closed\"" js_ReadyStateClosed
        :: JSVal
 
foreign import javascript unsafe "\"open\"" js_ReadyStateOpen ::
        JSVal
 
foreign import javascript unsafe "\"ended\"" js_ReadyStateEnded ::
        JSVal
 
data AppendMode = AppendModeSegments
                | AppendModeSequence
                deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal AppendMode where
        pToJSVal AppendModeSegments = js_AppendModeSegments
        pToJSVal AppendModeSequence = js_AppendModeSequence
 
instance ToJSVal AppendMode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal AppendMode where
        pFromJSVal x | x `js_eq` js_AppendModeSegments = AppendModeSegments
        pFromJSVal x | x `js_eq` js_AppendModeSequence = AppendModeSequence
 
instance FromJSVal AppendMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"segments\""
        js_AppendModeSegments :: JSVal
 
foreign import javascript unsafe "\"sequence\""
        js_AppendModeSequence :: JSVal
 
data MediaDeviceKind = MediaDeviceKindAudioinput
                     | MediaDeviceKindAudiooutput
                     | MediaDeviceKindVideoinput
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal MediaDeviceKind where
        pToJSVal MediaDeviceKindAudioinput = js_MediaDeviceKindAudioinput
        pToJSVal MediaDeviceKindAudiooutput = js_MediaDeviceKindAudiooutput
        pToJSVal MediaDeviceKindVideoinput = js_MediaDeviceKindVideoinput
 
instance ToJSVal MediaDeviceKind where
        toJSVal = return . pToJSVal
 
instance PFromJSVal MediaDeviceKind where
        pFromJSVal x
          | x `js_eq` js_MediaDeviceKindAudioinput =
            MediaDeviceKindAudioinput
        pFromJSVal x
          | x `js_eq` js_MediaDeviceKindAudiooutput =
            MediaDeviceKindAudiooutput
        pFromJSVal x
          | x `js_eq` js_MediaDeviceKindVideoinput =
            MediaDeviceKindVideoinput
 
instance FromJSVal MediaDeviceKind where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"audioinput\""
        js_MediaDeviceKindAudioinput :: JSVal
 
foreign import javascript unsafe "\"audiooutput\""
        js_MediaDeviceKindAudiooutput :: JSVal
 
foreign import javascript unsafe "\"videoinput\""
        js_MediaDeviceKindVideoinput :: JSVal
 
data MediaStreamTrackState = MediaStreamTrackStateLive
                           | MediaStreamTrackStateEnded
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal MediaStreamTrackState where
        pToJSVal MediaStreamTrackStateLive = js_MediaStreamTrackStateLive
        pToJSVal MediaStreamTrackStateEnded = js_MediaStreamTrackStateEnded
 
instance ToJSVal MediaStreamTrackState where
        toJSVal = return . pToJSVal
 
instance PFromJSVal MediaStreamTrackState where
        pFromJSVal x
          | x `js_eq` js_MediaStreamTrackStateLive =
            MediaStreamTrackStateLive
        pFromJSVal x
          | x `js_eq` js_MediaStreamTrackStateEnded =
            MediaStreamTrackStateEnded
 
instance FromJSVal MediaStreamTrackState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"live\""
        js_MediaStreamTrackStateLive :: JSVal
 
foreign import javascript unsafe "\"ended\""
        js_MediaStreamTrackStateEnded :: JSVal
 
data RTCIceTransportPolicy = RTCIceTransportPolicyRelay
                           | RTCIceTransportPolicyAll
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCIceTransportPolicy where
        pToJSVal RTCIceTransportPolicyRelay = js_RTCIceTransportPolicyRelay
        pToJSVal RTCIceTransportPolicyAll = js_RTCIceTransportPolicyAll
 
instance ToJSVal RTCIceTransportPolicy where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCIceTransportPolicy where
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportPolicyRelay =
            RTCIceTransportPolicyRelay
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportPolicyAll = RTCIceTransportPolicyAll
 
instance FromJSVal RTCIceTransportPolicy where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"relay\""
        js_RTCIceTransportPolicyRelay :: JSVal
 
foreign import javascript unsafe "\"all\""
        js_RTCIceTransportPolicyAll :: JSVal
 
data RTCBundlePolicy = RTCBundlePolicyBalanced
                     | RTCBundlePolicyMaxCompat
                     | RTCBundlePolicyMaxBundle
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCBundlePolicy where
        pToJSVal RTCBundlePolicyBalanced = js_RTCBundlePolicyBalanced
        pToJSVal RTCBundlePolicyMaxCompat = js_RTCBundlePolicyMaxCompat
        pToJSVal RTCBundlePolicyMaxBundle = js_RTCBundlePolicyMaxBundle
 
instance ToJSVal RTCBundlePolicy where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCBundlePolicy where
        pFromJSVal x
          | x `js_eq` js_RTCBundlePolicyBalanced = RTCBundlePolicyBalanced
        pFromJSVal x
          | x `js_eq` js_RTCBundlePolicyMaxCompat = RTCBundlePolicyMaxCompat
        pFromJSVal x
          | x `js_eq` js_RTCBundlePolicyMaxBundle = RTCBundlePolicyMaxBundle
 
instance FromJSVal RTCBundlePolicy where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"balanced\""
        js_RTCBundlePolicyBalanced :: JSVal
 
foreign import javascript unsafe "\"max-compat\""
        js_RTCBundlePolicyMaxCompat :: JSVal
 
foreign import javascript unsafe "\"max-bundle\""
        js_RTCBundlePolicyMaxBundle :: JSVal
 
data RTCDataChannelState = RTCDataChannelStateConnecting
                         | RTCDataChannelStateOpen
                         | RTCDataChannelStateClosing
                         | RTCDataChannelStateClosed
                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCDataChannelState where
        pToJSVal RTCDataChannelStateConnecting
          = js_RTCDataChannelStateConnecting
        pToJSVal RTCDataChannelStateOpen = js_RTCDataChannelStateOpen
        pToJSVal RTCDataChannelStateClosing = js_RTCDataChannelStateClosing
        pToJSVal RTCDataChannelStateClosed = js_RTCDataChannelStateClosed
 
instance ToJSVal RTCDataChannelState where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCDataChannelState where
        pFromJSVal x
          | x `js_eq` js_RTCDataChannelStateConnecting =
            RTCDataChannelStateConnecting
        pFromJSVal x
          | x `js_eq` js_RTCDataChannelStateOpen = RTCDataChannelStateOpen
        pFromJSVal x
          | x `js_eq` js_RTCDataChannelStateClosing =
            RTCDataChannelStateClosing
        pFromJSVal x
          | x `js_eq` js_RTCDataChannelStateClosed =
            RTCDataChannelStateClosed
 
instance FromJSVal RTCDataChannelState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"connecting\""
        js_RTCDataChannelStateConnecting :: JSVal
 
foreign import javascript unsafe "\"open\""
        js_RTCDataChannelStateOpen :: JSVal
 
foreign import javascript unsafe "\"closing\""
        js_RTCDataChannelStateClosing :: JSVal
 
foreign import javascript unsafe "\"closed\""
        js_RTCDataChannelStateClosed :: JSVal
 
data RTCIceConnectionState = RTCIceConnectionStateNew
                           | RTCIceConnectionStateChecking
                           | RTCIceConnectionStateConnected
                           | RTCIceConnectionStateCompleted
                           | RTCIceConnectionStateFailed
                           | RTCIceConnectionStateDisconnected
                           | RTCIceConnectionStateClosed
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCIceConnectionState where
        pToJSVal RTCIceConnectionStateNew = js_RTCIceConnectionStateNew
        pToJSVal RTCIceConnectionStateChecking
          = js_RTCIceConnectionStateChecking
        pToJSVal RTCIceConnectionStateConnected
          = js_RTCIceConnectionStateConnected
        pToJSVal RTCIceConnectionStateCompleted
          = js_RTCIceConnectionStateCompleted
        pToJSVal RTCIceConnectionStateFailed
          = js_RTCIceConnectionStateFailed
        pToJSVal RTCIceConnectionStateDisconnected
          = js_RTCIceConnectionStateDisconnected
        pToJSVal RTCIceConnectionStateClosed
          = js_RTCIceConnectionStateClosed
 
instance ToJSVal RTCIceConnectionState where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCIceConnectionState where
        pFromJSVal x
          | x `js_eq` js_RTCIceConnectionStateNew = RTCIceConnectionStateNew
        pFromJSVal x
          | x `js_eq` js_RTCIceConnectionStateChecking =
            RTCIceConnectionStateChecking
        pFromJSVal x
          | x `js_eq` js_RTCIceConnectionStateConnected =
            RTCIceConnectionStateConnected
        pFromJSVal x
          | x `js_eq` js_RTCIceConnectionStateCompleted =
            RTCIceConnectionStateCompleted
        pFromJSVal x
          | x `js_eq` js_RTCIceConnectionStateFailed =
            RTCIceConnectionStateFailed
        pFromJSVal x
          | x `js_eq` js_RTCIceConnectionStateDisconnected =
            RTCIceConnectionStateDisconnected
        pFromJSVal x
          | x `js_eq` js_RTCIceConnectionStateClosed =
            RTCIceConnectionStateClosed
 
instance FromJSVal RTCIceConnectionState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"new\""
        js_RTCIceConnectionStateNew :: JSVal
 
foreign import javascript unsafe "\"checking\""
        js_RTCIceConnectionStateChecking :: JSVal
 
foreign import javascript unsafe "\"connected\""
        js_RTCIceConnectionStateConnected :: JSVal
 
foreign import javascript unsafe "\"completed\""
        js_RTCIceConnectionStateCompleted :: JSVal
 
foreign import javascript unsafe "\"failed\""
        js_RTCIceConnectionStateFailed :: JSVal
 
foreign import javascript unsafe "\"disconnected\""
        js_RTCIceConnectionStateDisconnected :: JSVal
 
foreign import javascript unsafe "\"closed\""
        js_RTCIceConnectionStateClosed :: JSVal
 
data RTCIceGatheringState = RTCIceGatheringStateNew
                          | RTCIceGatheringStateGathering
                          | RTCIceGatheringStateComplete
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCIceGatheringState where
        pToJSVal RTCIceGatheringStateNew = js_RTCIceGatheringStateNew
        pToJSVal RTCIceGatheringStateGathering
          = js_RTCIceGatheringStateGathering
        pToJSVal RTCIceGatheringStateComplete
          = js_RTCIceGatheringStateComplete
 
instance ToJSVal RTCIceGatheringState where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCIceGatheringState where
        pFromJSVal x
          | x `js_eq` js_RTCIceGatheringStateNew = RTCIceGatheringStateNew
        pFromJSVal x
          | x `js_eq` js_RTCIceGatheringStateGathering =
            RTCIceGatheringStateGathering
        pFromJSVal x
          | x `js_eq` js_RTCIceGatheringStateComplete =
            RTCIceGatheringStateComplete
 
instance FromJSVal RTCIceGatheringState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"new\""
        js_RTCIceGatheringStateNew :: JSVal
 
foreign import javascript unsafe "\"gathering\""
        js_RTCIceGatheringStateGathering :: JSVal
 
foreign import javascript unsafe "\"complete\""
        js_RTCIceGatheringStateComplete :: JSVal
 
data RTCIceTransportState = RTCIceTransportStateNew
                          | RTCIceTransportStateChecking
                          | RTCIceTransportStateConnected
                          | RTCIceTransportStateCompleted
                          | RTCIceTransportStateFailed
                          | RTCIceTransportStateDisconnected
                          | RTCIceTransportStateClosed
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCIceTransportState where
        pToJSVal RTCIceTransportStateNew = js_RTCIceTransportStateNew
        pToJSVal RTCIceTransportStateChecking
          = js_RTCIceTransportStateChecking
        pToJSVal RTCIceTransportStateConnected
          = js_RTCIceTransportStateConnected
        pToJSVal RTCIceTransportStateCompleted
          = js_RTCIceTransportStateCompleted
        pToJSVal RTCIceTransportStateFailed = js_RTCIceTransportStateFailed
        pToJSVal RTCIceTransportStateDisconnected
          = js_RTCIceTransportStateDisconnected
        pToJSVal RTCIceTransportStateClosed = js_RTCIceTransportStateClosed
 
instance ToJSVal RTCIceTransportState where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCIceTransportState where
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportStateNew = RTCIceTransportStateNew
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportStateChecking =
            RTCIceTransportStateChecking
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportStateConnected =
            RTCIceTransportStateConnected
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportStateCompleted =
            RTCIceTransportStateCompleted
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportStateFailed =
            RTCIceTransportStateFailed
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportStateDisconnected =
            RTCIceTransportStateDisconnected
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportStateClosed =
            RTCIceTransportStateClosed
 
instance FromJSVal RTCIceTransportState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"new\""
        js_RTCIceTransportStateNew :: JSVal
 
foreign import javascript unsafe "\"checking\""
        js_RTCIceTransportStateChecking :: JSVal
 
foreign import javascript unsafe "\"connected\""
        js_RTCIceTransportStateConnected :: JSVal
 
foreign import javascript unsafe "\"completed\""
        js_RTCIceTransportStateCompleted :: JSVal
 
foreign import javascript unsafe "\"failed\""
        js_RTCIceTransportStateFailed :: JSVal
 
foreign import javascript unsafe "\"disconnected\""
        js_RTCIceTransportStateDisconnected :: JSVal
 
foreign import javascript unsafe "\"closed\""
        js_RTCIceTransportStateClosed :: JSVal
 
data RTCPeerConnectionState = RTCPeerConnectionStateNew
                            | RTCPeerConnectionStateConnecting
                            | RTCPeerConnectionStateConnected
                            | RTCPeerConnectionStateDisconnected
                            | RTCPeerConnectionStateFailed
                            | RTCPeerConnectionStateClosed
                            deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCPeerConnectionState where
        pToJSVal RTCPeerConnectionStateNew = js_RTCPeerConnectionStateNew
        pToJSVal RTCPeerConnectionStateConnecting
          = js_RTCPeerConnectionStateConnecting
        pToJSVal RTCPeerConnectionStateConnected
          = js_RTCPeerConnectionStateConnected
        pToJSVal RTCPeerConnectionStateDisconnected
          = js_RTCPeerConnectionStateDisconnected
        pToJSVal RTCPeerConnectionStateFailed
          = js_RTCPeerConnectionStateFailed
        pToJSVal RTCPeerConnectionStateClosed
          = js_RTCPeerConnectionStateClosed
 
instance ToJSVal RTCPeerConnectionState where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCPeerConnectionState where
        pFromJSVal x
          | x `js_eq` js_RTCPeerConnectionStateNew =
            RTCPeerConnectionStateNew
        pFromJSVal x
          | x `js_eq` js_RTCPeerConnectionStateConnecting =
            RTCPeerConnectionStateConnecting
        pFromJSVal x
          | x `js_eq` js_RTCPeerConnectionStateConnected =
            RTCPeerConnectionStateConnected
        pFromJSVal x
          | x `js_eq` js_RTCPeerConnectionStateDisconnected =
            RTCPeerConnectionStateDisconnected
        pFromJSVal x
          | x `js_eq` js_RTCPeerConnectionStateFailed =
            RTCPeerConnectionStateFailed
        pFromJSVal x
          | x `js_eq` js_RTCPeerConnectionStateClosed =
            RTCPeerConnectionStateClosed
 
instance FromJSVal RTCPeerConnectionState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"new\""
        js_RTCPeerConnectionStateNew :: JSVal
 
foreign import javascript unsafe "\"connecting\""
        js_RTCPeerConnectionStateConnecting :: JSVal
 
foreign import javascript unsafe "\"connected\""
        js_RTCPeerConnectionStateConnected :: JSVal
 
foreign import javascript unsafe "\"disconnected\""
        js_RTCPeerConnectionStateDisconnected :: JSVal
 
foreign import javascript unsafe "\"failed\""
        js_RTCPeerConnectionStateFailed :: JSVal
 
foreign import javascript unsafe "\"closed\""
        js_RTCPeerConnectionStateClosed :: JSVal
 
data RTCDegradationPreference = RTCDegradationPreferenceMaintainFramerate
                              | RTCDegradationPreferenceMaintainResolution
                              | RTCDegradationPreferenceBalanced
                              deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCDegradationPreference where
        pToJSVal RTCDegradationPreferenceMaintainFramerate
          = js_RTCDegradationPreferenceMaintainFramerate
        pToJSVal RTCDegradationPreferenceMaintainResolution
          = js_RTCDegradationPreferenceMaintainResolution
        pToJSVal RTCDegradationPreferenceBalanced
          = js_RTCDegradationPreferenceBalanced
 
instance ToJSVal RTCDegradationPreference where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCDegradationPreference where
        pFromJSVal x
          | x `js_eq` js_RTCDegradationPreferenceMaintainFramerate =
            RTCDegradationPreferenceMaintainFramerate
        pFromJSVal x
          | x `js_eq` js_RTCDegradationPreferenceMaintainResolution =
            RTCDegradationPreferenceMaintainResolution
        pFromJSVal x
          | x `js_eq` js_RTCDegradationPreferenceBalanced =
            RTCDegradationPreferenceBalanced
 
instance FromJSVal RTCDegradationPreference where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"maintain-framerate\""
        js_RTCDegradationPreferenceMaintainFramerate :: JSVal
 
foreign import javascript unsafe "\"maintain-resolution\""
        js_RTCDegradationPreferenceMaintainResolution :: JSVal
 
foreign import javascript unsafe "\"balanced\""
        js_RTCDegradationPreferenceBalanced :: JSVal
 
data RTCDtxStatus = RTCDtxStatusDisabled
                  | RTCDtxStatusEnabled
                  deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCDtxStatus where
        pToJSVal RTCDtxStatusDisabled = js_RTCDtxStatusDisabled
        pToJSVal RTCDtxStatusEnabled = js_RTCDtxStatusEnabled
 
instance ToJSVal RTCDtxStatus where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCDtxStatus where
        pFromJSVal x
          | x `js_eq` js_RTCDtxStatusDisabled = RTCDtxStatusDisabled
        pFromJSVal x
          | x `js_eq` js_RTCDtxStatusEnabled = RTCDtxStatusEnabled
 
instance FromJSVal RTCDtxStatus where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"disabled\""
        js_RTCDtxStatusDisabled :: JSVal
 
foreign import javascript unsafe "\"enabled\""
        js_RTCDtxStatusEnabled :: JSVal
 
data RTCPriorityType = RTCPriorityTypeVeryLow
                     | RTCPriorityTypeLow
                     | RTCPriorityTypeMedium
                     | RTCPriorityTypeHigh
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCPriorityType where
        pToJSVal RTCPriorityTypeVeryLow = js_RTCPriorityTypeVeryLow
        pToJSVal RTCPriorityTypeLow = js_RTCPriorityTypeLow
        pToJSVal RTCPriorityTypeMedium = js_RTCPriorityTypeMedium
        pToJSVal RTCPriorityTypeHigh = js_RTCPriorityTypeHigh
 
instance ToJSVal RTCPriorityType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCPriorityType where
        pFromJSVal x
          | x `js_eq` js_RTCPriorityTypeVeryLow = RTCPriorityTypeVeryLow
        pFromJSVal x | x `js_eq` js_RTCPriorityTypeLow = RTCPriorityTypeLow
        pFromJSVal x
          | x `js_eq` js_RTCPriorityTypeMedium = RTCPriorityTypeMedium
        pFromJSVal x
          | x `js_eq` js_RTCPriorityTypeHigh = RTCPriorityTypeHigh
 
instance FromJSVal RTCPriorityType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"very-low\""
        js_RTCPriorityTypeVeryLow :: JSVal
 
foreign import javascript unsafe "\"low\"" js_RTCPriorityTypeLow ::
        JSVal
 
foreign import javascript unsafe "\"medium\""
        js_RTCPriorityTypeMedium :: JSVal
 
foreign import javascript unsafe "\"high\"" js_RTCPriorityTypeHigh
        :: JSVal
 
data RTCRtpTransceiverDirection = RTCRtpTransceiverDirectionSendrecv
                                | RTCRtpTransceiverDirectionSendonly
                                | RTCRtpTransceiverDirectionRecvonly
                                | RTCRtpTransceiverDirectionInactive
                                deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCRtpTransceiverDirection where
        pToJSVal RTCRtpTransceiverDirectionSendrecv
          = js_RTCRtpTransceiverDirectionSendrecv
        pToJSVal RTCRtpTransceiverDirectionSendonly
          = js_RTCRtpTransceiverDirectionSendonly
        pToJSVal RTCRtpTransceiverDirectionRecvonly
          = js_RTCRtpTransceiverDirectionRecvonly
        pToJSVal RTCRtpTransceiverDirectionInactive
          = js_RTCRtpTransceiverDirectionInactive
 
instance ToJSVal RTCRtpTransceiverDirection where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCRtpTransceiverDirection where
        pFromJSVal x
          | x `js_eq` js_RTCRtpTransceiverDirectionSendrecv =
            RTCRtpTransceiverDirectionSendrecv
        pFromJSVal x
          | x `js_eq` js_RTCRtpTransceiverDirectionSendonly =
            RTCRtpTransceiverDirectionSendonly
        pFromJSVal x
          | x `js_eq` js_RTCRtpTransceiverDirectionRecvonly =
            RTCRtpTransceiverDirectionRecvonly
        pFromJSVal x
          | x `js_eq` js_RTCRtpTransceiverDirectionInactive =
            RTCRtpTransceiverDirectionInactive
 
instance FromJSVal RTCRtpTransceiverDirection where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"sendrecv\""
        js_RTCRtpTransceiverDirectionSendrecv :: JSVal
 
foreign import javascript unsafe "\"sendonly\""
        js_RTCRtpTransceiverDirectionSendonly :: JSVal
 
foreign import javascript unsafe "\"recvonly\""
        js_RTCRtpTransceiverDirectionRecvonly :: JSVal
 
foreign import javascript unsafe "\"inactive\""
        js_RTCRtpTransceiverDirectionInactive :: JSVal
 
data RTCSdpType = RTCSdpTypeOffer
                | RTCSdpTypePranswer
                | RTCSdpTypeAnswer
                | RTCSdpTypeRollback
                deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCSdpType where
        pToJSVal RTCSdpTypeOffer = js_RTCSdpTypeOffer
        pToJSVal RTCSdpTypePranswer = js_RTCSdpTypePranswer
        pToJSVal RTCSdpTypeAnswer = js_RTCSdpTypeAnswer
        pToJSVal RTCSdpTypeRollback = js_RTCSdpTypeRollback
 
instance ToJSVal RTCSdpType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCSdpType where
        pFromJSVal x | x `js_eq` js_RTCSdpTypeOffer = RTCSdpTypeOffer
        pFromJSVal x | x `js_eq` js_RTCSdpTypePranswer = RTCSdpTypePranswer
        pFromJSVal x | x `js_eq` js_RTCSdpTypeAnswer = RTCSdpTypeAnswer
        pFromJSVal x | x `js_eq` js_RTCSdpTypeRollback = RTCSdpTypeRollback
 
instance FromJSVal RTCSdpType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"offer\"" js_RTCSdpTypeOffer ::
        JSVal
 
foreign import javascript unsafe "\"pranswer\""
        js_RTCSdpTypePranswer :: JSVal
 
foreign import javascript unsafe "\"answer\"" js_RTCSdpTypeAnswer
        :: JSVal
 
foreign import javascript unsafe "\"rollback\""
        js_RTCSdpTypeRollback :: JSVal
 
data RTCSignalingState = RTCSignalingStateStable
                       | RTCSignalingStateHaveLocalOffer
                       | RTCSignalingStateHaveRemoteOffer
                       | RTCSignalingStateHaveLocalPranswer
                       | RTCSignalingStateHaveRemotePranswer
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCSignalingState where
        pToJSVal RTCSignalingStateStable = js_RTCSignalingStateStable
        pToJSVal RTCSignalingStateHaveLocalOffer
          = js_RTCSignalingStateHaveLocalOffer
        pToJSVal RTCSignalingStateHaveRemoteOffer
          = js_RTCSignalingStateHaveRemoteOffer
        pToJSVal RTCSignalingStateHaveLocalPranswer
          = js_RTCSignalingStateHaveLocalPranswer
        pToJSVal RTCSignalingStateHaveRemotePranswer
          = js_RTCSignalingStateHaveRemotePranswer
 
instance ToJSVal RTCSignalingState where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCSignalingState where
        pFromJSVal x
          | x `js_eq` js_RTCSignalingStateStable = RTCSignalingStateStable
        pFromJSVal x
          | x `js_eq` js_RTCSignalingStateHaveLocalOffer =
            RTCSignalingStateHaveLocalOffer
        pFromJSVal x
          | x `js_eq` js_RTCSignalingStateHaveRemoteOffer =
            RTCSignalingStateHaveRemoteOffer
        pFromJSVal x
          | x `js_eq` js_RTCSignalingStateHaveLocalPranswer =
            RTCSignalingStateHaveLocalPranswer
        pFromJSVal x
          | x `js_eq` js_RTCSignalingStateHaveRemotePranswer =
            RTCSignalingStateHaveRemotePranswer
 
instance FromJSVal RTCSignalingState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"stable\""
        js_RTCSignalingStateStable :: JSVal
 
foreign import javascript unsafe "\"have-local-offer\""
        js_RTCSignalingStateHaveLocalOffer :: JSVal
 
foreign import javascript unsafe "\"have-remote-offer\""
        js_RTCSignalingStateHaveRemoteOffer :: JSVal
 
foreign import javascript unsafe "\"have-local-pranswer\""
        js_RTCSignalingStateHaveLocalPranswer :: JSVal
 
foreign import javascript unsafe "\"have-remote-pranswer\""
        js_RTCSignalingStateHaveRemotePranswer :: JSVal
 
data RTCStatsType = RTCStatsTypeCodec
                  | RTCStatsTypeInboundRtp
                  | RTCStatsTypeOutboundRtp
                  | RTCStatsTypePeerConnection
                  | RTCStatsTypeDataChannel
                  | RTCStatsTypeTrack
                  | RTCStatsTypeTransport
                  | RTCStatsTypeCandidatePair
                  | RTCStatsTypeLocalCandidate
                  | RTCStatsTypeRemoteCandidate
                  | RTCStatsTypeCertificate
                  deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCStatsType where
        pToJSVal RTCStatsTypeCodec = js_RTCStatsTypeCodec
        pToJSVal RTCStatsTypeInboundRtp = js_RTCStatsTypeInboundRtp
        pToJSVal RTCStatsTypeOutboundRtp = js_RTCStatsTypeOutboundRtp
        pToJSVal RTCStatsTypePeerConnection = js_RTCStatsTypePeerConnection
        pToJSVal RTCStatsTypeDataChannel = js_RTCStatsTypeDataChannel
        pToJSVal RTCStatsTypeTrack = js_RTCStatsTypeTrack
        pToJSVal RTCStatsTypeTransport = js_RTCStatsTypeTransport
        pToJSVal RTCStatsTypeCandidatePair = js_RTCStatsTypeCandidatePair
        pToJSVal RTCStatsTypeLocalCandidate = js_RTCStatsTypeLocalCandidate
        pToJSVal RTCStatsTypeRemoteCandidate
          = js_RTCStatsTypeRemoteCandidate
        pToJSVal RTCStatsTypeCertificate = js_RTCStatsTypeCertificate
 
instance ToJSVal RTCStatsType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCStatsType where
        pFromJSVal x | x `js_eq` js_RTCStatsTypeCodec = RTCStatsTypeCodec
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeInboundRtp = RTCStatsTypeInboundRtp
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeOutboundRtp = RTCStatsTypeOutboundRtp
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypePeerConnection =
            RTCStatsTypePeerConnection
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeDataChannel = RTCStatsTypeDataChannel
        pFromJSVal x | x `js_eq` js_RTCStatsTypeTrack = RTCStatsTypeTrack
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeTransport = RTCStatsTypeTransport
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeCandidatePair =
            RTCStatsTypeCandidatePair
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeLocalCandidate =
            RTCStatsTypeLocalCandidate
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeRemoteCandidate =
            RTCStatsTypeRemoteCandidate
        pFromJSVal x
          | x `js_eq` js_RTCStatsTypeCertificate = RTCStatsTypeCertificate
 
instance FromJSVal RTCStatsType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"codec\"" js_RTCStatsTypeCodec
        :: JSVal
 
foreign import javascript unsafe "\"inbound-rtp\""
        js_RTCStatsTypeInboundRtp :: JSVal
 
foreign import javascript unsafe "\"outbound-rtp\""
        js_RTCStatsTypeOutboundRtp :: JSVal
 
foreign import javascript unsafe "\"peer-connection\""
        js_RTCStatsTypePeerConnection :: JSVal
 
foreign import javascript unsafe "\"data-channel\""
        js_RTCStatsTypeDataChannel :: JSVal
 
foreign import javascript unsafe "\"track\"" js_RTCStatsTypeTrack
        :: JSVal
 
foreign import javascript unsafe "\"transport\""
        js_RTCStatsTypeTransport :: JSVal
 
foreign import javascript unsafe "\"candidate-pair\""
        js_RTCStatsTypeCandidatePair :: JSVal
 
foreign import javascript unsafe "\"local-candidate\""
        js_RTCStatsTypeLocalCandidate :: JSVal
 
foreign import javascript unsafe "\"remote-candidate\""
        js_RTCStatsTypeRemoteCandidate :: JSVal
 
foreign import javascript unsafe "\"certificate\""
        js_RTCStatsTypeCertificate :: JSVal
 
data NotificationDirection = NotificationDirectionAuto
                           | NotificationDirectionLtr
                           | NotificationDirectionRtl
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal NotificationDirection where
        pToJSVal NotificationDirectionAuto = js_NotificationDirectionAuto
        pToJSVal NotificationDirectionLtr = js_NotificationDirectionLtr
        pToJSVal NotificationDirectionRtl = js_NotificationDirectionRtl
 
instance ToJSVal NotificationDirection where
        toJSVal = return . pToJSVal
 
instance PFromJSVal NotificationDirection where
        pFromJSVal x
          | x `js_eq` js_NotificationDirectionAuto =
            NotificationDirectionAuto
        pFromJSVal x
          | x `js_eq` js_NotificationDirectionLtr = NotificationDirectionLtr
        pFromJSVal x
          | x `js_eq` js_NotificationDirectionRtl = NotificationDirectionRtl
 
instance FromJSVal NotificationDirection where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"auto\""
        js_NotificationDirectionAuto :: JSVal
 
foreign import javascript unsafe "\"ltr\""
        js_NotificationDirectionLtr :: JSVal
 
foreign import javascript unsafe "\"rtl\""
        js_NotificationDirectionRtl :: JSVal
 
data AudioContextState = AudioContextStateSuspended
                       | AudioContextStateRunning
                       | AudioContextStateInterrupted
                       | AudioContextStateClosed
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal AudioContextState where
        pToJSVal AudioContextStateSuspended = js_AudioContextStateSuspended
        pToJSVal AudioContextStateRunning = js_AudioContextStateRunning
        pToJSVal AudioContextStateInterrupted
          = js_AudioContextStateInterrupted
        pToJSVal AudioContextStateClosed = js_AudioContextStateClosed
 
instance ToJSVal AudioContextState where
        toJSVal = return . pToJSVal
 
instance PFromJSVal AudioContextState where
        pFromJSVal x
          | x `js_eq` js_AudioContextStateSuspended =
            AudioContextStateSuspended
        pFromJSVal x
          | x `js_eq` js_AudioContextStateRunning = AudioContextStateRunning
        pFromJSVal x
          | x `js_eq` js_AudioContextStateInterrupted =
            AudioContextStateInterrupted
        pFromJSVal x
          | x `js_eq` js_AudioContextStateClosed = AudioContextStateClosed
 
instance FromJSVal AudioContextState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"suspended\""
        js_AudioContextStateSuspended :: JSVal
 
foreign import javascript unsafe "\"running\""
        js_AudioContextStateRunning :: JSVal
 
foreign import javascript unsafe "\"interrupted\""
        js_AudioContextStateInterrupted :: JSVal
 
foreign import javascript unsafe "\"closed\""
        js_AudioContextStateClosed :: JSVal
 
data BiquadFilterType = BiquadFilterTypeLowpass
                      | BiquadFilterTypeHighpass
                      | BiquadFilterTypeBandpass
                      | BiquadFilterTypeLowshelf
                      | BiquadFilterTypeHighshelf
                      | BiquadFilterTypePeaking
                      | BiquadFilterTypeNotch
                      | BiquadFilterTypeAllpass
                      deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal BiquadFilterType where
        pToJSVal BiquadFilterTypeLowpass = js_BiquadFilterTypeLowpass
        pToJSVal BiquadFilterTypeHighpass = js_BiquadFilterTypeHighpass
        pToJSVal BiquadFilterTypeBandpass = js_BiquadFilterTypeBandpass
        pToJSVal BiquadFilterTypeLowshelf = js_BiquadFilterTypeLowshelf
        pToJSVal BiquadFilterTypeHighshelf = js_BiquadFilterTypeHighshelf
        pToJSVal BiquadFilterTypePeaking = js_BiquadFilterTypePeaking
        pToJSVal BiquadFilterTypeNotch = js_BiquadFilterTypeNotch
        pToJSVal BiquadFilterTypeAllpass = js_BiquadFilterTypeAllpass
 
instance ToJSVal BiquadFilterType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal BiquadFilterType where
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypeLowpass = BiquadFilterTypeLowpass
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypeHighpass = BiquadFilterTypeHighpass
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypeBandpass = BiquadFilterTypeBandpass
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypeLowshelf = BiquadFilterTypeLowshelf
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypeHighshelf =
            BiquadFilterTypeHighshelf
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypePeaking = BiquadFilterTypePeaking
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypeNotch = BiquadFilterTypeNotch
        pFromJSVal x
          | x `js_eq` js_BiquadFilterTypeAllpass = BiquadFilterTypeAllpass
 
instance FromJSVal BiquadFilterType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"lowpass\""
        js_BiquadFilterTypeLowpass :: JSVal
 
foreign import javascript unsafe "\"highpass\""
        js_BiquadFilterTypeHighpass :: JSVal
 
foreign import javascript unsafe "\"bandpass\""
        js_BiquadFilterTypeBandpass :: JSVal
 
foreign import javascript unsafe "\"lowshelf\""
        js_BiquadFilterTypeLowshelf :: JSVal
 
foreign import javascript unsafe "\"highshelf\""
        js_BiquadFilterTypeHighshelf :: JSVal
 
foreign import javascript unsafe "\"peaking\""
        js_BiquadFilterTypePeaking :: JSVal
 
foreign import javascript unsafe "\"notch\""
        js_BiquadFilterTypeNotch :: JSVal
 
foreign import javascript unsafe "\"allpass\""
        js_BiquadFilterTypeAllpass :: JSVal
 
data OscillatorType = OscillatorTypeSine
                    | OscillatorTypeSquare
                    | OscillatorTypeSawtooth
                    | OscillatorTypeTriangle
                    | OscillatorTypeCustom
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal OscillatorType where
        pToJSVal OscillatorTypeSine = js_OscillatorTypeSine
        pToJSVal OscillatorTypeSquare = js_OscillatorTypeSquare
        pToJSVal OscillatorTypeSawtooth = js_OscillatorTypeSawtooth
        pToJSVal OscillatorTypeTriangle = js_OscillatorTypeTriangle
        pToJSVal OscillatorTypeCustom = js_OscillatorTypeCustom
 
instance ToJSVal OscillatorType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal OscillatorType where
        pFromJSVal x | x `js_eq` js_OscillatorTypeSine = OscillatorTypeSine
        pFromJSVal x
          | x `js_eq` js_OscillatorTypeSquare = OscillatorTypeSquare
        pFromJSVal x
          | x `js_eq` js_OscillatorTypeSawtooth = OscillatorTypeSawtooth
        pFromJSVal x
          | x `js_eq` js_OscillatorTypeTriangle = OscillatorTypeTriangle
        pFromJSVal x
          | x `js_eq` js_OscillatorTypeCustom = OscillatorTypeCustom
 
instance FromJSVal OscillatorType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"sine\"" js_OscillatorTypeSine
        :: JSVal
 
foreign import javascript unsafe "\"square\""
        js_OscillatorTypeSquare :: JSVal
 
foreign import javascript unsafe "\"sawtooth\""
        js_OscillatorTypeSawtooth :: JSVal
 
foreign import javascript unsafe "\"triangle\""
        js_OscillatorTypeTriangle :: JSVal
 
foreign import javascript unsafe "\"custom\""
        js_OscillatorTypeCustom :: JSVal
 
data PanningModelType = PanningModelTypeEqualpower
                      | PanningModelTypeHRTF
                      deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal PanningModelType where
        pToJSVal PanningModelTypeEqualpower = js_PanningModelTypeEqualpower
        pToJSVal PanningModelTypeHRTF = js_PanningModelTypeHRTF
 
instance ToJSVal PanningModelType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal PanningModelType where
        pFromJSVal x
          | x `js_eq` js_PanningModelTypeEqualpower =
            PanningModelTypeEqualpower
        pFromJSVal x
          | x `js_eq` js_PanningModelTypeHRTF = PanningModelTypeHRTF
 
instance FromJSVal PanningModelType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"equalpower\""
        js_PanningModelTypeEqualpower :: JSVal
 
foreign import javascript unsafe "\"HRTF\"" js_PanningModelTypeHRTF
        :: JSVal
 
data DistanceModelType = DistanceModelTypeLinear
                       | DistanceModelTypeInverse
                       | DistanceModelTypeExponential
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal DistanceModelType where
        pToJSVal DistanceModelTypeLinear = js_DistanceModelTypeLinear
        pToJSVal DistanceModelTypeInverse = js_DistanceModelTypeInverse
        pToJSVal DistanceModelTypeExponential
          = js_DistanceModelTypeExponential
 
instance ToJSVal DistanceModelType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal DistanceModelType where
        pFromJSVal x
          | x `js_eq` js_DistanceModelTypeLinear = DistanceModelTypeLinear
        pFromJSVal x
          | x `js_eq` js_DistanceModelTypeInverse = DistanceModelTypeInverse
        pFromJSVal x
          | x `js_eq` js_DistanceModelTypeExponential =
            DistanceModelTypeExponential
 
instance FromJSVal DistanceModelType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"linear\""
        js_DistanceModelTypeLinear :: JSVal
 
foreign import javascript unsafe "\"inverse\""
        js_DistanceModelTypeInverse :: JSVal
 
foreign import javascript unsafe "\"exponential\""
        js_DistanceModelTypeExponential :: JSVal
 
data OverSampleType = OverSampleTypeNone
                    | OverSampleType2x
                    | OverSampleType4x
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal OverSampleType where
        pToJSVal OverSampleTypeNone = js_OverSampleTypeNone
        pToJSVal OverSampleType2x = js_OverSampleType2x
        pToJSVal OverSampleType4x = js_OverSampleType4x
 
instance ToJSVal OverSampleType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal OverSampleType where
        pFromJSVal x | x `js_eq` js_OverSampleTypeNone = OverSampleTypeNone
        pFromJSVal x | x `js_eq` js_OverSampleType2x = OverSampleType2x
        pFromJSVal x | x `js_eq` js_OverSampleType4x = OverSampleType4x
 
instance FromJSVal OverSampleType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"none\"" js_OverSampleTypeNone
        :: JSVal
 
foreign import javascript unsafe "\"2x\"" js_OverSampleType2x ::
        JSVal
 
foreign import javascript unsafe "\"4x\"" js_OverSampleType4x ::
        JSVal
 
data ScrollRestoration = ScrollRestorationAuto
                       | ScrollRestorationManual
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ScrollRestoration where
        pToJSVal ScrollRestorationAuto = js_ScrollRestorationAuto
        pToJSVal ScrollRestorationManual = js_ScrollRestorationManual
 
instance ToJSVal ScrollRestoration where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ScrollRestoration where
        pFromJSVal x
          | x `js_eq` js_ScrollRestorationAuto = ScrollRestorationAuto
        pFromJSVal x
          | x `js_eq` js_ScrollRestorationManual = ScrollRestorationManual
 
instance FromJSVal ScrollRestoration where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"auto\""
        js_ScrollRestorationAuto :: JSVal
 
foreign import javascript unsafe "\"manual\""
        js_ScrollRestorationManual :: JSVal
 
data XMLHttpRequestResponseType = XMLHttpRequestResponseType
                                | XMLHttpRequestResponseTypeArraybuffer
                                | XMLHttpRequestResponseTypeBlob
                                | XMLHttpRequestResponseTypeDocument
                                | XMLHttpRequestResponseTypeJson
                                | XMLHttpRequestResponseTypeText
                                deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal XMLHttpRequestResponseType where
        pToJSVal XMLHttpRequestResponseType = js_XMLHttpRequestResponseType
        pToJSVal XMLHttpRequestResponseTypeArraybuffer
          = js_XMLHttpRequestResponseTypeArraybuffer
        pToJSVal XMLHttpRequestResponseTypeBlob
          = js_XMLHttpRequestResponseTypeBlob
        pToJSVal XMLHttpRequestResponseTypeDocument
          = js_XMLHttpRequestResponseTypeDocument
        pToJSVal XMLHttpRequestResponseTypeJson
          = js_XMLHttpRequestResponseTypeJson
        pToJSVal XMLHttpRequestResponseTypeText
          = js_XMLHttpRequestResponseTypeText
 
instance ToJSVal XMLHttpRequestResponseType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal XMLHttpRequestResponseType where
        pFromJSVal x
          | x `js_eq` js_XMLHttpRequestResponseType =
            XMLHttpRequestResponseType
        pFromJSVal x
          | x `js_eq` js_XMLHttpRequestResponseTypeArraybuffer =
            XMLHttpRequestResponseTypeArraybuffer
        pFromJSVal x
          | x `js_eq` js_XMLHttpRequestResponseTypeBlob =
            XMLHttpRequestResponseTypeBlob
        pFromJSVal x
          | x `js_eq` js_XMLHttpRequestResponseTypeDocument =
            XMLHttpRequestResponseTypeDocument
        pFromJSVal x
          | x `js_eq` js_XMLHttpRequestResponseTypeJson =
            XMLHttpRequestResponseTypeJson
        pFromJSVal x
          | x `js_eq` js_XMLHttpRequestResponseTypeText =
            XMLHttpRequestResponseTypeText
 
instance FromJSVal XMLHttpRequestResponseType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"\""
        js_XMLHttpRequestResponseType :: JSVal
 
foreign import javascript unsafe "\"arraybuffer\""
        js_XMLHttpRequestResponseTypeArraybuffer :: JSVal
 
foreign import javascript unsafe "\"blob\""
        js_XMLHttpRequestResponseTypeBlob :: JSVal
 
foreign import javascript unsafe "\"document\""
        js_XMLHttpRequestResponseTypeDocument :: JSVal
 
foreign import javascript unsafe "\"json\""
        js_XMLHttpRequestResponseTypeJson :: JSVal
 
foreign import javascript unsafe "\"text\""
        js_XMLHttpRequestResponseTypeText :: JSVal