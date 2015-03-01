{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaError
       (pattern MEDIA_ERR_ABORTED, pattern MEDIA_ERR_NETWORK,
        pattern MEDIA_ERR_DECODE, pattern MEDIA_ERR_SRC_NOT_SUPPORTED,
        pattern MEDIA_ERR_ENCRYPTED, js_getCode, getCode, MediaError,
        castToMediaError, gTypeMediaError)
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

pattern MEDIA_ERR_ABORTED = 1
pattern MEDIA_ERR_NETWORK = 2
pattern MEDIA_ERR_DECODE = 3
pattern MEDIA_ERR_SRC_NOT_SUPPORTED = 4
pattern MEDIA_ERR_ENCRYPTED = 5
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        JSRef MediaError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaError.code Mozilla MediaError.code documentation> 
getCode :: (MonadIO m) => MediaError -> m Word
getCode self = liftIO (js_getCode (unMediaError self))
#else
module GHCJS.DOM.MediaError (
  module Graphics.UI.Gtk.WebKit.DOM.MediaError
  ) where
import Graphics.UI.Gtk.WebKit.DOM.MediaError
#endif
