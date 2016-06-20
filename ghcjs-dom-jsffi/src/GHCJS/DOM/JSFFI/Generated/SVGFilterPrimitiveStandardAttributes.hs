{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFilterPrimitiveStandardAttributes
       (js_getX, getX, js_getY, getY, js_getWidth, getWidth, js_getHeight,
        getHeight, js_getResult, getResult,
        SVGFilterPrimitiveStandardAttributes,
        castToSVGFilterPrimitiveStandardAttributes,
        gTypeSVGFilterPrimitiveStandardAttributes)
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
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGFilterPrimitiveStandardAttributes ->
          IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.x Mozilla SVGFilterPrimitiveStandardAttributes.x documentation> 
getX ::
     (MonadIO m) =>
       SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedLength)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGFilterPrimitiveStandardAttributes ->
          IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.y Mozilla SVGFilterPrimitiveStandardAttributes.y documentation> 
getY ::
     (MonadIO m) =>
       SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedLength)
getY self = liftIO (nullableToMaybe <$> (js_getY (self)))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        SVGFilterPrimitiveStandardAttributes ->
          IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.width Mozilla SVGFilterPrimitiveStandardAttributes.width documentation> 
getWidth ::
         (MonadIO m) =>
           SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedLength)
getWidth self = liftIO (nullableToMaybe <$> (js_getWidth (self)))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        SVGFilterPrimitiveStandardAttributes ->
          IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.height Mozilla SVGFilterPrimitiveStandardAttributes.height documentation> 
getHeight ::
          (MonadIO m) =>
            SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedLength)
getHeight self = liftIO (nullableToMaybe <$> (js_getHeight (self)))
 
foreign import javascript unsafe "$1[\"result\"]" js_getResult ::
        SVGFilterPrimitiveStandardAttributes ->
          IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.result Mozilla SVGFilterPrimitiveStandardAttributes.result documentation> 
getResult ::
          (MonadIO m) =>
            SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedString)
getResult self = liftIO (nullableToMaybe <$> (js_getResult (self)))