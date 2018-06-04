{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEDropShadowElement
       (js_setStdDeviation, setStdDeviation, js_getIn1, getIn1, js_getDx,
        getDx, js_getDy, getDy, js_getStdDeviationX, getStdDeviationX,
        js_getStdDeviationY, getStdDeviationY, SVGFEDropShadowElement(..),
        gTypeSVGFEDropShadowElement)
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
 
foreign import javascript unsafe "$1[\"setStdDeviation\"]($2, $3)"
        js_setStdDeviation ::
        SVGFEDropShadowElement -> Optional Float -> Optional Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.setStdDeviation Mozilla SVGFEDropShadowElement.setStdDeviation documentation> 
setStdDeviation ::
                (MonadIO m) =>
                  SVGFEDropShadowElement -> Maybe Float -> Maybe Float -> m ()
setStdDeviation self stdDeviationX stdDeviationY
  = liftIO
      (js_setStdDeviation self (maybeToOptional stdDeviationX)
         (maybeToOptional stdDeviationY))
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFEDropShadowElement -> IO SVGAnimatedString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.in1 Mozilla SVGFEDropShadowElement.in1 documentation> 
getIn1 ::
       (MonadIO m) => SVGFEDropShadowElement -> m SVGAnimatedString
getIn1 self = liftIO (js_getIn1 self)
 
foreign import javascript unsafe "$1[\"dx\"]" js_getDx ::
        SVGFEDropShadowElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.dx Mozilla SVGFEDropShadowElement.dx documentation> 
getDx ::
      (MonadIO m) => SVGFEDropShadowElement -> m SVGAnimatedNumber
getDx self = liftIO (js_getDx self)
 
foreign import javascript unsafe "$1[\"dy\"]" js_getDy ::
        SVGFEDropShadowElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.dy Mozilla SVGFEDropShadowElement.dy documentation> 
getDy ::
      (MonadIO m) => SVGFEDropShadowElement -> m SVGAnimatedNumber
getDy self = liftIO (js_getDy self)
 
foreign import javascript unsafe "$1[\"stdDeviationX\"]"
        js_getStdDeviationX ::
        SVGFEDropShadowElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.stdDeviationX Mozilla SVGFEDropShadowElement.stdDeviationX documentation> 
getStdDeviationX ::
                 (MonadIO m) => SVGFEDropShadowElement -> m SVGAnimatedNumber
getStdDeviationX self = liftIO (js_getStdDeviationX self)
 
foreign import javascript unsafe "$1[\"stdDeviationY\"]"
        js_getStdDeviationY ::
        SVGFEDropShadowElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.stdDeviationY Mozilla SVGFEDropShadowElement.stdDeviationY documentation> 
getStdDeviationY ::
                 (MonadIO m) => SVGFEDropShadowElement -> m SVGAnimatedNumber
getStdDeviationY self = liftIO (js_getStdDeviationY self)