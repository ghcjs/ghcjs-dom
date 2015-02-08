{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TimeRanges
       (ghcjs_dom_time_ranges_start, timeRangesStart,
        ghcjs_dom_time_ranges_end, timeRangesEnd,
        ghcjs_dom_time_ranges_get_length, timeRangesGetLength,
        TimeRanges(..), IsTimeRanges, castToTimeRanges, gTypeTimeRanges,
        toTimeRanges)
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
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"start\"]($2)"
        ghcjs_dom_time_ranges_start ::
        JSRef TimeRanges -> Word -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.start Mozilla TimeRanges.start documentation> 
timeRangesStart ::
                (MonadIO m, IsTimeRanges self) => self -> Word -> m Double
timeRangesStart self index
  = liftIO
      (ghcjs_dom_time_ranges_start (unTimeRanges (toTimeRanges self))
         index)
 
foreign import javascript unsafe "$1[\"end\"]($2)"
        ghcjs_dom_time_ranges_end :: JSRef TimeRanges -> Word -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.end Mozilla TimeRanges.end documentation> 
timeRangesEnd ::
              (MonadIO m, IsTimeRanges self) => self -> Word -> m Double
timeRangesEnd self index
  = liftIO
      (ghcjs_dom_time_ranges_end (unTimeRanges (toTimeRanges self))
         index)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_time_ranges_get_length :: JSRef TimeRanges -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.length Mozilla TimeRanges.length documentation> 
timeRangesGetLength ::
                    (MonadIO m, IsTimeRanges self) => self -> m Word
timeRangesGetLength self
  = liftIO
      (ghcjs_dom_time_ranges_get_length
         (unTimeRanges (toTimeRanges self)))
#else
module GHCJS.DOM.TimeRanges (
  module Graphics.UI.Gtk.WebKit.DOM.TimeRanges
  ) where
import Graphics.UI.Gtk.WebKit.DOM.TimeRanges
#endif
