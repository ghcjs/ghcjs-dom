{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TimeRanges
       (ghcjs_dom_time_ranges_start, timeRangesStart,
        ghcjs_dom_time_ranges_end, timeRangesEnd,
        ghcjs_dom_time_ranges_get_length, timeRangesGetLength)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"start\"]($2)"
        ghcjs_dom_time_ranges_start ::
        JSRef TimeRanges -> Word -> IO Double
#else 
ghcjs_dom_time_ranges_start ::
                              JSRef TimeRanges -> Word -> IO Double
ghcjs_dom_time_ranges_start = undefined
#endif
 
timeRangesStart :: (IsTimeRanges self) => self -> Word -> IO Double
timeRangesStart self index
  = ghcjs_dom_time_ranges_start (unTimeRanges (toTimeRanges self))
      index


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"end\"]($2)"
        ghcjs_dom_time_ranges_end :: JSRef TimeRanges -> Word -> IO Double
#else 
ghcjs_dom_time_ranges_end :: JSRef TimeRanges -> Word -> IO Double
ghcjs_dom_time_ranges_end = undefined
#endif
 
timeRangesEnd :: (IsTimeRanges self) => self -> Word -> IO Double
timeRangesEnd self index
  = ghcjs_dom_time_ranges_end (unTimeRanges (toTimeRanges self))
      index


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_time_ranges_get_length :: JSRef TimeRanges -> IO Word
#else 
ghcjs_dom_time_ranges_get_length :: JSRef TimeRanges -> IO Word
ghcjs_dom_time_ranges_get_length = undefined
#endif
 
timeRangesGetLength :: (IsTimeRanges self) => self -> IO Word
timeRangesGetLength self
  = ghcjs_dom_time_ranges_get_length
      (unTimeRanges (toTimeRanges self))
#else
module GHCJS.DOM.TimeRanges (
  module Graphics.UI.Gtk.WebKit.DOM.TimeRanges
  ) where
import Graphics.UI.Gtk.WebKit.DOM.TimeRanges
#endif
