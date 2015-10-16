{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedString
       (js_setBaseVal, setBaseVal, js_getBaseVal, getBaseVal,
        js_getAnimVal, getAnimVal, SVGAnimatedString,
        castToSVGAnimatedString, gTypeSVGAnimatedString)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"baseVal\"] = $2;"
        js_setBaseVal :: SVGAnimatedString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString.baseVal Mozilla SVGAnimatedString.baseVal documentation> 
setBaseVal ::
           (MonadIO m, ToJSString val) => SVGAnimatedString -> val -> m ()
setBaseVal self val
  = liftIO (js_setBaseVal (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        SVGAnimatedString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString.baseVal Mozilla SVGAnimatedString.baseVal documentation> 
getBaseVal ::
           (MonadIO m, FromJSString result) => SVGAnimatedString -> m result
getBaseVal self = liftIO (fromJSString <$> (js_getBaseVal (self)))
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        SVGAnimatedString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString.animVal Mozilla SVGAnimatedString.animVal documentation> 
getAnimVal ::
           (MonadIO m, FromJSString result) => SVGAnimatedString -> m result
getAnimVal self = liftIO (fromJSString <$> (js_getAnimVal (self)))