{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaError
       (cMEDIA_ERR_ABORTED, cMEDIA_ERR_NETWORK, cMEDIA_ERR_DECODE,
        cMEDIA_ERR_SRC_NOT_SUPPORTED, cMEDIA_ERR_ENCRYPTED,
        ghcjs_dom_media_error_get_code, mediaErrorGetCode, MediaError,
        IsMediaError, castToMediaError, gTypeMediaError, toMediaError)
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

cMEDIA_ERR_ABORTED = 1
cMEDIA_ERR_NETWORK = 2
cMEDIA_ERR_DECODE = 3
cMEDIA_ERR_SRC_NOT_SUPPORTED = 4
cMEDIA_ERR_ENCRYPTED = 5
 
foreign import javascript unsafe "$1[\"code\"]"
        ghcjs_dom_media_error_get_code :: JSRef MediaError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaError.code Mozilla MediaError.code documentation> 
mediaErrorGetCode ::
                  (MonadIO m, IsMediaError self) => self -> m Word
mediaErrorGetCode self
  = liftIO
      (ghcjs_dom_media_error_get_code (unMediaError (toMediaError self)))
#else
module GHCJS.DOM.MediaError (
  module Graphics.UI.Gtk.WebKit.DOM.MediaError
  ) where
import Graphics.UI.Gtk.WebKit.DOM.MediaError
#endif
