{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.OverflowEvent
       (cHORIZONTAL, cVERTICAL, cBOTH,
        ghcjs_dom_overflow_event_get_orient, overflowEventGetOrient,
        ghcjs_dom_overflow_event_get_horizontal_overflow,
        overflowEventGetHorizontalOverflow,
        ghcjs_dom_overflow_event_get_vertical_overflow,
        overflowEventGetVerticalOverflow, OverflowEvent, IsOverflowEvent,
        castToOverflowEvent, gTypeOverflowEvent, toOverflowEvent)
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

cHORIZONTAL = 0
cVERTICAL = 1
cBOTH = 2
 
foreign import javascript unsafe "$1[\"orient\"]"
        ghcjs_dom_overflow_event_get_orient ::
        JSRef OverflowEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.orient Mozilla OverflowEvent.orient documentation> 
overflowEventGetOrient ::
                       (MonadIO m, IsOverflowEvent self) => self -> m Word
overflowEventGetOrient self
  = liftIO
      (ghcjs_dom_overflow_event_get_orient
         (unOverflowEvent (toOverflowEvent self)))
 
foreign import javascript unsafe
        "($1[\"horizontalOverflow\"] ? 1 : 0)"
        ghcjs_dom_overflow_event_get_horizontal_overflow ::
        JSRef OverflowEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.horizontalOverflow Mozilla OverflowEvent.horizontalOverflow documentation> 
overflowEventGetHorizontalOverflow ::
                                   (MonadIO m, IsOverflowEvent self) => self -> m Bool
overflowEventGetHorizontalOverflow self
  = liftIO
      (ghcjs_dom_overflow_event_get_horizontal_overflow
         (unOverflowEvent (toOverflowEvent self)))
 
foreign import javascript unsafe
        "($1[\"verticalOverflow\"] ? 1 : 0)"
        ghcjs_dom_overflow_event_get_vertical_overflow ::
        JSRef OverflowEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.verticalOverflow Mozilla OverflowEvent.verticalOverflow documentation> 
overflowEventGetVerticalOverflow ::
                                 (MonadIO m, IsOverflowEvent self) => self -> m Bool
overflowEventGetVerticalOverflow self
  = liftIO
      (ghcjs_dom_overflow_event_get_vertical_overflow
         (unOverflowEvent (toOverflowEvent self)))
#else
module GHCJS.DOM.OverflowEvent (
  ) where
#endif
