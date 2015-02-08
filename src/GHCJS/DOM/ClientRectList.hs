{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ClientRectList
       (ghcjs_dom_client_rect_list_item, clientRectListItem,
        ghcjs_dom_client_rect_list_get_length, clientRectListGetLength,
        ClientRectList, IsClientRectList, castToClientRectList,
        gTypeClientRectList, toClientRectList)
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
        ghcjs_dom_client_rect_list_item ::
        JSRef ClientRectList -> Word -> IO (JSRef ClientRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRectList.item Mozilla ClientRectList.item documentation> 
clientRectListItem ::
                   (MonadIO m, IsClientRectList self) =>
                     self -> Word -> m (Maybe ClientRect)
clientRectListItem self index
  = liftIO
      ((ghcjs_dom_client_rect_list_item
          (unClientRectList (toClientRectList self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_client_rect_list_get_length ::
        JSRef ClientRectList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRectList.length Mozilla ClientRectList.length documentation> 
clientRectListGetLength ::
                        (MonadIO m, IsClientRectList self) => self -> m Word
clientRectListGetLength self
  = liftIO
      (ghcjs_dom_client_rect_list_get_length
         (unClientRectList (toClientRectList self)))
#else
module GHCJS.DOM.ClientRectList (
  ) where
#endif
