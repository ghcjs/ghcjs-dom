{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Enums
       (KeyType(..), PToJSVal, ToJSVal, PFromJSVal, FromJSVal,
        js_KeyTypeSecret, js_KeyTypePublic, js_KeyTypePrivate,
        KeyUsage(..), js_KeyUsageEncrypt, js_KeyUsageDecrypt,
        js_KeyUsageSign, js_KeyUsageVerify, js_KeyUsageDeriveKey,
        js_KeyUsageDeriveBits, js_KeyUsageWrapKey, js_KeyUsageUnwrapKey,
        CanvasWindingRule(..), js_CanvasWindingRuleNonzero,
        js_CanvasWindingRuleEvenodd, VideoPresentationMode(..),
        js_VideoPresentationModeFullscreen,
        js_VideoPresentationModeOptimized, js_VideoPresentationModeInline,
        TextTrackMode(..), js_TextTrackModeDisabled,
        js_TextTrackModeHidden, js_TextTrackModeShowing, TextTrackKind(..),
        js_TextTrackKindSubtitles, js_TextTrackKindCaptions,
        js_TextTrackKindDescriptions, js_TextTrackKindChapters,
        js_TextTrackKindMetadata, DeviceType(..), js_DeviceTypeNone,
        js_DeviceTypeAirplay, js_DeviceTypeTvout, MediaUIPartID(..),
        js_MediaUIPartIDOptimizedFullscreenButton,
        js_MediaUIPartIDOptimizedFullscreenPlaceholder,
        EndOfStreamError(..), js_EndOfStreamErrorNetwork,
        js_EndOfStreamErrorDecode, AppendMode(..), js_AppendModeSegments,
        js_AppendModeSequence, SourceTypeEnum(..), js_SourceTypeEnumNone,
        js_SourceTypeEnumCamera, js_SourceTypeEnumMicrophone,
        VideoFacingModeEnum(..), js_VideoFacingModeEnumUser,
        js_VideoFacingModeEnumEnvironment, js_VideoFacingModeEnumLeft,
        js_VideoFacingModeEnumRight, MediaStreamTrackState(..),
        js_MediaStreamTrackStateNew, js_MediaStreamTrackStateLive,
        js_MediaStreamTrackStateEnded, RTCIceTransportsEnum(..),
        js_RTCIceTransportsEnumNone, js_RTCIceTransportsEnumRelay,
        js_RTCIceTransportsEnumAll, RTCIdentityOptionEnum(..),
        js_RTCIdentityOptionEnumYes, js_RTCIdentityOptionEnumNo,
        js_RTCIdentityOptionEnumIfconfigured, ReadableStreamStateType(..),
        js_ReadableStreamStateTypeReadable,
        js_ReadableStreamStateTypeWaiting,
        js_ReadableStreamStateTypeClosed,
        js_ReadableStreamStateTypeErrored, OverSampleType(..),
        js_OverSampleTypeNone, js_OverSampleType2x, js_OverSampleType4x,
        PageOverlayType(..), js_PageOverlayTypeView,
        js_PageOverlayTypeDocument, XMLHttpRequestResponseType(..),
        js_XMLHttpRequestResponseType,
        js_XMLHttpRequestResponseTypeArraybuffer,
        js_XMLHttpRequestResponseTypeBlob,
        js_XMLHttpRequestResponseTypeDocument,
        js_XMLHttpRequestResponseTypeJson,
        js_XMLHttpRequestResponseTypeText)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
 
data KeyType = KeyTypeSecret
             | KeyTypePublic
             | KeyTypePrivate
             deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal KeyType where
        pToJSVal KeyTypeSecret = js_KeyTypeSecret
        pToJSVal KeyTypePublic = js_KeyTypePublic
        pToJSVal KeyTypePrivate = js_KeyTypePrivate
 
instance ToJSVal KeyType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal KeyType where
        pFromJSVal x | x `js_eq` js_KeyTypeSecret = KeyTypeSecret
        pFromJSVal x | x `js_eq` js_KeyTypePublic = KeyTypePublic
        pFromJSVal x | x `js_eq` js_KeyTypePrivate = KeyTypePrivate
 
instance FromJSVal KeyType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"secret\"" js_KeyTypeSecret ::
        JSVal
 
foreign import javascript unsafe "\"public\"" js_KeyTypePublic ::
        JSVal
 
foreign import javascript unsafe "\"private\"" js_KeyTypePrivate ::
        JSVal
 
data KeyUsage = KeyUsageEncrypt
              | KeyUsageDecrypt
              | KeyUsageSign
              | KeyUsageVerify
              | KeyUsageDeriveKey
              | KeyUsageDeriveBits
              | KeyUsageWrapKey
              | KeyUsageUnwrapKey
              deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal KeyUsage where
        pToJSVal KeyUsageEncrypt = js_KeyUsageEncrypt
        pToJSVal KeyUsageDecrypt = js_KeyUsageDecrypt
        pToJSVal KeyUsageSign = js_KeyUsageSign
        pToJSVal KeyUsageVerify = js_KeyUsageVerify
        pToJSVal KeyUsageDeriveKey = js_KeyUsageDeriveKey
        pToJSVal KeyUsageDeriveBits = js_KeyUsageDeriveBits
        pToJSVal KeyUsageWrapKey = js_KeyUsageWrapKey
        pToJSVal KeyUsageUnwrapKey = js_KeyUsageUnwrapKey
 
instance ToJSVal KeyUsage where
        toJSVal = return . pToJSVal
 
instance PFromJSVal KeyUsage where
        pFromJSVal x | x `js_eq` js_KeyUsageEncrypt = KeyUsageEncrypt
        pFromJSVal x | x `js_eq` js_KeyUsageDecrypt = KeyUsageDecrypt
        pFromJSVal x | x `js_eq` js_KeyUsageSign = KeyUsageSign
        pFromJSVal x | x `js_eq` js_KeyUsageVerify = KeyUsageVerify
        pFromJSVal x | x `js_eq` js_KeyUsageDeriveKey = KeyUsageDeriveKey
        pFromJSVal x | x `js_eq` js_KeyUsageDeriveBits = KeyUsageDeriveBits
        pFromJSVal x | x `js_eq` js_KeyUsageWrapKey = KeyUsageWrapKey
        pFromJSVal x | x `js_eq` js_KeyUsageUnwrapKey = KeyUsageUnwrapKey
 
instance FromJSVal KeyUsage where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"encrypt\"" js_KeyUsageEncrypt
        :: JSVal
 
foreign import javascript unsafe "\"decrypt\"" js_KeyUsageDecrypt
        :: JSVal
 
foreign import javascript unsafe "\"sign\"" js_KeyUsageSign ::
        JSVal
 
foreign import javascript unsafe "\"verify\"" js_KeyUsageVerify ::
        JSVal
 
foreign import javascript unsafe "\"deriveKey\""
        js_KeyUsageDeriveKey :: JSVal
 
foreign import javascript unsafe "\"deriveBits\""
        js_KeyUsageDeriveBits :: JSVal
 
foreign import javascript unsafe "\"wrapKey\"" js_KeyUsageWrapKey
        :: JSVal
 
foreign import javascript unsafe "\"unwrapKey\""
        js_KeyUsageUnwrapKey :: JSVal
 
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
 
data VideoPresentationMode = VideoPresentationModeFullscreen
                           | VideoPresentationModeOptimized
                           | VideoPresentationModeInline
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal VideoPresentationMode where
        pToJSVal VideoPresentationModeFullscreen
          = js_VideoPresentationModeFullscreen
        pToJSVal VideoPresentationModeOptimized
          = js_VideoPresentationModeOptimized
        pToJSVal VideoPresentationModeInline
          = js_VideoPresentationModeInline
 
instance ToJSVal VideoPresentationMode where
        toJSVal = return . pToJSVal
 
instance PFromJSVal VideoPresentationMode where
        pFromJSVal x
          | x `js_eq` js_VideoPresentationModeFullscreen =
            VideoPresentationModeFullscreen
        pFromJSVal x
          | x `js_eq` js_VideoPresentationModeOptimized =
            VideoPresentationModeOptimized
        pFromJSVal x
          | x `js_eq` js_VideoPresentationModeInline =
            VideoPresentationModeInline
 
instance FromJSVal VideoPresentationMode where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"fullscreen\""
        js_VideoPresentationModeFullscreen :: JSVal
 
foreign import javascript unsafe "\"optimized\""
        js_VideoPresentationModeOptimized :: JSVal
 
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
                   deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal TextTrackKind where
        pToJSVal TextTrackKindSubtitles = js_TextTrackKindSubtitles
        pToJSVal TextTrackKindCaptions = js_TextTrackKindCaptions
        pToJSVal TextTrackKindDescriptions = js_TextTrackKindDescriptions
        pToJSVal TextTrackKindChapters = js_TextTrackKindChapters
        pToJSVal TextTrackKindMetadata = js_TextTrackKindMetadata
 
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
 
data MediaUIPartID = MediaUIPartIDOptimizedFullscreenButton
                   | MediaUIPartIDOptimizedFullscreenPlaceholder
                   deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal MediaUIPartID where
        pToJSVal MediaUIPartIDOptimizedFullscreenButton
          = js_MediaUIPartIDOptimizedFullscreenButton
        pToJSVal MediaUIPartIDOptimizedFullscreenPlaceholder
          = js_MediaUIPartIDOptimizedFullscreenPlaceholder
 
instance ToJSVal MediaUIPartID where
        toJSVal = return . pToJSVal
 
instance PFromJSVal MediaUIPartID where
        pFromJSVal x
          | x `js_eq` js_MediaUIPartIDOptimizedFullscreenButton =
            MediaUIPartIDOptimizedFullscreenButton
        pFromJSVal x
          | x `js_eq` js_MediaUIPartIDOptimizedFullscreenPlaceholder =
            MediaUIPartIDOptimizedFullscreenPlaceholder
 
instance FromJSVal MediaUIPartID where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"optimized-fullscreen-button\""
        js_MediaUIPartIDOptimizedFullscreenButton :: JSVal
 
foreign import javascript unsafe
        "\"optimized-fullscreen-placeholder\""
        js_MediaUIPartIDOptimizedFullscreenPlaceholder :: JSVal
 
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
 
data SourceTypeEnum = SourceTypeEnumNone
                    | SourceTypeEnumCamera
                    | SourceTypeEnumMicrophone
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal SourceTypeEnum where
        pToJSVal SourceTypeEnumNone = js_SourceTypeEnumNone
        pToJSVal SourceTypeEnumCamera = js_SourceTypeEnumCamera
        pToJSVal SourceTypeEnumMicrophone = js_SourceTypeEnumMicrophone
 
instance ToJSVal SourceTypeEnum where
        toJSVal = return . pToJSVal
 
instance PFromJSVal SourceTypeEnum where
        pFromJSVal x | x `js_eq` js_SourceTypeEnumNone = SourceTypeEnumNone
        pFromJSVal x
          | x `js_eq` js_SourceTypeEnumCamera = SourceTypeEnumCamera
        pFromJSVal x
          | x `js_eq` js_SourceTypeEnumMicrophone = SourceTypeEnumMicrophone
 
instance FromJSVal SourceTypeEnum where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"none\"" js_SourceTypeEnumNone
        :: JSVal
 
foreign import javascript unsafe "\"camera\""
        js_SourceTypeEnumCamera :: JSVal
 
foreign import javascript unsafe "\"microphone\""
        js_SourceTypeEnumMicrophone :: JSVal
 
data VideoFacingModeEnum = VideoFacingModeEnumUser
                         | VideoFacingModeEnumEnvironment
                         | VideoFacingModeEnumLeft
                         | VideoFacingModeEnumRight
                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal VideoFacingModeEnum where
        pToJSVal VideoFacingModeEnumUser = js_VideoFacingModeEnumUser
        pToJSVal VideoFacingModeEnumEnvironment
          = js_VideoFacingModeEnumEnvironment
        pToJSVal VideoFacingModeEnumLeft = js_VideoFacingModeEnumLeft
        pToJSVal VideoFacingModeEnumRight = js_VideoFacingModeEnumRight
 
instance ToJSVal VideoFacingModeEnum where
        toJSVal = return . pToJSVal
 
instance PFromJSVal VideoFacingModeEnum where
        pFromJSVal x
          | x `js_eq` js_VideoFacingModeEnumUser = VideoFacingModeEnumUser
        pFromJSVal x
          | x `js_eq` js_VideoFacingModeEnumEnvironment =
            VideoFacingModeEnumEnvironment
        pFromJSVal x
          | x `js_eq` js_VideoFacingModeEnumLeft = VideoFacingModeEnumLeft
        pFromJSVal x
          | x `js_eq` js_VideoFacingModeEnumRight = VideoFacingModeEnumRight
 
instance FromJSVal VideoFacingModeEnum where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"user\""
        js_VideoFacingModeEnumUser :: JSVal
 
foreign import javascript unsafe "\"environment\""
        js_VideoFacingModeEnumEnvironment :: JSVal
 
foreign import javascript unsafe "\"left\""
        js_VideoFacingModeEnumLeft :: JSVal
 
foreign import javascript unsafe "\"right\""
        js_VideoFacingModeEnumRight :: JSVal
 
data MediaStreamTrackState = MediaStreamTrackStateNew
                           | MediaStreamTrackStateLive
                           | MediaStreamTrackStateEnded
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal MediaStreamTrackState where
        pToJSVal MediaStreamTrackStateNew = js_MediaStreamTrackStateNew
        pToJSVal MediaStreamTrackStateLive = js_MediaStreamTrackStateLive
        pToJSVal MediaStreamTrackStateEnded = js_MediaStreamTrackStateEnded
 
instance ToJSVal MediaStreamTrackState where
        toJSVal = return . pToJSVal
 
instance PFromJSVal MediaStreamTrackState where
        pFromJSVal x
          | x `js_eq` js_MediaStreamTrackStateNew = MediaStreamTrackStateNew
        pFromJSVal x
          | x `js_eq` js_MediaStreamTrackStateLive =
            MediaStreamTrackStateLive
        pFromJSVal x
          | x `js_eq` js_MediaStreamTrackStateEnded =
            MediaStreamTrackStateEnded
 
instance FromJSVal MediaStreamTrackState where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"new\""
        js_MediaStreamTrackStateNew :: JSVal
 
foreign import javascript unsafe "\"live\""
        js_MediaStreamTrackStateLive :: JSVal
 
foreign import javascript unsafe "\"ended\""
        js_MediaStreamTrackStateEnded :: JSVal
 
data RTCIceTransportsEnum = RTCIceTransportsEnumNone
                          | RTCIceTransportsEnumRelay
                          | RTCIceTransportsEnumAll
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCIceTransportsEnum where
        pToJSVal RTCIceTransportsEnumNone = js_RTCIceTransportsEnumNone
        pToJSVal RTCIceTransportsEnumRelay = js_RTCIceTransportsEnumRelay
        pToJSVal RTCIceTransportsEnumAll = js_RTCIceTransportsEnumAll
 
instance ToJSVal RTCIceTransportsEnum where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCIceTransportsEnum where
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportsEnumNone = RTCIceTransportsEnumNone
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportsEnumRelay =
            RTCIceTransportsEnumRelay
        pFromJSVal x
          | x `js_eq` js_RTCIceTransportsEnumAll = RTCIceTransportsEnumAll
 
instance FromJSVal RTCIceTransportsEnum where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"none\""
        js_RTCIceTransportsEnumNone :: JSVal
 
foreign import javascript unsafe "\"relay\""
        js_RTCIceTransportsEnumRelay :: JSVal
 
foreign import javascript unsafe "\"all\""
        js_RTCIceTransportsEnumAll :: JSVal
 
data RTCIdentityOptionEnum = RTCIdentityOptionEnumYes
                           | RTCIdentityOptionEnumNo
                           | RTCIdentityOptionEnumIfconfigured
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal RTCIdentityOptionEnum where
        pToJSVal RTCIdentityOptionEnumYes = js_RTCIdentityOptionEnumYes
        pToJSVal RTCIdentityOptionEnumNo = js_RTCIdentityOptionEnumNo
        pToJSVal RTCIdentityOptionEnumIfconfigured
          = js_RTCIdentityOptionEnumIfconfigured
 
instance ToJSVal RTCIdentityOptionEnum where
        toJSVal = return . pToJSVal
 
instance PFromJSVal RTCIdentityOptionEnum where
        pFromJSVal x
          | x `js_eq` js_RTCIdentityOptionEnumYes = RTCIdentityOptionEnumYes
        pFromJSVal x
          | x `js_eq` js_RTCIdentityOptionEnumNo = RTCIdentityOptionEnumNo
        pFromJSVal x
          | x `js_eq` js_RTCIdentityOptionEnumIfconfigured =
            RTCIdentityOptionEnumIfconfigured
 
instance FromJSVal RTCIdentityOptionEnum where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"yes\""
        js_RTCIdentityOptionEnumYes :: JSVal
 
foreign import javascript unsafe "\"no\""
        js_RTCIdentityOptionEnumNo :: JSVal
 
foreign import javascript unsafe "\"ifconfigured\""
        js_RTCIdentityOptionEnumIfconfigured :: JSVal
 
data ReadableStreamStateType = ReadableStreamStateTypeReadable
                             | ReadableStreamStateTypeWaiting
                             | ReadableStreamStateTypeClosed
                             | ReadableStreamStateTypeErrored
                             deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal ReadableStreamStateType where
        pToJSVal ReadableStreamStateTypeReadable
          = js_ReadableStreamStateTypeReadable
        pToJSVal ReadableStreamStateTypeWaiting
          = js_ReadableStreamStateTypeWaiting
        pToJSVal ReadableStreamStateTypeClosed
          = js_ReadableStreamStateTypeClosed
        pToJSVal ReadableStreamStateTypeErrored
          = js_ReadableStreamStateTypeErrored
 
instance ToJSVal ReadableStreamStateType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal ReadableStreamStateType where
        pFromJSVal x
          | x `js_eq` js_ReadableStreamStateTypeReadable =
            ReadableStreamStateTypeReadable
        pFromJSVal x
          | x `js_eq` js_ReadableStreamStateTypeWaiting =
            ReadableStreamStateTypeWaiting
        pFromJSVal x
          | x `js_eq` js_ReadableStreamStateTypeClosed =
            ReadableStreamStateTypeClosed
        pFromJSVal x
          | x `js_eq` js_ReadableStreamStateTypeErrored =
            ReadableStreamStateTypeErrored
 
instance FromJSVal ReadableStreamStateType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"readable\""
        js_ReadableStreamStateTypeReadable :: JSVal
 
foreign import javascript unsafe "\"waiting\""
        js_ReadableStreamStateTypeWaiting :: JSVal
 
foreign import javascript unsafe "\"closed\""
        js_ReadableStreamStateTypeClosed :: JSVal
 
foreign import javascript unsafe "\"errored\""
        js_ReadableStreamStateTypeErrored :: JSVal
 
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
 
data PageOverlayType = PageOverlayTypeView
                     | PageOverlayTypeDocument
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSVal PageOverlayType where
        pToJSVal PageOverlayTypeView = js_PageOverlayTypeView
        pToJSVal PageOverlayTypeDocument = js_PageOverlayTypeDocument
 
instance ToJSVal PageOverlayType where
        toJSVal = return . pToJSVal
 
instance PFromJSVal PageOverlayType where
        pFromJSVal x
          | x `js_eq` js_PageOverlayTypeView = PageOverlayTypeView
        pFromJSVal x
          | x `js_eq` js_PageOverlayTypeDocument = PageOverlayTypeDocument
 
instance FromJSVal PageOverlayType where
        fromJSValUnchecked = return . pFromJSVal
        fromJSVal = return . pFromJSVal
 
foreign import javascript unsafe "\"view\"" js_PageOverlayTypeView
        :: JSVal
 
foreign import javascript unsafe "\"document\""
        js_PageOverlayTypeDocument :: JSVal
 
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