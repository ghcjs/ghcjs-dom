{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFilterElement
       (js_setFilterRes, setFilterRes, js_getFilterUnits, getFilterUnits,
        js_getPrimitiveUnits, getPrimitiveUnits, js_getX, getX, js_getY,
        getY, js_getWidth, getWidth, js_getHeight, getHeight,
        js_getFilterResX, getFilterResX, js_getFilterResY, getFilterResY,
        SVGFilterElement(..), gTypeSVGFilterElement)
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
 
foreign import javascript unsafe "$1[\"setFilterRes\"]($2, $3)"
        js_setFilterRes ::
        SVGFilterElement -> Optional Word -> Optional Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.setFilterRes Mozilla SVGFilterElement.setFilterRes documentation> 
setFilterRes ::
             (MonadIO m) => SVGFilterElement -> Maybe Word -> Maybe Word -> m ()
setFilterRes self filterResX filterResY
  = liftIO
      (js_setFilterRes self (maybeToOptional filterResX)
         (maybeToOptional filterResY))
 
foreign import javascript unsafe "$1[\"filterUnits\"]"
        js_getFilterUnits :: SVGFilterElement -> IO SVGAnimatedEnumeration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterUnits Mozilla SVGFilterElement.filterUnits documentation> 
getFilterUnits ::
               (MonadIO m) => SVGFilterElement -> m SVGAnimatedEnumeration
getFilterUnits self = liftIO (js_getFilterUnits self)
 
foreign import javascript unsafe "$1[\"primitiveUnits\"]"
        js_getPrimitiveUnits ::
        SVGFilterElement -> IO SVGAnimatedEnumeration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.primitiveUnits Mozilla SVGFilterElement.primitiveUnits documentation> 
getPrimitiveUnits ::
                  (MonadIO m) => SVGFilterElement -> m SVGAnimatedEnumeration
getPrimitiveUnits self = liftIO (js_getPrimitiveUnits self)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGFilterElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.x Mozilla SVGFilterElement.x documentation> 
getX :: (MonadIO m) => SVGFilterElement -> m SVGAnimatedLength
getX self = liftIO (js_getX self)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGFilterElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.y Mozilla SVGFilterElement.y documentation> 
getY :: (MonadIO m) => SVGFilterElement -> m SVGAnimatedLength
getY self = liftIO (js_getY self)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        SVGFilterElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.width Mozilla SVGFilterElement.width documentation> 
getWidth :: (MonadIO m) => SVGFilterElement -> m SVGAnimatedLength
getWidth self = liftIO (js_getWidth self)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        SVGFilterElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.height Mozilla SVGFilterElement.height documentation> 
getHeight :: (MonadIO m) => SVGFilterElement -> m SVGAnimatedLength
getHeight self = liftIO (js_getHeight self)
 
foreign import javascript unsafe "$1[\"filterResX\"]"
        js_getFilterResX :: SVGFilterElement -> IO SVGAnimatedInteger

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResX Mozilla SVGFilterElement.filterResX documentation> 
getFilterResX ::
              (MonadIO m) => SVGFilterElement -> m SVGAnimatedInteger
getFilterResX self = liftIO (js_getFilterResX self)
 
foreign import javascript unsafe "$1[\"filterResY\"]"
        js_getFilterResY :: SVGFilterElement -> IO SVGAnimatedInteger

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResY Mozilla SVGFilterElement.filterResY documentation> 
getFilterResY ::
              (MonadIO m) => SVGFilterElement -> m SVGAnimatedInteger
getFilterResY self = liftIO (js_getFilterResY self)