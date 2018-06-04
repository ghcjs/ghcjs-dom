{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGRadialGradientElement
       (js_getCx, getCx, js_getCy, getCy, js_getR, getR, js_getFx, getFx,
        js_getFy, getFy, js_getFr, getFr, SVGRadialGradientElement(..),
        gTypeSVGRadialGradientElement)
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
 
foreign import javascript unsafe "$1[\"cx\"]" js_getCx ::
        SVGRadialGradientElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cx Mozilla SVGRadialGradientElement.cx documentation> 
getCx ::
      (MonadIO m) => SVGRadialGradientElement -> m SVGAnimatedLength
getCx self = liftIO (js_getCx self)
 
foreign import javascript unsafe "$1[\"cy\"]" js_getCy ::
        SVGRadialGradientElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.cy Mozilla SVGRadialGradientElement.cy documentation> 
getCy ::
      (MonadIO m) => SVGRadialGradientElement -> m SVGAnimatedLength
getCy self = liftIO (js_getCy self)
 
foreign import javascript unsafe "$1[\"r\"]" js_getR ::
        SVGRadialGradientElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.r Mozilla SVGRadialGradientElement.r documentation> 
getR ::
     (MonadIO m) => SVGRadialGradientElement -> m SVGAnimatedLength
getR self = liftIO (js_getR self)
 
foreign import javascript unsafe "$1[\"fx\"]" js_getFx ::
        SVGRadialGradientElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fx Mozilla SVGRadialGradientElement.fx documentation> 
getFx ::
      (MonadIO m) => SVGRadialGradientElement -> m SVGAnimatedLength
getFx self = liftIO (js_getFx self)
 
foreign import javascript unsafe "$1[\"fy\"]" js_getFy ::
        SVGRadialGradientElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fy Mozilla SVGRadialGradientElement.fy documentation> 
getFy ::
      (MonadIO m) => SVGRadialGradientElement -> m SVGAnimatedLength
getFy self = liftIO (js_getFy self)
 
foreign import javascript unsafe "$1[\"fr\"]" js_getFr ::
        SVGRadialGradientElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRadialGradientElement.fr Mozilla SVGRadialGradientElement.fr documentation> 
getFr ::
      (MonadIO m) => SVGRadialGradientElement -> m SVGAnimatedLength
getFr self = liftIO (js_getFr self)