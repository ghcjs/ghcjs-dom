{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DOMNamedFlowCollection
       (js_item, item, js_namedItem, namedItem, js_getLength, getLength,
        DOMNamedFlowCollection, castToDOMNamedFlowCollection,
        gTypeDOMNamedFlowCollection)
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
        JSRef DOMNamedFlowCollection -> Word -> IO (JSRef WebKitNamedFlow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.item Mozilla WebKitNamedFlowCollection.item documentation> 
item ::
     (MonadIO m) =>
       DOMNamedFlowCollection -> Word -> m (Maybe WebKitNamedFlow)
item self index
  = liftIO
      ((js_item (unDOMNamedFlowCollection self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem ::
        JSRef DOMNamedFlowCollection ->
          JSString -> IO (JSRef WebKitNamedFlow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.namedItem Mozilla WebKitNamedFlowCollection.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            DOMNamedFlowCollection -> name -> m (Maybe WebKitNamedFlow)
namedItem self name
  = liftIO
      ((js_namedItem (unDOMNamedFlowCollection self) (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef DOMNamedFlowCollection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.length Mozilla WebKitNamedFlowCollection.length documentation> 
getLength :: (MonadIO m) => DOMNamedFlowCollection -> m Word
getLength self
  = liftIO (js_getLength (unDOMNamedFlowCollection self))