{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.File
       (ghcjs_dom_file_get_name, fileGetName, File, IsFile, castToFile,
        gTypeFile, toFile)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_file_get_name :: JSRef File -> IO JSString
 
fileGetName ::
            (IsFile self, FromJSString result) => self -> IO result
fileGetName self
  = fromJSString <$> (ghcjs_dom_file_get_name (unFile (toFile self)))
#else
module GHCJS.DOM.File (
  module Graphics.UI.Gtk.WebKit.DOM.File
  ) where
import Graphics.UI.Gtk.WebKit.DOM.File
#endif
