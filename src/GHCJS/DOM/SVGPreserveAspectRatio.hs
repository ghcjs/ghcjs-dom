{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPreserveAspectRatio
       (pattern SVG_PRESERVEASPECTRATIO_UNKNOWN,
        pattern SVG_PRESERVEASPECTRATIO_NONE,
        pattern SVG_PRESERVEASPECTRATIO_XMINYMIN,
        pattern SVG_PRESERVEASPECTRATIO_XMIDYMIN,
        pattern SVG_PRESERVEASPECTRATIO_XMAXYMIN,
        pattern SVG_PRESERVEASPECTRATIO_XMINYMID,
        pattern SVG_PRESERVEASPECTRATIO_XMIDYMID,
        pattern SVG_PRESERVEASPECTRATIO_XMAXYMID,
        pattern SVG_PRESERVEASPECTRATIO_XMINYMAX,
        pattern SVG_PRESERVEASPECTRATIO_XMIDYMAX,
        pattern SVG_PRESERVEASPECTRATIO_XMAXYMAX,
        pattern SVG_MEETORSLICE_UNKNOWN, pattern SVG_MEETORSLICE_MEET,
        pattern SVG_MEETORSLICE_SLICE, js_setAlign, setAlign, js_getAlign,
        getAlign, js_setMeetOrSlice, setMeetOrSlice, js_getMeetOrSlice,
        getMeetOrSlice, SVGPreserveAspectRatio,
        castToSVGPreserveAspectRatio, gTypeSVGPreserveAspectRatio)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

pattern SVG_PRESERVEASPECTRATIO_UNKNOWN = 0
pattern SVG_PRESERVEASPECTRATIO_NONE = 1
pattern SVG_PRESERVEASPECTRATIO_XMINYMIN = 2
pattern SVG_PRESERVEASPECTRATIO_XMIDYMIN = 3
pattern SVG_PRESERVEASPECTRATIO_XMAXYMIN = 4
pattern SVG_PRESERVEASPECTRATIO_XMINYMID = 5
pattern SVG_PRESERVEASPECTRATIO_XMIDYMID = 6
pattern SVG_PRESERVEASPECTRATIO_XMAXYMID = 7
pattern SVG_PRESERVEASPECTRATIO_XMINYMAX = 8
pattern SVG_PRESERVEASPECTRATIO_XMIDYMAX = 9
pattern SVG_PRESERVEASPECTRATIO_XMAXYMAX = 10
pattern SVG_MEETORSLICE_UNKNOWN = 0
pattern SVG_MEETORSLICE_MEET = 1
pattern SVG_MEETORSLICE_SLICE = 2
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef SVGPreserveAspectRatio -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio.align Mozilla SVGPreserveAspectRatio.align documentation> 
setAlign :: (MonadIO m) => SVGPreserveAspectRatio -> Word -> m ()
setAlign self val
  = liftIO (js_setAlign (unSVGPreserveAspectRatio self) val)
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef SVGPreserveAspectRatio -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio.align Mozilla SVGPreserveAspectRatio.align documentation> 
getAlign :: (MonadIO m) => SVGPreserveAspectRatio -> m Word
getAlign self
  = liftIO (js_getAlign (unSVGPreserveAspectRatio self))
 
foreign import javascript unsafe "$1[\"meetOrSlice\"] = $2;"
        js_setMeetOrSlice :: JSRef SVGPreserveAspectRatio -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio.meetOrSlice Mozilla SVGPreserveAspectRatio.meetOrSlice documentation> 
setMeetOrSlice ::
               (MonadIO m) => SVGPreserveAspectRatio -> Word -> m ()
setMeetOrSlice self val
  = liftIO (js_setMeetOrSlice (unSVGPreserveAspectRatio self) val)
 
foreign import javascript unsafe "$1[\"meetOrSlice\"]"
        js_getMeetOrSlice :: JSRef SVGPreserveAspectRatio -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio.meetOrSlice Mozilla SVGPreserveAspectRatio.meetOrSlice documentation> 
getMeetOrSlice :: (MonadIO m) => SVGPreserveAspectRatio -> m Word
getMeetOrSlice self
  = liftIO (js_getMeetOrSlice (unSVGPreserveAspectRatio self))
#else
module GHCJS.DOM.SVGPreserveAspectRatio (
  ) where
#endif
