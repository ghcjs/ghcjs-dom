{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.FileList
       (ghcjs_dom_file_list_item, fileListItem,
        ghcjs_dom_file_list_get_length, fileListGetLength, FileList,
        IsFileList, castToFileList, gTypeFileList, toFileList)
       where
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



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_file_list_item ::
        JSRef FileList -> Word -> IO (JSRef File)
#else 
ghcjs_dom_file_list_item ::
                           JSRef FileList -> Word -> IO (JSRef File)
ghcjs_dom_file_list_item = undefined
#endif
 
fileListItem ::
             (IsFileList self) => self -> Word -> IO (Maybe File)
fileListItem self index
  = fmap File . maybeJSNull <$>
      (ghcjs_dom_file_list_item (unFileList (toFileList self)) index)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_file_list_get_length :: JSRef FileList -> IO Word
#else 
ghcjs_dom_file_list_get_length :: JSRef FileList -> IO Word
ghcjs_dom_file_list_get_length = undefined
#endif
 
fileListGetLength :: (IsFileList self) => self -> IO Word
fileListGetLength self
  = ghcjs_dom_file_list_get_length (unFileList (toFileList self))
#else
module GHCJS.DOM.FileList (
  module Graphics.UI.Gtk.WebKit.DOM.FileList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.FileList
#endif
