{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TimeRanges
       (js_start, start, js_end, end, js_getLength, getLength, TimeRanges,
        castToTimeRanges, gTypeTimeRanges)
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

 
foreign import javascript unsafe "$1[\"start\"]($2)" js_start ::
        JSRef TimeRanges -> Word -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.start Mozilla TimeRanges.start documentation> 
start :: (MonadIO m) => TimeRanges -> Word -> m Double
start self index = liftIO (js_start (unTimeRanges self) index)
 
foreign import javascript unsafe "$1[\"end\"]($2)" js_end ::
        JSRef TimeRanges -> Word -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.end Mozilla TimeRanges.end documentation> 
end :: (MonadIO m) => TimeRanges -> Word -> m Double
end self index = liftIO (js_end (unTimeRanges self) index)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef TimeRanges -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.length Mozilla TimeRanges.length documentation> 
getLength :: (MonadIO m) => TimeRanges -> m Word
getLength self = liftIO (js_getLength (unTimeRanges self))
#else
module GHCJS.DOM.TimeRanges (
  module Graphics.UI.Gtk.WebKit.DOM.TimeRanges
  ) where
import Graphics.UI.Gtk.WebKit.DOM.TimeRanges
#endif
