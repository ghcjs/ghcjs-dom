{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DOMStringList
       (js_item, item, js_contains, contains, js_getLength, getLength,
        DOMStringList, castToDOMStringList, gTypeDOMStringList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
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
        JSRef DOMStringList -> Word -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.item Mozilla DOMStringList.item documentation> 
item ::
     (MonadIO m, FromJSString result) =>
       DOMStringList -> Word -> m (Maybe result)
item self index
  = liftIO
      (fromMaybeJSString <$> (js_item (unDOMStringList self) index))
 
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