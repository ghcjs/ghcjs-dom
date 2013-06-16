{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.File (webkit_dom_file_get_name, fileGetName) where
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
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_file_get_name :: JSRef File -> IO JSString
#else 
webkit_dom_file_get_name :: JSRef File -> IO JSString
webkit_dom_file_get_name = undefined
#endif
 
fileGetName ::
            (FileClass self, FromJSString result) => self -> IO result
fileGetName self
  = fromJSString <$>
      (webkit_dom_file_get_name (unFile (toFile self)))