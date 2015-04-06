{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMTokenList
       (js_item, item, js_contains, contains, js_add, add, js_remove,
        remove, js_toggle, toggle, js_getLength, getLength, DOMTokenList,
        castToDOMTokenList, gTypeDOMTokenList, IsDOMTokenList,
        toDOMTokenList)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        JSRef DOMTokenList -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.item Mozilla DOMTokenList.item documentation> 
item ::
     (MonadIO m, IsDOMTokenList self, FromJSString result) =>
       self -> Word -> m result
item self index
  = liftIO
      (fromJSString <$>
         (js_item (unDOMTokenList (toDOMTokenList self)) index))
 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        js_contains :: JSRef DOMTokenList -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.contains Mozilla DOMTokenList.contains documentation> 
contains ::
         (MonadIO m, IsDOMTokenList self, ToJSString token) =>
           self -> token -> m Bool
contains self token
  = liftIO
      (js_contains (unDOMTokenList (toDOMTokenList self))
         (toJSString token))
 
foreign import javascript unsafe "$1[\"add\"].apply($1, $2)" js_add
        :: JSRef DOMTokenList -> JSRef [a] -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.add Mozilla DOMTokenList.add documentation> 
add ::
    (MonadIO m, IsDOMTokenList self, ToJSString tokens,
     ToJSRef tokens) =>
      self -> [tokens] -> m ()
add self tokens
  = liftIO
      (toJSRef tokens >>=
         \ tokens' -> js_add (unDOMTokenList (toDOMTokenList self)) tokens')
 
foreign import javascript unsafe "$1[\"remove\"].apply($1, $2)"
        js_remove :: JSRef DOMTokenList -> JSRef [a] -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.remove Mozilla DOMTokenList.remove documentation> 
remove ::
       (MonadIO m, IsDOMTokenList self, ToJSString tokens,
        ToJSRef tokens) =>
         self -> [tokens] -> m ()
remove self tokens
  = liftIO
      (toJSRef tokens >>=
         \ tokens' ->
           js_remove (unDOMTokenList (toDOMTokenList self)) tokens')
 
foreign import javascript unsafe "($1[\"toggle\"]($2, $3) ? 1 : 0)"
        js_toggle :: JSRef DOMTokenList -> JSString -> Bool -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.toggle Mozilla DOMTokenList.toggle documentation> 
toggle ::
       (MonadIO m, IsDOMTokenList self, ToJSString token) =>
         self -> token -> Bool -> m Bool
toggle self token force
  = liftIO
      (js_toggle (unDOMTokenList (toDOMTokenList self))
         (toJSString token)
         force)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef DOMTokenList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList.length Mozilla DOMTokenList.length documentation> 
getLength :: (MonadIO m, IsDOMTokenList self) => self -> m Word
getLength self
  = liftIO (js_getLength (unDOMTokenList (toDOMTokenList self)))
#else
module GHCJS.DOM.DOMTokenList (
  module Graphics.UI.Gtk.WebKit.DOM.DOMTokenList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMTokenList
#endif
