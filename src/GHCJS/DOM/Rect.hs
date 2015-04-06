{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Rect
       (js_getTop, getTop, js_getRight, getRight, js_getBottom, getBottom,
        js_getLeft, getLeft, Rect, castToRect, gTypeRect)
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

 
foreign import javascript unsafe "$1[\"top\"]" js_getTop ::
        JSRef Rect -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.top Mozilla Rect.top documentation> 
getTop :: (MonadIO m) => Rect -> m (Maybe CSSPrimitiveValue)
getTop self = liftIO ((js_getTop (unRect self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"right\"]" js_getRight ::
        JSRef Rect -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.right Mozilla Rect.right documentation> 
getRight :: (MonadIO m) => Rect -> m (Maybe CSSPrimitiveValue)
getRight self = liftIO ((js_getRight (unRect self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"bottom\"]" js_getBottom ::
        JSRef Rect -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.bottom Mozilla Rect.bottom documentation> 
getBottom :: (MonadIO m) => Rect -> m (Maybe CSSPrimitiveValue)
getBottom self
  = liftIO ((js_getBottom (unRect self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"left\"]" js_getLeft ::
        JSRef Rect -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.left Mozilla Rect.left documentation> 
getLeft :: (MonadIO m) => Rect -> m (Maybe CSSPrimitiveValue)
getLeft self = liftIO ((js_getLeft (unRect self)) >>= fromJSRef)
#else
module GHCJS.DOM.Rect (
  ) where
#endif
