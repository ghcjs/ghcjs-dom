{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.BeforeLoadEvent
       (ghcjs_dom_before_load_event_get_url, beforeLoadEventGetUrl,
        BeforeLoadEvent, IsBeforeLoadEvent, castToBeforeLoadEvent,
        gTypeBeforeLoadEvent, toBeforeLoadEvent)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"url\"]"
        ghcjs_dom_before_load_event_get_url ::
        JSRef BeforeLoadEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BeforeLoadEvent.url Mozilla BeforeLoadEvent.url documentation> 
beforeLoadEventGetUrl ::
                      (IsBeforeLoadEvent self, FromJSString result) => self -> IO result
beforeLoadEventGetUrl self
  = fromJSString <$>
      (ghcjs_dom_before_load_event_get_url
         (unBeforeLoadEvent (toBeforeLoadEvent self)))
#else
module GHCJS.DOM.BeforeLoadEvent (
  ) where
#endif
