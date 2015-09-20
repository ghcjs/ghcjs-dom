{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Enums
       (KeyType(..), PToJSRef, ToJSRef, PFromJSRef, FromJSRef,
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
import GHCJS.Types (JSRef(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
 
data KeyType = KeyTypeSecret
             | KeyTypePublic
             | KeyTypePrivate
             deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef KeyType where
        pToJSRef KeyTypeSecret = js_KeyTypeSecret
        pToJSRef KeyTypePublic = js_KeyTypePublic
        pToJSRef KeyTypePrivate = js_KeyTypePrivate
 
instance ToJSRef KeyType where
        toJSRef = return . pToJSRef
 
instance PFromJSRef KeyType where
        pFromJSRef x | x `js_eq` js_KeyTypeSecret = KeyTypeSecret
        pFromJSRef x | x `js_eq` js_KeyTypePublic = KeyTypePublic
        pFromJSRef x | x `js_eq` js_KeyTypePrivate = KeyTypePrivate
 
instance FromJSRef KeyType where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"secret\"" js_KeyTypeSecret ::
        JSRef
 
foreign import javascript unsafe "\"public\"" js_KeyTypePublic ::
        JSRef
 
foreign import javascript unsafe "\"private\"" js_KeyTypePrivate ::
        JSRef
 
data KeyUsage = KeyUsageEncrypt
              | KeyUsageDecrypt
              | KeyUsageSign
              | KeyUsageVerify
              | KeyUsageDeriveKey
              | KeyUsageDeriveBits
              | KeyUsageWrapKey
              | KeyUsageUnwrapKey
              deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef KeyUsage where
        pToJSRef KeyUsageEncrypt = js_KeyUsageEncrypt
        pToJSRef KeyUsageDecrypt = js_KeyUsageDecrypt
        pToJSRef KeyUsageSign = js_KeyUsageSign
        pToJSRef KeyUsageVerify = js_KeyUsageVerify
        pToJSRef KeyUsageDeriveKey = js_KeyUsageDeriveKey
        pToJSRef KeyUsageDeriveBits = js_KeyUsageDeriveBits
        pToJSRef KeyUsageWrapKey = js_KeyUsageWrapKey
        pToJSRef KeyUsageUnwrapKey = js_KeyUsageUnwrapKey
 
instance ToJSRef KeyUsage where
        toJSRef = return . pToJSRef
 
instance PFromJSRef KeyUsage where
        pFromJSRef x | x `js_eq` js_KeyUsageEncrypt = KeyUsageEncrypt
        pFromJSRef x | x `js_eq` js_KeyUsageDecrypt = KeyUsageDecrypt
        pFromJSRef x | x `js_eq` js_KeyUsageSign = KeyUsageSign
        pFromJSRef x | x `js_eq` js_KeyUsageVerify = KeyUsageVerify
        pFromJSRef x | x `js_eq` js_KeyUsageDeriveKey = KeyUsageDeriveKey
        pFromJSRef x | x `js_eq` js_KeyUsageDeriveBits = KeyUsageDeriveBits
        pFromJSRef x | x `js_eq` js_KeyUsageWrapKey = KeyUsageWrapKey
        pFromJSRef x | x `js_eq` js_KeyUsageUnwrapKey = KeyUsageUnwrapKey
 
instance FromJSRef KeyUsage where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"encrypt\"" js_KeyUsageEncrypt
        :: JSRef
 
foreign import javascript unsafe "\"decrypt\"" js_KeyUsageDecrypt
        :: JSRef
 
foreign import javascript unsafe "\"sign\"" js_KeyUsageSign ::
        JSRef
 
foreign import javascript unsafe "\"verify\"" js_KeyUsageVerify ::
        JSRef
 
foreign import javascript unsafe "\"deriveKey\""
        js_KeyUsageDeriveKey :: JSRef
 
foreign import javascript unsafe "\"deriveBits\""
        js_KeyUsageDeriveBits :: JSRef
 
foreign import javascript unsafe "\"wrapKey\"" js_KeyUsageWrapKey
        :: JSRef
 
foreign import javascript unsafe "\"unwrapKey\""
        js_KeyUsageUnwrapKey :: JSRef
 
data CanvasWindingRule = CanvasWindingRuleNonzero
                       | CanvasWindingRuleEvenodd
                       deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef CanvasWindingRule where
        pToJSRef CanvasWindingRuleNonzero = js_CanvasWindingRuleNonzero
        pToJSRef CanvasWindingRuleEvenodd = js_CanvasWindingRuleEvenodd
 
instance ToJSRef CanvasWindingRule where
        toJSRef = return . pToJSRef
 
instance PFromJSRef CanvasWindingRule where
        pFromJSRef x
          | x `js_eq` js_CanvasWindingRuleNonzero = CanvasWindingRuleNonzero
        pFromJSRef x
          | x `js_eq` js_CanvasWindingRuleEvenodd = CanvasWindingRuleEvenodd
 
instance FromJSRef CanvasWindingRule where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"nonzero\""
        js_CanvasWindingRuleNonzero :: JSRef
 
foreign import javascript unsafe "\"evenodd\""
        js_CanvasWindingRuleEvenodd :: JSRef
 
data VideoPresentationMode = VideoPresentationModeFullscreen
                           | VideoPresentationModeOptimized
                           | VideoPresentationModeInline
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef VideoPresentationMode where
        pToJSRef VideoPresentationModeFullscreen
          = js_VideoPresentationModeFullscreen
        pToJSRef VideoPresentationModeOptimized
          = js_VideoPresentationModeOptimized
        pToJSRef VideoPresentationModeInline
          = js_VideoPresentationModeInline
 
instance ToJSRef VideoPresentationMode where
        toJSRef = return . pToJSRef
 
instance PFromJSRef VideoPresentationMode where
        pFromJSRef x
          | x `js_eq` js_VideoPresentationModeFullscreen =
            VideoPresentationModeFullscreen
        pFromJSRef x
          | x `js_eq` js_VideoPresentationModeOptimized =
            VideoPresentationModeOptimized
        pFromJSRef x
          | x `js_eq` js_VideoPresentationModeInline =
            VideoPresentationModeInline
 
instance FromJSRef VideoPresentationMode where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"fullscreen\""
        js_VideoPresentationModeFullscreen :: JSRef
 
foreign import javascript unsafe "\"optimized\""
        js_VideoPresentationModeOptimized :: JSRef
 
foreign import javascript unsafe "\"inline\""
        js_VideoPresentationModeInline :: JSRef
 
data TextTrackMode = TextTrackModeDisabled
                   | TextTrackModeHidden
                   | TextTrackModeShowing
                   deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef TextTrackMode where
        pToJSRef TextTrackModeDisabled = js_TextTrackModeDisabled
        pToJSRef TextTrackModeHidden = js_TextTrackModeHidden
        pToJSRef TextTrackModeShowing = js_TextTrackModeShowing
 
instance ToJSRef TextTrackMode where
        toJSRef = return . pToJSRef
 
instance PFromJSRef TextTrackMode where
        pFromJSRef x
          | x `js_eq` js_TextTrackModeDisabled = TextTrackModeDisabled
        pFromJSRef x
          | x `js_eq` js_TextTrackModeHidden = TextTrackModeHidden
        pFromJSRef x
          | x `js_eq` js_TextTrackModeShowing = TextTrackModeShowing
 
instance FromJSRef TextTrackMode where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"disabled\""
        js_TextTrackModeDisabled :: JSRef
 
foreign import javascript unsafe "\"hidden\""
        js_TextTrackModeHidden :: JSRef
 
foreign import javascript unsafe "\"showing\""
        js_TextTrackModeShowing :: JSRef
 
data TextTrackKind = TextTrackKindSubtitles
                   | TextTrackKindCaptions
                   | TextTrackKindDescriptions
                   | TextTrackKindChapters
                   | TextTrackKindMetadata
                   deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef TextTrackKind where
        pToJSRef TextTrackKindSubtitles = js_TextTrackKindSubtitles
        pToJSRef TextTrackKindCaptions = js_TextTrackKindCaptions
        pToJSRef TextTrackKindDescriptions = js_TextTrackKindDescriptions
        pToJSRef TextTrackKindChapters = js_TextTrackKindChapters
        pToJSRef TextTrackKindMetadata = js_TextTrackKindMetadata
 
instance ToJSRef TextTrackKind where
        toJSRef = return . pToJSRef
 
instance PFromJSRef TextTrackKind where
        pFromJSRef x
          | x `js_eq` js_TextTrackKindSubtitles = TextTrackKindSubtitles
        pFromJSRef x
          | x `js_eq` js_TextTrackKindCaptions = TextTrackKindCaptions
        pFromJSRef x
          | x `js_eq` js_TextTrackKindDescriptions =
            TextTrackKindDescriptions
        pFromJSRef x
          | x `js_eq` js_TextTrackKindChapters = TextTrackKindChapters
        pFromJSRef x
          | x `js_eq` js_TextTrackKindMetadata = TextTrackKindMetadata
 
instance FromJSRef TextTrackKind where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"subtitles\""
        js_TextTrackKindSubtitles :: JSRef
 
foreign import javascript unsafe "\"captions\""
        js_TextTrackKindCaptions :: JSRef
 
foreign import javascript unsafe "\"descriptions\""
        js_TextTrackKindDescriptions :: JSRef
 
foreign import javascript unsafe "\"chapters\""
        js_TextTrackKindChapters :: JSRef
 
foreign import javascript unsafe "\"metadata\""
        js_TextTrackKindMetadata :: JSRef
 
data DeviceType = DeviceTypeNone
                | DeviceTypeAirplay
                | DeviceTypeTvout
                deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef DeviceType where
        pToJSRef DeviceTypeNone = js_DeviceTypeNone
        pToJSRef DeviceTypeAirplay = js_DeviceTypeAirplay
        pToJSRef DeviceTypeTvout = js_DeviceTypeTvout
 
instance ToJSRef DeviceType where
        toJSRef = return . pToJSRef
 
instance PFromJSRef DeviceType where
        pFromJSRef x | x `js_eq` js_DeviceTypeNone = DeviceTypeNone
        pFromJSRef x | x `js_eq` js_DeviceTypeAirplay = DeviceTypeAirplay
        pFromJSRef x | x `js_eq` js_DeviceTypeTvout = DeviceTypeTvout
 
instance FromJSRef DeviceType where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"none\"" js_DeviceTypeNone ::
        JSRef
 
foreign import javascript unsafe "\"airplay\"" js_DeviceTypeAirplay
        :: JSRef
 
foreign import javascript unsafe "\"tvout\"" js_DeviceTypeTvout ::
        JSRef
 
data MediaUIPartID = MediaUIPartIDOptimizedFullscreenButton
                   | MediaUIPartIDOptimizedFullscreenPlaceholder
                   deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef MediaUIPartID where
        pToJSRef MediaUIPartIDOptimizedFullscreenButton
          = js_MediaUIPartIDOptimizedFullscreenButton
        pToJSRef MediaUIPartIDOptimizedFullscreenPlaceholder
          = js_MediaUIPartIDOptimizedFullscreenPlaceholder
 
instance ToJSRef MediaUIPartID where
        toJSRef = return . pToJSRef
 
instance PFromJSRef MediaUIPartID where
        pFromJSRef x
          | x `js_eq` js_MediaUIPartIDOptimizedFullscreenButton =
            MediaUIPartIDOptimizedFullscreenButton
        pFromJSRef x
          | x `js_eq` js_MediaUIPartIDOptimizedFullscreenPlaceholder =
            MediaUIPartIDOptimizedFullscreenPlaceholder
 
instance FromJSRef MediaUIPartID where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"optimized-fullscreen-button\""
        js_MediaUIPartIDOptimizedFullscreenButton :: JSRef
 
foreign import javascript unsafe
        "\"optimized-fullscreen-placeholder\""
        js_MediaUIPartIDOptimizedFullscreenPlaceholder :: JSRef
 
data EndOfStreamError = EndOfStreamErrorNetwork
                      | EndOfStreamErrorDecode
                      deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef EndOfStreamError where
        pToJSRef EndOfStreamErrorNetwork = js_EndOfStreamErrorNetwork
        pToJSRef EndOfStreamErrorDecode = js_EndOfStreamErrorDecode
 
instance ToJSRef EndOfStreamError where
        toJSRef = return . pToJSRef
 
instance PFromJSRef EndOfStreamError where
        pFromJSRef x
          | x `js_eq` js_EndOfStreamErrorNetwork = EndOfStreamErrorNetwork
        pFromJSRef x
          | x `js_eq` js_EndOfStreamErrorDecode = EndOfStreamErrorDecode
 
instance FromJSRef EndOfStreamError where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"network\""
        js_EndOfStreamErrorNetwork :: JSRef
 
foreign import javascript unsafe "\"decode\""
        js_EndOfStreamErrorDecode :: JSRef
 
data AppendMode = AppendModeSegments
                | AppendModeSequence
                deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef AppendMode where
        pToJSRef AppendModeSegments = js_AppendModeSegments
        pToJSRef AppendModeSequence = js_AppendModeSequence
 
instance ToJSRef AppendMode where
        toJSRef = return . pToJSRef
 
instance PFromJSRef AppendMode where
        pFromJSRef x | x `js_eq` js_AppendModeSegments = AppendModeSegments
        pFromJSRef x | x `js_eq` js_AppendModeSequence = AppendModeSequence
 
instance FromJSRef AppendMode where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"segments\""
        js_AppendModeSegments :: JSRef
 
foreign import javascript unsafe "\"sequence\""
        js_AppendModeSequence :: JSRef
 
data SourceTypeEnum = SourceTypeEnumNone
                    | SourceTypeEnumCamera
                    | SourceTypeEnumMicrophone
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef SourceTypeEnum where
        pToJSRef SourceTypeEnumNone = js_SourceTypeEnumNone
        pToJSRef SourceTypeEnumCamera = js_SourceTypeEnumCamera
        pToJSRef SourceTypeEnumMicrophone = js_SourceTypeEnumMicrophone
 
instance ToJSRef SourceTypeEnum where
        toJSRef = return . pToJSRef
 
instance PFromJSRef SourceTypeEnum where
        pFromJSRef x | x `js_eq` js_SourceTypeEnumNone = SourceTypeEnumNone
        pFromJSRef x
          | x `js_eq` js_SourceTypeEnumCamera = SourceTypeEnumCamera
        pFromJSRef x
          | x `js_eq` js_SourceTypeEnumMicrophone = SourceTypeEnumMicrophone
 
instance FromJSRef SourceTypeEnum where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"none\"" js_SourceTypeEnumNone
        :: JSRef
 
foreign import javascript unsafe "\"camera\""
        js_SourceTypeEnumCamera :: JSRef
 
foreign import javascript unsafe "\"microphone\""
        js_SourceTypeEnumMicrophone :: JSRef
 
data VideoFacingModeEnum = VideoFacingModeEnumUser
                         | VideoFacingModeEnumEnvironment
                         | VideoFacingModeEnumLeft
                         | VideoFacingModeEnumRight
                         deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef VideoFacingModeEnum where
        pToJSRef VideoFacingModeEnumUser = js_VideoFacingModeEnumUser
        pToJSRef VideoFacingModeEnumEnvironment
          = js_VideoFacingModeEnumEnvironment
        pToJSRef VideoFacingModeEnumLeft = js_VideoFacingModeEnumLeft
        pToJSRef VideoFacingModeEnumRight = js_VideoFacingModeEnumRight
 
instance ToJSRef VideoFacingModeEnum where
        toJSRef = return . pToJSRef
 
instance PFromJSRef VideoFacingModeEnum where
        pFromJSRef x
          | x `js_eq` js_VideoFacingModeEnumUser = VideoFacingModeEnumUser
        pFromJSRef x
          | x `js_eq` js_VideoFacingModeEnumEnvironment =
            VideoFacingModeEnumEnvironment
        pFromJSRef x
          | x `js_eq` js_VideoFacingModeEnumLeft = VideoFacingModeEnumLeft
        pFromJSRef x
          | x `js_eq` js_VideoFacingModeEnumRight = VideoFacingModeEnumRight
 
instance FromJSRef VideoFacingModeEnum where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"user\""
        js_VideoFacingModeEnumUser :: JSRef
 
foreign import javascript unsafe "\"environment\""
        js_VideoFacingModeEnumEnvironment :: JSRef
 
foreign import javascript unsafe "\"left\""
        js_VideoFacingModeEnumLeft :: JSRef
 
foreign import javascript unsafe "\"right\""
        js_VideoFacingModeEnumRight :: JSRef
 
data MediaStreamTrackState = MediaStreamTrackStateNew
                           | MediaStreamTrackStateLive
                           | MediaStreamTrackStateEnded
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef MediaStreamTrackState where
        pToJSRef MediaStreamTrackStateNew = js_MediaStreamTrackStateNew
        pToJSRef MediaStreamTrackStateLive = js_MediaStreamTrackStateLive
        pToJSRef MediaStreamTrackStateEnded = js_MediaStreamTrackStateEnded
 
instance ToJSRef MediaStreamTrackState where
        toJSRef = return . pToJSRef
 
instance PFromJSRef MediaStreamTrackState where
        pFromJSRef x
          | x `js_eq` js_MediaStreamTrackStateNew = MediaStreamTrackStateNew
        pFromJSRef x
          | x `js_eq` js_MediaStreamTrackStateLive =
            MediaStreamTrackStateLive
        pFromJSRef x
          | x `js_eq` js_MediaStreamTrackStateEnded =
            MediaStreamTrackStateEnded
 
instance FromJSRef MediaStreamTrackState where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"new\""
        js_MediaStreamTrackStateNew :: JSRef
 
foreign import javascript unsafe "\"live\""
        js_MediaStreamTrackStateLive :: JSRef
 
foreign import javascript unsafe "\"ended\""
        js_MediaStreamTrackStateEnded :: JSRef
 
data RTCIceTransportsEnum = RTCIceTransportsEnumNone
                          | RTCIceTransportsEnumRelay
                          | RTCIceTransportsEnumAll
                          deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef RTCIceTransportsEnum where
        pToJSRef RTCIceTransportsEnumNone = js_RTCIceTransportsEnumNone
        pToJSRef RTCIceTransportsEnumRelay = js_RTCIceTransportsEnumRelay
        pToJSRef RTCIceTransportsEnumAll = js_RTCIceTransportsEnumAll
 
instance ToJSRef RTCIceTransportsEnum where
        toJSRef = return . pToJSRef
 
instance PFromJSRef RTCIceTransportsEnum where
        pFromJSRef x
          | x `js_eq` js_RTCIceTransportsEnumNone = RTCIceTransportsEnumNone
        pFromJSRef x
          | x `js_eq` js_RTCIceTransportsEnumRelay =
            RTCIceTransportsEnumRelay
        pFromJSRef x
          | x `js_eq` js_RTCIceTransportsEnumAll = RTCIceTransportsEnumAll
 
instance FromJSRef RTCIceTransportsEnum where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"none\""
        js_RTCIceTransportsEnumNone :: JSRef
 
foreign import javascript unsafe "\"relay\""
        js_RTCIceTransportsEnumRelay :: JSRef
 
foreign import javascript unsafe "\"all\""
        js_RTCIceTransportsEnumAll :: JSRef
 
data RTCIdentityOptionEnum = RTCIdentityOptionEnumYes
                           | RTCIdentityOptionEnumNo
                           | RTCIdentityOptionEnumIfconfigured
                           deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef RTCIdentityOptionEnum where
        pToJSRef RTCIdentityOptionEnumYes = js_RTCIdentityOptionEnumYes
        pToJSRef RTCIdentityOptionEnumNo = js_RTCIdentityOptionEnumNo
        pToJSRef RTCIdentityOptionEnumIfconfigured
          = js_RTCIdentityOptionEnumIfconfigured
 
instance ToJSRef RTCIdentityOptionEnum where
        toJSRef = return . pToJSRef
 
instance PFromJSRef RTCIdentityOptionEnum where
        pFromJSRef x
          | x `js_eq` js_RTCIdentityOptionEnumYes = RTCIdentityOptionEnumYes
        pFromJSRef x
          | x `js_eq` js_RTCIdentityOptionEnumNo = RTCIdentityOptionEnumNo
        pFromJSRef x
          | x `js_eq` js_RTCIdentityOptionEnumIfconfigured =
            RTCIdentityOptionEnumIfconfigured
 
instance FromJSRef RTCIdentityOptionEnum where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"yes\""
        js_RTCIdentityOptionEnumYes :: JSRef
 
foreign import javascript unsafe "\"no\""
        js_RTCIdentityOptionEnumNo :: JSRef
 
foreign import javascript unsafe "\"ifconfigured\""
        js_RTCIdentityOptionEnumIfconfigured :: JSRef
 
data ReadableStreamStateType = ReadableStreamStateTypeReadable
                             | ReadableStreamStateTypeWaiting
                             | ReadableStreamStateTypeClosed
                             | ReadableStreamStateTypeErrored
                             deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef ReadableStreamStateType where
        pToJSRef ReadableStreamStateTypeReadable
          = js_ReadableStreamStateTypeReadable
        pToJSRef ReadableStreamStateTypeWaiting
          = js_ReadableStreamStateTypeWaiting
        pToJSRef ReadableStreamStateTypeClosed
          = js_ReadableStreamStateTypeClosed
        pToJSRef ReadableStreamStateTypeErrored
          = js_ReadableStreamStateTypeErrored
 
instance ToJSRef ReadableStreamStateType where
        toJSRef = return . pToJSRef
 
instance PFromJSRef ReadableStreamStateType where
        pFromJSRef x
          | x `js_eq` js_ReadableStreamStateTypeReadable =
            ReadableStreamStateTypeReadable
        pFromJSRef x
          | x `js_eq` js_ReadableStreamStateTypeWaiting =
            ReadableStreamStateTypeWaiting
        pFromJSRef x
          | x `js_eq` js_ReadableStreamStateTypeClosed =
            ReadableStreamStateTypeClosed
        pFromJSRef x
          | x `js_eq` js_ReadableStreamStateTypeErrored =
            ReadableStreamStateTypeErrored
 
instance FromJSRef ReadableStreamStateType where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"readable\""
        js_ReadableStreamStateTypeReadable :: JSRef
 
foreign import javascript unsafe "\"waiting\""
        js_ReadableStreamStateTypeWaiting :: JSRef
 
foreign import javascript unsafe "\"closed\""
        js_ReadableStreamStateTypeClosed :: JSRef
 
foreign import javascript unsafe "\"errored\""
        js_ReadableStreamStateTypeErrored :: JSRef
 
data OverSampleType = OverSampleTypeNone
                    | OverSampleType2x
                    | OverSampleType4x
                    deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef OverSampleType where
        pToJSRef OverSampleTypeNone = js_OverSampleTypeNone
        pToJSRef OverSampleType2x = js_OverSampleType2x
        pToJSRef OverSampleType4x = js_OverSampleType4x
 
instance ToJSRef OverSampleType where
        toJSRef = return . pToJSRef
 
instance PFromJSRef OverSampleType where
        pFromJSRef x | x `js_eq` js_OverSampleTypeNone = OverSampleTypeNone
        pFromJSRef x | x `js_eq` js_OverSampleType2x = OverSampleType2x
        pFromJSRef x | x `js_eq` js_OverSampleType4x = OverSampleType4x
 
instance FromJSRef OverSampleType where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"none\"" js_OverSampleTypeNone
        :: JSRef
 
foreign import javascript unsafe "\"2x\"" js_OverSampleType2x ::
        JSRef
 
foreign import javascript unsafe "\"4x\"" js_OverSampleType4x ::
        JSRef
 
data PageOverlayType = PageOverlayTypeView
                     | PageOverlayTypeDocument
                     deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef PageOverlayType where
        pToJSRef PageOverlayTypeView = js_PageOverlayTypeView
        pToJSRef PageOverlayTypeDocument = js_PageOverlayTypeDocument
 
instance ToJSRef PageOverlayType where
        toJSRef = return . pToJSRef
 
instance PFromJSRef PageOverlayType where
        pFromJSRef x
          | x `js_eq` js_PageOverlayTypeView = PageOverlayTypeView
        pFromJSRef x
          | x `js_eq` js_PageOverlayTypeDocument = PageOverlayTypeDocument
 
instance FromJSRef PageOverlayType where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"view\"" js_PageOverlayTypeView
        :: JSRef
 
foreign import javascript unsafe "\"document\""
        js_PageOverlayTypeDocument :: JSRef
 
data XMLHttpRequestResponseType = XMLHttpRequestResponseType
                                | XMLHttpRequestResponseTypeArraybuffer
                                | XMLHttpRequestResponseTypeBlob
                                | XMLHttpRequestResponseTypeDocument
                                | XMLHttpRequestResponseTypeJson
                                | XMLHttpRequestResponseTypeText
                                deriving (Show, Read, Eq, Ord, Typeable)
 
instance PToJSRef XMLHttpRequestResponseType where
        pToJSRef XMLHttpRequestResponseType = js_XMLHttpRequestResponseType
        pToJSRef XMLHttpRequestResponseTypeArraybuffer
          = js_XMLHttpRequestResponseTypeArraybuffer
        pToJSRef XMLHttpRequestResponseTypeBlob
          = js_XMLHttpRequestResponseTypeBlob
        pToJSRef XMLHttpRequestResponseTypeDocument
          = js_XMLHttpRequestResponseTypeDocument
        pToJSRef XMLHttpRequestResponseTypeJson
          = js_XMLHttpRequestResponseTypeJson
        pToJSRef XMLHttpRequestResponseTypeText
          = js_XMLHttpRequestResponseTypeText
 
instance ToJSRef XMLHttpRequestResponseType where
        toJSRef = return . pToJSRef
 
instance PFromJSRef XMLHttpRequestResponseType where
        pFromJSRef x
          | x `js_eq` js_XMLHttpRequestResponseType =
            XMLHttpRequestResponseType
        pFromJSRef x
          | x `js_eq` js_XMLHttpRequestResponseTypeArraybuffer =
            XMLHttpRequestResponseTypeArraybuffer
        pFromJSRef x
          | x `js_eq` js_XMLHttpRequestResponseTypeBlob =
            XMLHttpRequestResponseTypeBlob
        pFromJSRef x
          | x `js_eq` js_XMLHttpRequestResponseTypeDocument =
            XMLHttpRequestResponseTypeDocument
        pFromJSRef x
          | x `js_eq` js_XMLHttpRequestResponseTypeJson =
            XMLHttpRequestResponseTypeJson
        pFromJSRef x
          | x `js_eq` js_XMLHttpRequestResponseTypeText =
            XMLHttpRequestResponseTypeText
 
instance FromJSRef XMLHttpRequestResponseType where
        fromJSRefUnchecked = return . pFromJSRef
        fromJSRef = return . pFromJSRef
 
foreign import javascript unsafe "\"\""
        js_XMLHttpRequestResponseType :: JSRef
 
foreign import javascript unsafe "\"arraybuffer\""
        js_XMLHttpRequestResponseTypeArraybuffer :: JSRef
 
foreign import javascript unsafe "\"blob\""
        js_XMLHttpRequestResponseTypeBlob :: JSRef
 
foreign import javascript unsafe "\"document\""
        js_XMLHttpRequestResponseTypeDocument :: JSRef
 
foreign import javascript unsafe "\"json\""
        js_XMLHttpRequestResponseTypeJson :: JSRef
 
foreign import javascript unsafe "\"text\""
        js_XMLHttpRequestResponseTypeText :: JSRef