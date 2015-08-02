{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedNumberList
       (js_getBaseVal, getBaseVal, js_getAnimVal, getAnimVal,
        SVGAnimatedNumberList, castToSVGAnimatedNumberList,
        gTypeSVGAnimatedNumberList)
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
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        JSRef SVGAnimatedNumberList -> IO (JSRef SVGNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList.baseVal Mozilla SVGAnimatedNumberList.baseVal documentation> 
getBaseVal ::
           (MonadIO m) => SVGAnimatedNumberList -> m (Maybe SVGNumberList)
getBaseVal self
  = liftIO
      ((js_getBaseVal (unSVGAnimatedNumberList self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        JSRef SVGAnimatedNumberList -> IO (JSRef SVGNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedNumberList.animVal Mozilla SVGAnimatedNumberList.animVal documentation> 
getAnimVal ::
           (MonadIO m) => SVGAnimatedNumberList -> m (Maybe SVGNumberList)
getAnimVal self
  = liftIO
      ((js_getAnimVal (unSVGAnimatedNumberList self)) >>= fromJSRef)