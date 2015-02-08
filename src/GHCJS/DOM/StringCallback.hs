{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StringCallback
       (ghcjs_dom_string_callback_handle_event, stringCallbackHandleEvent,
        StringCallback, IsStringCallback, castToStringCallback,
        gTypeStringCallback, toStringCallback)
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

 
foreign import javascript unsafe
        "($1[\"handleEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_string_callback_handle_event ::
        JSRef StringCallback -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StringCallback.handleEvent Mozilla StringCallback.handleEvent documentation> 
stringCallbackHandleEvent ::
                          (MonadIO m, IsStringCallback self, ToJSString data') =>
                            self -> data' -> m Bool
stringCallbackHandleEvent self data'
  = liftIO
      (ghcjs_dom_string_callback_handle_event
         (unStringCallback (toStringCallback self))
         (toJSString data'))
#else
module GHCJS.DOM.StringCallback (
  ) where
#endif
