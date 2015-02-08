{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMError
       (ghcjs_dom_dom_error_get_name, domErrorGetName, DOMError,
        IsDOMError, castToDOMError, gTypeDOMError, toDOMError)
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

 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_dom_error_get_name :: JSRef DOMError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMError.name Mozilla DOMError.name documentation> 
domErrorGetName ::
                (MonadIO m, IsDOMError self, FromJSString result) =>
                  self -> m result
domErrorGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_dom_error_get_name (unDOMError (toDOMError self))))
#else
module GHCJS.DOM.DOMError (
  ) where
#endif
