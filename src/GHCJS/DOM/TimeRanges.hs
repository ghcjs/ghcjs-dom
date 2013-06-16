{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.TimeRanges
       (webkit_dom_time_ranges_start, timeRangesStart,
        webkit_dom_time_ranges_end, timeRangesEnd,
        webkit_dom_time_ranges_get_length, timeRangesGetLength)
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
        webkit_dom_time_ranges_start ::
        JSRef TimeRanges -> Word -> IO Float
#else 
webkit_dom_time_ranges_start ::
                               JSRef TimeRanges -> Word -> IO Float
webkit_dom_time_ranges_start = undefined
#endif
 
timeRangesStart ::
                (TimeRangesClass self) => self -> Word -> IO Float
timeRangesStart self index
  = webkit_dom_time_ranges_start (unTimeRanges (toTimeRanges self))
      index


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"end\"]($2)"
        webkit_dom_time_ranges_end :: JSRef TimeRanges -> Word -> IO Float
#else 
webkit_dom_time_ranges_end :: JSRef TimeRanges -> Word -> IO Float
webkit_dom_time_ranges_end = undefined
#endif
 
timeRangesEnd :: (TimeRangesClass self) => self -> Word -> IO Float
timeRangesEnd self index
  = webkit_dom_time_ranges_end (unTimeRanges (toTimeRanges self))
      index


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_time_ranges_get_length :: JSRef TimeRanges -> IO Word
#else 
webkit_dom_time_ranges_get_length :: JSRef TimeRanges -> IO Word
webkit_dom_time_ranges_get_length = undefined
#endif
 
timeRangesGetLength :: (TimeRangesClass self) => self -> IO Word
timeRangesGetLength self
  = webkit_dom_time_ranges_get_length
      (unTimeRanges (toTimeRanges self))