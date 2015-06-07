{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEOffsetElement
       (js_getIn1, getIn1, js_getDx, getDx, js_getDy, getDy,
        SVGFEOffsetElement, castToSVGFEOffsetElement,
        gTypeSVGFEOffsetElement)
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
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        JSRef SVGFEOffsetElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement.in1 Mozilla SVGFEOffsetElement.in1 documentation> 
getIn1 ::
       (MonadIO m) => SVGFEOffsetElement -> m (Maybe SVGAnimatedString)
getIn1 self
  = liftIO ((js_getIn1 (unSVGFEOffsetElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"dx\"]" js_getDx ::
        JSRef SVGFEOffsetElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement.dx Mozilla SVGFEOffsetElement.dx documentation> 
getDx ::
      (MonadIO m) => SVGFEOffsetElement -> m (Maybe SVGAnimatedNumber)
getDx self
  = liftIO ((js_getDx (unSVGFEOffsetElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"dy\"]" js_getDy ::
        JSRef SVGFEOffsetElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEOffsetElement.dy Mozilla SVGFEOffsetElement.dy documentation> 
getDy ::
      (MonadIO m) => SVGFEOffsetElement -> m (Maybe SVGAnimatedNumber)
getDy self
  = liftIO ((js_getDy (unSVGFEOffsetElement self)) >>= fromJSRef)