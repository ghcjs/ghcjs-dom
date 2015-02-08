{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PositionError
       (cPERMISSION_DENIED, cPOSITION_UNAVAILABLE, cTIMEOUT,
        ghcjs_dom_position_error_get_code, positionErrorGetCode,
        ghcjs_dom_position_error_get_message, positionErrorGetMessage,
        PositionError, IsPositionError, castToPositionError,
        gTypePositionError, toPositionError)
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

cPERMISSION_DENIED = 1
cPOSITION_UNAVAILABLE = 2
cTIMEOUT = 3
 
foreign import javascript unsafe "$1[\"code\"]"
        ghcjs_dom_position_error_get_code :: JSRef PositionError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionError.code Mozilla PositionError.code documentation> 
positionErrorGetCode ::
                     (MonadIO m, IsPositionError self) => self -> m Word
positionErrorGetCode self
  = liftIO
      (ghcjs_dom_position_error_get_code
         (unPositionError (toPositionError self)))
 
foreign import javascript unsafe "$1[\"message\"]"
        ghcjs_dom_position_error_get_message ::
        JSRef PositionError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PositionError.message Mozilla PositionError.message documentation> 
positionErrorGetMessage ::
                        (MonadIO m, IsPositionError self, FromJSString result) =>
                          self -> m result
positionErrorGetMessage self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_position_error_get_message
            (unPositionError (toPositionError self))))
#else
module GHCJS.DOM.PositionError (
  ) where
#endif
