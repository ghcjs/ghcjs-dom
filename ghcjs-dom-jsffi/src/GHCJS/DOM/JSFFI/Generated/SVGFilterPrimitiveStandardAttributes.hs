{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFilterPrimitiveStandardAttributes
       (js_getX, getX, js_getY, getY, js_getWidth, getWidth, js_getHeight,
        getHeight, js_getResult, getResult,
        SVGFilterPrimitiveStandardAttributes(..),
        gTypeSVGFilterPrimitiveStandardAttributes,
        IsSVGFilterPrimitiveStandardAttributes,
        toSVGFilterPrimitiveStandardAttributes)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGFilterPrimitiveStandardAttributes -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.x Mozilla SVGFilterPrimitiveStandardAttributes.x documentation> 
getX ::
     (MonadIO m, IsSVGFilterPrimitiveStandardAttributes self) =>
       self -> m SVGAnimatedLength
getX self
  = liftIO (js_getX (toSVGFilterPrimitiveStandardAttributes self))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGFilterPrimitiveStandardAttributes -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.y Mozilla SVGFilterPrimitiveStandardAttributes.y documentation> 
getY ::
     (MonadIO m, IsSVGFilterPrimitiveStandardAttributes self) =>
       self -> m SVGAnimatedLength
getY self
  = liftIO (js_getY (toSVGFilterPrimitiveStandardAttributes self))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        SVGFilterPrimitiveStandardAttributes -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.width Mozilla SVGFilterPrimitiveStandardAttributes.width documentation> 
getWidth ::
         (MonadIO m, IsSVGFilterPrimitiveStandardAttributes self) =>
           self -> m SVGAnimatedLength
getWidth self
  = liftIO
      (js_getWidth (toSVGFilterPrimitiveStandardAttributes self))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        SVGFilterPrimitiveStandardAttributes -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.height Mozilla SVGFilterPrimitiveStandardAttributes.height documentation> 
getHeight ::
          (MonadIO m, IsSVGFilterPrimitiveStandardAttributes self) =>
            self -> m SVGAnimatedLength
getHeight self
  = liftIO
      (js_getHeight (toSVGFilterPrimitiveStandardAttributes self))
 
foreign import javascript unsafe "$1[\"result\"]" js_getResult ::
        SVGFilterPrimitiveStandardAttributes -> IO SVGAnimatedString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.result Mozilla SVGFilterPrimitiveStandardAttributes.result documentation> 
getResult ::
          (MonadIO m, IsSVGFilterPrimitiveStandardAttributes self) =>
            self -> m SVGAnimatedString
getResult self
  = liftIO
      (js_getResult (toSVGFilterPrimitiveStandardAttributes self))