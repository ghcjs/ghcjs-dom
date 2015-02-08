{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.File
       (ghcjs_dom_file_get_name, fileGetName, File, IsFile, castToFile,
        gTypeFile, toFile)
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
        ghcjs_dom_file_get_name :: JSRef File -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/File.name Mozilla File.name documentation> 
fileGetName ::
            (MonadIO m, IsFile self, FromJSString result) => self -> m result
fileGetName self
  = liftIO
      (fromJSString <$> (ghcjs_dom_file_get_name (unFile (toFile self))))
#else
module GHCJS.DOM.File (
  module Graphics.UI.Gtk.WebKit.DOM.File
  ) where
import Graphics.UI.Gtk.WebKit.DOM.File
#endif
