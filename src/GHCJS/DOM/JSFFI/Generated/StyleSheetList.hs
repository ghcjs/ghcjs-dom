{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.StyleSheetList
       (js_item, item, js__get, _get, js_getLength, getLength,
        StyleSheetList, castToStyleSheetList, gTypeStyleSheetList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
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
        JSRef StyleSheetList -> Word -> IO (JSRef StyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.item Mozilla StyleSheetList.item documentation> 
item ::
     (MonadIO m) => StyleSheetList -> Word -> m (Maybe StyleSheet)
item self index
  = liftIO ((js_item (unStyleSheetList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"_get\"]($2)" js__get ::
        JSRef StyleSheetList -> JSString -> IO (JSRef CSSStyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList._get Mozilla StyleSheetList._get documentation> 
_get ::
     (MonadIO m, ToJSString name) =>
       StyleSheetList -> name -> m (Maybe CSSStyleSheet)
_get self name
  = liftIO
      ((js__get (unStyleSheetList self) (toJSString name)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef StyleSheetList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.length Mozilla StyleSheetList.length documentation> 
getLength :: (MonadIO m) => StyleSheetList -> m Word
getLength self = liftIO (js_getLength (unStyleSheetList self))