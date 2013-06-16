{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.FileList
       (webkit_dom_file_list_item, fileListItem,
        webkit_dom_file_list_get_length, fileListGetLength)
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



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"item\"]($2)"
        webkit_dom_file_list_item ::
        JSRef FileList -> Word -> IO (JSRef File)
#else 
webkit_dom_file_list_item ::
                            JSRef FileList -> Word -> IO (JSRef File)
webkit_dom_file_list_item = undefined
#endif
 
fileListItem ::
             (FileListClass self) => self -> Word -> IO (Maybe File)
fileListItem self index
  = fmap File . maybeJSNull <$>
      (webkit_dom_file_list_item (unFileList (toFileList self)) index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_file_list_get_length :: JSRef FileList -> IO Word
#else 
webkit_dom_file_list_get_length :: JSRef FileList -> IO Word
webkit_dom_file_list_get_length = undefined
#endif
 
fileListGetLength :: (FileListClass self) => self -> IO Word
fileListGetLength self
  = webkit_dom_file_list_get_length (unFileList (toFileList self))