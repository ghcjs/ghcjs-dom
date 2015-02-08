{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Enums
       (KeyType, PToJSRef, ToJSRef(..), PFromJSRef, FromJSRef,
        js_KeyTypeSecret, js_KeyTypePublic, js_KeyTypePrivate, KeyUsage,
        js_KeyUsageEncrypt, js_KeyUsageDecrypt, js_KeyUsageSign,
        js_KeyUsageVerify, js_KeyUsageDeriveKey, js_KeyUsageDeriveBits,
        js_KeyUsageWrapKey, js_KeyUsageUnwrapKey, CanvasWindingRule,
        js_CanvasWindingRuleNonzero, js_CanvasWindingRuleEvenodd,
        TextTrackMode(..), js_TextTrackModeDisabled,
        js_TextTrackModeHidden, js_TextTrackModeShowing, TextTrackKind(..),
        js_TextTrackKindSubtitles, js_TextTrackKindCaptions,
        js_TextTrackKindDescriptions, js_TextTrackKindChapters,
        js_TextTrackKindMetadata, DeviceType, js_DeviceTypeNone,
        js_DeviceTypeAirplay, js_DeviceTypeTvout, FullscreenMode,
        js_FullscreenModeNone, js_FullscreenModeStandard,
        js_FullscreenModeOptimized, MediaUIPartID,
        js_MediaUIPartIDOptimizedFullscreenButton,
        js_MediaUIPartIDOptimizedFullscreenPlaceholder, EndOfStreamError,
        js_EndOfStreamErrorNetwork, js_EndOfStreamErrorDecode,
        SourceTypeEnum, js_SourceTypeEnumNone, js_SourceTypeEnumCamera,
        js_SourceTypeEnumMicrophone, VideoFacingModeEnum,
        js_VideoFacingModeEnumUser, js_VideoFacingModeEnumEnvironment,
        js_VideoFacingModeEnumLeft, js_VideoFacingModeEnumRight,
        MediaStreamTrackState, js_MediaStreamTrackStateNew,
        js_MediaStreamTrackStateLive, js_MediaStreamTrackStateEnded,
        RTCIceTransportsEnum, js_RTCIceTransportsEnumNone,
        js_RTCIceTransportsEnumRelay, js_RTCIceTransportsEnumAll,
        RTCIdentityOptionEnum, js_RTCIdentityOptionEnumYes,
        js_RTCIdentityOptionEnumNo, js_RTCIdentityOptionEnumIfconfigured,
        OverSampleType, js_OverSampleTypeNone, js_OverSampleType2x,
        js_OverSampleType4x, PageOverlayType, js_PageOverlayTypeView,
        js_PageOverlayTypeDocument)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
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
 
instance PToJSRef KeyType where
        ptoJSRef KeyTypeSecret = js_KeyTypeSecret
        ptoJSRef KeyTypePublic = js_KeyTypePublic
        ptoJSRef KeyTypePrivate = js_KeyTypePrivate
 
instance ToJSRef KeyType where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef KeyType where
        pfromJSRef x | x == js_KeyTypeSecret = KeyTypeSecret
        pfromJSRef x | x == js_KeyTypePublic = KeyTypePublic
        pfromJSRef x | x == js_KeyTypePrivate = KeyTypePrivate
 
instance FromJSRef KeyType where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"secret\"" js_KeyTypeSecret ::
        JSRef KeyType
 
foreign import javascript unsafe "\"public\"" js_KeyTypePublic ::
        JSRef KeyType
 
foreign import javascript unsafe "\"private\"" js_KeyTypePrivate ::
        JSRef KeyType
 
data KeyUsage = KeyUsageEncrypt
              | KeyUsageDecrypt
              | KeyUsageSign
              | KeyUsageVerify
              | KeyUsageDeriveKey
              | KeyUsageDeriveBits
              | KeyUsageWrapKey
              | KeyUsageUnwrapKey
 
instance PToJSRef KeyUsage where
        ptoJSRef KeyUsageEncrypt = js_KeyUsageEncrypt
        ptoJSRef KeyUsageDecrypt = js_KeyUsageDecrypt
        ptoJSRef KeyUsageSign = js_KeyUsageSign
        ptoJSRef KeyUsageVerify = js_KeyUsageVerify
        ptoJSRef KeyUsageDeriveKey = js_KeyUsageDeriveKey
        ptoJSRef KeyUsageDeriveBits = js_KeyUsageDeriveBits
        ptoJSRef KeyUsageWrapKey = js_KeyUsageWrapKey
        ptoJSRef KeyUsageUnwrapKey = js_KeyUsageUnwrapKey
 
instance ToJSRef KeyUsage where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef KeyUsage where
        pfromJSRef x | x == js_KeyUsageEncrypt = KeyUsageEncrypt
        pfromJSRef x | x == js_KeyUsageDecrypt = KeyUsageDecrypt
        pfromJSRef x | x == js_KeyUsageSign = KeyUsageSign
        pfromJSRef x | x == js_KeyUsageVerify = KeyUsageVerify
        pfromJSRef x | x == js_KeyUsageDeriveKey = KeyUsageDeriveKey
        pfromJSRef x | x == js_KeyUsageDeriveBits = KeyUsageDeriveBits
        pfromJSRef x | x == js_KeyUsageWrapKey = KeyUsageWrapKey
        pfromJSRef x | x == js_KeyUsageUnwrapKey = KeyUsageUnwrapKey
 
instance FromJSRef KeyUsage where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"encrypt\"" js_KeyUsageEncrypt
        :: JSRef KeyUsage
 
foreign import javascript unsafe "\"decrypt\"" js_KeyUsageDecrypt
        :: JSRef KeyUsage
 
foreign import javascript unsafe "\"sign\"" js_KeyUsageSign ::
        JSRef KeyUsage
 
foreign import javascript unsafe "\"verify\"" js_KeyUsageVerify ::
        JSRef KeyUsage
 
foreign import javascript unsafe "\"deriveKey\""
        js_KeyUsageDeriveKey :: JSRef KeyUsage
 
foreign import javascript unsafe "\"deriveBits\""
        js_KeyUsageDeriveBits :: JSRef KeyUsage
 
foreign import javascript unsafe "\"wrapKey\"" js_KeyUsageWrapKey
        :: JSRef KeyUsage
 
foreign import javascript unsafe "\"unwrapKey\""
        js_KeyUsageUnwrapKey :: JSRef KeyUsage
 
data CanvasWindingRule = CanvasWindingRuleNonzero
                       | CanvasWindingRuleEvenodd
 
instance PToJSRef CanvasWindingRule where
        ptoJSRef CanvasWindingRuleNonzero = js_CanvasWindingRuleNonzero
        ptoJSRef CanvasWindingRuleEvenodd = js_CanvasWindingRuleEvenodd
 
instance ToJSRef CanvasWindingRule where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef CanvasWindingRule where
        pfromJSRef x
          | x == js_CanvasWindingRuleNonzero = CanvasWindingRuleNonzero
        pfromJSRef x
          | x == js_CanvasWindingRuleEvenodd = CanvasWindingRuleEvenodd
 
instance FromJSRef CanvasWindingRule where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"nonzero\""
        js_CanvasWindingRuleNonzero :: JSRef CanvasWindingRule
 
foreign import javascript unsafe "\"evenodd\""
        js_CanvasWindingRuleEvenodd :: JSRef CanvasWindingRule
 
data TextTrackMode = TextTrackModeDisabled
                   | TextTrackModeHidden
                   | TextTrackModeShowing
 
instance PToJSRef TextTrackMode where
        ptoJSRef TextTrackModeDisabled = js_TextTrackModeDisabled
        ptoJSRef TextTrackModeHidden = js_TextTrackModeHidden
        ptoJSRef TextTrackModeShowing = js_TextTrackModeShowing
 
instance ToJSRef TextTrackMode where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef TextTrackMode where
        pfromJSRef x
          | x == js_TextTrackModeDisabled = TextTrackModeDisabled
        pfromJSRef x | x == js_TextTrackModeHidden = TextTrackModeHidden
        pfromJSRef x | x == js_TextTrackModeShowing = TextTrackModeShowing
 
instance FromJSRef TextTrackMode where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"disabled\""
        js_TextTrackModeDisabled :: JSRef TextTrackMode
 
foreign import javascript unsafe "\"hidden\""
        js_TextTrackModeHidden :: JSRef TextTrackMode
 
foreign import javascript unsafe "\"showing\""
        js_TextTrackModeShowing :: JSRef TextTrackMode
 
data TextTrackKind = TextTrackKindSubtitles
                   | TextTrackKindCaptions
                   | TextTrackKindDescriptions
                   | TextTrackKindChapters
                   | TextTrackKindMetadata
 
instance PToJSRef TextTrackKind where
        ptoJSRef TextTrackKindSubtitles = js_TextTrackKindSubtitles
        ptoJSRef TextTrackKindCaptions = js_TextTrackKindCaptions
        ptoJSRef TextTrackKindDescriptions = js_TextTrackKindDescriptions
        ptoJSRef TextTrackKindChapters = js_TextTrackKindChapters
        ptoJSRef TextTrackKindMetadata = js_TextTrackKindMetadata
 
instance ToJSRef TextTrackKind where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef TextTrackKind where
        pfromJSRef x
          | x == js_TextTrackKindSubtitles = TextTrackKindSubtitles
        pfromJSRef x
          | x == js_TextTrackKindCaptions = TextTrackKindCaptions
        pfromJSRef x
          | x == js_TextTrackKindDescriptions = TextTrackKindDescriptions
        pfromJSRef x
          | x == js_TextTrackKindChapters = TextTrackKindChapters
        pfromJSRef x
          | x == js_TextTrackKindMetadata = TextTrackKindMetadata
 
instance FromJSRef TextTrackKind where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"subtitles\""
        js_TextTrackKindSubtitles :: JSRef TextTrackKind
 
foreign import javascript unsafe "\"captions\""
        js_TextTrackKindCaptions :: JSRef TextTrackKind
 
foreign import javascript unsafe "\"descriptions\""
        js_TextTrackKindDescriptions :: JSRef TextTrackKind
 
foreign import javascript unsafe "\"chapters\""
        js_TextTrackKindChapters :: JSRef TextTrackKind
 
foreign import javascript unsafe "\"metadata\""
        js_TextTrackKindMetadata :: JSRef TextTrackKind
 
data DeviceType = DeviceTypeNone
                | DeviceTypeAirplay
                | DeviceTypeTvout
 
instance PToJSRef DeviceType where
        ptoJSRef DeviceTypeNone = js_DeviceTypeNone
        ptoJSRef DeviceTypeAirplay = js_DeviceTypeAirplay
        ptoJSRef DeviceTypeTvout = js_DeviceTypeTvout
 
instance ToJSRef DeviceType where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef DeviceType where
        pfromJSRef x | x == js_DeviceTypeNone = DeviceTypeNone
        pfromJSRef x | x == js_DeviceTypeAirplay = DeviceTypeAirplay
        pfromJSRef x | x == js_DeviceTypeTvout = DeviceTypeTvout
 
instance FromJSRef DeviceType where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"none\"" js_DeviceTypeNone ::
        JSRef DeviceType
 
foreign import javascript unsafe "\"airplay\"" js_DeviceTypeAirplay
        :: JSRef DeviceType
 
foreign import javascript unsafe "\"tvout\"" js_DeviceTypeTvout ::
        JSRef DeviceType
 
data FullscreenMode = FullscreenModeNone
                    | FullscreenModeStandard
                    | FullscreenModeOptimized
 
instance PToJSRef FullscreenMode where
        ptoJSRef FullscreenModeNone = js_FullscreenModeNone
        ptoJSRef FullscreenModeStandard = js_FullscreenModeStandard
        ptoJSRef FullscreenModeOptimized = js_FullscreenModeOptimized
 
instance ToJSRef FullscreenMode where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef FullscreenMode where
        pfromJSRef x | x == js_FullscreenModeNone = FullscreenModeNone
        pfromJSRef x
          | x == js_FullscreenModeStandard = FullscreenModeStandard
        pfromJSRef x
          | x == js_FullscreenModeOptimized = FullscreenModeOptimized
 
instance FromJSRef FullscreenMode where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"none\"" js_FullscreenModeNone
        :: JSRef FullscreenMode
 
foreign import javascript unsafe "\"standard\""
        js_FullscreenModeStandard :: JSRef FullscreenMode
 
foreign import javascript unsafe "\"optimized\""
        js_FullscreenModeOptimized :: JSRef FullscreenMode
 
data MediaUIPartID = MediaUIPartIDOptimizedFullscreenButton
                   | MediaUIPartIDOptimizedFullscreenPlaceholder
 
instance PToJSRef MediaUIPartID where
        ptoJSRef MediaUIPartIDOptimizedFullscreenButton
          = js_MediaUIPartIDOptimizedFullscreenButton
        ptoJSRef MediaUIPartIDOptimizedFullscreenPlaceholder
          = js_MediaUIPartIDOptimizedFullscreenPlaceholder
 
instance ToJSRef MediaUIPartID where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef MediaUIPartID where
        pfromJSRef x
          | x == js_MediaUIPartIDOptimizedFullscreenButton =
            MediaUIPartIDOptimizedFullscreenButton
        pfromJSRef x
          | x == js_MediaUIPartIDOptimizedFullscreenPlaceholder =
            MediaUIPartIDOptimizedFullscreenPlaceholder
 
instance FromJSRef MediaUIPartID where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"optimized-fullscreen-button\""
        js_MediaUIPartIDOptimizedFullscreenButton :: JSRef MediaUIPartID
 
foreign import javascript unsafe
        "\"optimized-fullscreen-placeholder\""
        js_MediaUIPartIDOptimizedFullscreenPlaceholder ::
        JSRef MediaUIPartID
 
data EndOfStreamError = EndOfStreamErrorNetwork
                      | EndOfStreamErrorDecode
 
instance PToJSRef EndOfStreamError where
        ptoJSRef EndOfStreamErrorNetwork = js_EndOfStreamErrorNetwork
        ptoJSRef EndOfStreamErrorDecode = js_EndOfStreamErrorDecode
 
instance ToJSRef EndOfStreamError where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef EndOfStreamError where
        pfromJSRef x
          | x == js_EndOfStreamErrorNetwork = EndOfStreamErrorNetwork
        pfromJSRef x
          | x == js_EndOfStreamErrorDecode = EndOfStreamErrorDecode
 
instance FromJSRef EndOfStreamError where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"network\""
        js_EndOfStreamErrorNetwork :: JSRef EndOfStreamError
 
foreign import javascript unsafe "\"decode\""
        js_EndOfStreamErrorDecode :: JSRef EndOfStreamError
 
data SourceTypeEnum = SourceTypeEnumNone
                    | SourceTypeEnumCamera
                    | SourceTypeEnumMicrophone
 
instance PToJSRef SourceTypeEnum where
        ptoJSRef SourceTypeEnumNone = js_SourceTypeEnumNone
        ptoJSRef SourceTypeEnumCamera = js_SourceTypeEnumCamera
        ptoJSRef SourceTypeEnumMicrophone = js_SourceTypeEnumMicrophone
 
instance ToJSRef SourceTypeEnum where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef SourceTypeEnum where
        pfromJSRef x | x == js_SourceTypeEnumNone = SourceTypeEnumNone
        pfromJSRef x | x == js_SourceTypeEnumCamera = SourceTypeEnumCamera
        pfromJSRef x
          | x == js_SourceTypeEnumMicrophone = SourceTypeEnumMicrophone
 
instance FromJSRef SourceTypeEnum where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"none\"" js_SourceTypeEnumNone
        :: JSRef SourceTypeEnum
 
foreign import javascript unsafe "\"camera\""
        js_SourceTypeEnumCamera :: JSRef SourceTypeEnum
 
foreign import javascript unsafe "\"microphone\""
        js_SourceTypeEnumMicrophone :: JSRef SourceTypeEnum
 
data VideoFacingModeEnum = VideoFacingModeEnumUser
                         | VideoFacingModeEnumEnvironment
                         | VideoFacingModeEnumLeft
                         | VideoFacingModeEnumRight
 
instance PToJSRef VideoFacingModeEnum where
        ptoJSRef VideoFacingModeEnumUser = js_VideoFacingModeEnumUser
        ptoJSRef VideoFacingModeEnumEnvironment
          = js_VideoFacingModeEnumEnvironment
        ptoJSRef VideoFacingModeEnumLeft = js_VideoFacingModeEnumLeft
        ptoJSRef VideoFacingModeEnumRight = js_VideoFacingModeEnumRight
 
instance ToJSRef VideoFacingModeEnum where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef VideoFacingModeEnum where
        pfromJSRef x
          | x == js_VideoFacingModeEnumUser = VideoFacingModeEnumUser
        pfromJSRef x
          | x == js_VideoFacingModeEnumEnvironment =
            VideoFacingModeEnumEnvironment
        pfromJSRef x
          | x == js_VideoFacingModeEnumLeft = VideoFacingModeEnumLeft
        pfromJSRef x
          | x == js_VideoFacingModeEnumRight = VideoFacingModeEnumRight
 
instance FromJSRef VideoFacingModeEnum where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"user\""
        js_VideoFacingModeEnumUser :: JSRef VideoFacingModeEnum
 
foreign import javascript unsafe "\"environment\""
        js_VideoFacingModeEnumEnvironment :: JSRef VideoFacingModeEnum
 
foreign import javascript unsafe "\"left\""
        js_VideoFacingModeEnumLeft :: JSRef VideoFacingModeEnum
 
foreign import javascript unsafe "\"right\""
        js_VideoFacingModeEnumRight :: JSRef VideoFacingModeEnum
 
data MediaStreamTrackState = MediaStreamTrackStateNew
                           | MediaStreamTrackStateLive
                           | MediaStreamTrackStateEnded
 
instance PToJSRef MediaStreamTrackState where
        ptoJSRef MediaStreamTrackStateNew = js_MediaStreamTrackStateNew
        ptoJSRef MediaStreamTrackStateLive = js_MediaStreamTrackStateLive
        ptoJSRef MediaStreamTrackStateEnded = js_MediaStreamTrackStateEnded
 
instance ToJSRef MediaStreamTrackState where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef MediaStreamTrackState where
        pfromJSRef x
          | x == js_MediaStreamTrackStateNew = MediaStreamTrackStateNew
        pfromJSRef x
          | x == js_MediaStreamTrackStateLive = MediaStreamTrackStateLive
        pfromJSRef x
          | x == js_MediaStreamTrackStateEnded = MediaStreamTrackStateEnded
 
instance FromJSRef MediaStreamTrackState where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"new\""
        js_MediaStreamTrackStateNew :: JSRef MediaStreamTrackState
 
foreign import javascript unsafe "\"live\""
        js_MediaStreamTrackStateLive :: JSRef MediaStreamTrackState
 
foreign import javascript unsafe "\"ended\""
        js_MediaStreamTrackStateEnded :: JSRef MediaStreamTrackState
 
data RTCIceTransportsEnum = RTCIceTransportsEnumNone
                          | RTCIceTransportsEnumRelay
                          | RTCIceTransportsEnumAll
 
instance PToJSRef RTCIceTransportsEnum where
        ptoJSRef RTCIceTransportsEnumNone = js_RTCIceTransportsEnumNone
        ptoJSRef RTCIceTransportsEnumRelay = js_RTCIceTransportsEnumRelay
        ptoJSRef RTCIceTransportsEnumAll = js_RTCIceTransportsEnumAll
 
instance ToJSRef RTCIceTransportsEnum where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef RTCIceTransportsEnum where
        pfromJSRef x
          | x == js_RTCIceTransportsEnumNone = RTCIceTransportsEnumNone
        pfromJSRef x
          | x == js_RTCIceTransportsEnumRelay = RTCIceTransportsEnumRelay
        pfromJSRef x
          | x == js_RTCIceTransportsEnumAll = RTCIceTransportsEnumAll
 
instance FromJSRef RTCIceTransportsEnum where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"none\""
        js_RTCIceTransportsEnumNone :: JSRef RTCIceTransportsEnum
 
foreign import javascript unsafe "\"relay\""
        js_RTCIceTransportsEnumRelay :: JSRef RTCIceTransportsEnum
 
foreign import javascript unsafe "\"all\""
        js_RTCIceTransportsEnumAll :: JSRef RTCIceTransportsEnum
 
data RTCIdentityOptionEnum = RTCIdentityOptionEnumYes
                           | RTCIdentityOptionEnumNo
                           | RTCIdentityOptionEnumIfconfigured
 
instance PToJSRef RTCIdentityOptionEnum where
        ptoJSRef RTCIdentityOptionEnumYes = js_RTCIdentityOptionEnumYes
        ptoJSRef RTCIdentityOptionEnumNo = js_RTCIdentityOptionEnumNo
        ptoJSRef RTCIdentityOptionEnumIfconfigured
          = js_RTCIdentityOptionEnumIfconfigured
 
instance ToJSRef RTCIdentityOptionEnum where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef RTCIdentityOptionEnum where
        pfromJSRef x
          | x == js_RTCIdentityOptionEnumYes = RTCIdentityOptionEnumYes
        pfromJSRef x
          | x == js_RTCIdentityOptionEnumNo = RTCIdentityOptionEnumNo
        pfromJSRef x
          | x == js_RTCIdentityOptionEnumIfconfigured =
            RTCIdentityOptionEnumIfconfigured
 
instance FromJSRef RTCIdentityOptionEnum where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"yes\""
        js_RTCIdentityOptionEnumYes :: JSRef RTCIdentityOptionEnum
 
foreign import javascript unsafe "\"no\""
        js_RTCIdentityOptionEnumNo :: JSRef RTCIdentityOptionEnum
 
foreign import javascript unsafe "\"ifconfigured\""
        js_RTCIdentityOptionEnumIfconfigured :: JSRef RTCIdentityOptionEnum
 
data OverSampleType = OverSampleTypeNone
                    | OverSampleType2x
                    | OverSampleType4x
 
instance PToJSRef OverSampleType where
        ptoJSRef OverSampleTypeNone = js_OverSampleTypeNone
        ptoJSRef OverSampleType2x = js_OverSampleType2x
        ptoJSRef OverSampleType4x = js_OverSampleType4x
 
instance ToJSRef OverSampleType where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef OverSampleType where
        pfromJSRef x | x == js_OverSampleTypeNone = OverSampleTypeNone
        pfromJSRef x | x == js_OverSampleType2x = OverSampleType2x
        pfromJSRef x | x == js_OverSampleType4x = OverSampleType4x
 
instance FromJSRef OverSampleType where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"none\"" js_OverSampleTypeNone
        :: JSRef OverSampleType
 
foreign import javascript unsafe "\"2x\"" js_OverSampleType2x ::
        JSRef OverSampleType
 
foreign import javascript unsafe "\"4x\"" js_OverSampleType4x ::
        JSRef OverSampleType
 
data PageOverlayType = PageOverlayTypeView
                     | PageOverlayTypeDocument
 
instance PToJSRef PageOverlayType where
        ptoJSRef PageOverlayTypeView = js_PageOverlayTypeView
        ptoJSRef PageOverlayTypeDocument = js_PageOverlayTypeDocument
 
instance ToJSRef PageOverlayType where
        toJSRef = return . ptoJSRef
 
instance PFromJSRef PageOverlayType where
        pfromJSRef x | x == js_PageOverlayTypeView = PageOverlayTypeView
        pfromJSRef x
          | x == js_PageOverlayTypeDocument = PageOverlayTypeDocument
 
instance FromJSRef PageOverlayType where
        fromJSRefUnchecked = return . pfromJSRef
        fromJSRef = return . pfromJSRef . castRef
 
foreign import javascript unsafe "\"view\"" js_PageOverlayTypeView
        :: JSRef PageOverlayType
 
foreign import javascript unsafe "\"document\""
        js_PageOverlayTypeDocument :: JSRef PageOverlayType
#else
module GHCJS.DOM.Enums (
  ) where
#endif
