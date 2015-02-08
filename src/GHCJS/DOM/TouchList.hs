{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TouchList
       (ghcjs_dom_touch_list_item, touchListItem,
        ghcjs_dom_touch_list_get_length, touchListGetLength, TouchList(..),
        IsTouchList, castToTouchList, gTypeTouchList, toTouchList)
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
        ghcjs_dom_touch_list_item ::
        JSRef TouchList -> Word -> IO (JSRef Touch)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchList.item Mozilla TouchList.item documentation> 
touchListItem ::
              (MonadIO m, IsTouchList self) => self -> Word -> m (Maybe Touch)
touchListItem self index
  = liftIO
      ((ghcjs_dom_touch_list_item (unTouchList (toTouchList self)) index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_touch_list_get_length :: JSRef TouchList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchList.length Mozilla TouchList.length documentation> 
touchListGetLength ::
                   (MonadIO m, IsTouchList self) => self -> m Word
touchListGetLength self
  = liftIO
      (ghcjs_dom_touch_list_get_length (unTouchList (toTouchList self)))
#else
module GHCJS.DOM.TouchList (
  ) where
#endif
