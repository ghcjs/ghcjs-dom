{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMStringList
       (js_item, item, js_contains, contains, js_getLength, getLength,
        DOMStringList, castToDOMStringList, gTypeDOMStringList)
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
        JSRef DOMStringList -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.item Mozilla DOMStringList.item documentation> 
item ::
     (MonadIO m, FromJSString result) =>
       DOMStringList -> Word -> m result
item self index
  = liftIO (fromJSString <$> (js_item (unDOMStringList self) index))
 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        js_contains :: JSRef DOMStringList -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.contains Mozilla DOMStringList.contains documentation> 
contains ::
         (MonadIO m, ToJSString string) => DOMStringList -> string -> m Bool
contains self string
  = liftIO (js_contains (unDOMStringList self) (toJSString string))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef DOMStringList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.length Mozilla DOMStringList.length documentation> 
getLength :: (MonadIO m) => DOMStringList -> m Word
getLength self = liftIO (js_getLength (unDOMStringList self))
#else
module GHCJS.DOM.DOMStringList (
  module Graphics.UI.Gtk.WebKit.DOM.DOMStringList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMStringList
#endif
