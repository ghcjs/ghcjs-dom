{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RGBColor
       (js_getRed, getRed, js_getGreen, getGreen, js_getBlue, getBlue,
        js_getAlpha, getAlpha, RGBColor, castToRGBColor, gTypeRGBColor)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"red\"]" js_getRed ::
        JSRef RGBColor -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.red Mozilla RGBColor.red documentation> 
getRed :: (MonadIO m) => RGBColor -> m (Maybe CSSPrimitiveValue)
getRed self = liftIO ((js_getRed (unRGBColor self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"green\"]" js_getGreen ::
        JSRef RGBColor -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.green Mozilla RGBColor.green documentation> 
getGreen :: (MonadIO m) => RGBColor -> m (Maybe CSSPrimitiveValue)
getGreen self
  = liftIO ((js_getGreen (unRGBColor self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"blue\"]" js_getBlue ::
        JSRef RGBColor -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.blue Mozilla RGBColor.blue documentation> 
getBlue :: (MonadIO m) => RGBColor -> m (Maybe CSSPrimitiveValue)
getBlue self
  = liftIO ((js_getBlue (unRGBColor self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"alpha\"]" js_getAlpha ::
        JSRef RGBColor -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RGBColor.alpha Mozilla RGBColor.alpha documentation> 
getAlpha :: (MonadIO m) => RGBColor -> m (Maybe CSSPrimitiveValue)
getAlpha self
  = liftIO ((js_getAlpha (unRGBColor self)) >>= fromJSRef)
#else
module GHCJS.DOM.RGBColor (
  ) where
#endif
