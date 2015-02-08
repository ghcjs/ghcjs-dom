{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.FileList
       (ghcjs_dom_file_list_item, fileListItem,
        ghcjs_dom_file_list_get_length, fileListGetLength, FileList,
        IsFileList, castToFileList, gTypeFileList, toFileList)
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

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_file_list_item ::
        JSRef FileList -> Word -> IO (JSRef File)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileList.item Mozilla FileList.item documentation> 
fileListItem ::
             (MonadIO m, IsFileList self) => self -> Word -> m (Maybe File)
fileListItem self index
  = liftIO
      ((ghcjs_dom_file_list_item (unFileList (toFileList self)) index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_file_list_get_length :: JSRef FileList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileList.length Mozilla FileList.length documentation> 
fileListGetLength :: (MonadIO m, IsFileList self) => self -> m Word
fileListGetLength self
  = liftIO
      (ghcjs_dom_file_list_get_length (unFileList (toFileList self)))
#else
module GHCJS.DOM.FileList (
  module Graphics.UI.Gtk.WebKit.DOM.FileList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.FileList
#endif
