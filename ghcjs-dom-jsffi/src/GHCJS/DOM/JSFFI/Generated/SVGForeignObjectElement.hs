{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGForeignObjectElement
       (js_getX, getX, js_getY, getY, js_getWidth, getWidth, js_getHeight,
        getHeight, SVGForeignObjectElement(..),
        gTypeSVGForeignObjectElement)
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
        SVGForeignObjectElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.x Mozilla SVGForeignObjectElement.x documentation> 
getX ::
     (MonadIO m) => SVGForeignObjectElement -> m SVGAnimatedLength
getX self = liftIO (js_getX self)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGForeignObjectElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.y Mozilla SVGForeignObjectElement.y documentation> 
getY ::
     (MonadIO m) => SVGForeignObjectElement -> m SVGAnimatedLength
getY self = liftIO (js_getY self)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        SVGForeignObjectElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.width Mozilla SVGForeignObjectElement.width documentation> 
getWidth ::
         (MonadIO m) => SVGForeignObjectElement -> m SVGAnimatedLength
getWidth self = liftIO (js_getWidth self)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        SVGForeignObjectElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGForeignObjectElement.height Mozilla SVGForeignObjectElement.height documentation> 
getHeight ::
          (MonadIO m) => SVGForeignObjectElement -> m SVGAnimatedLength
getHeight self = liftIO (js_getHeight self)