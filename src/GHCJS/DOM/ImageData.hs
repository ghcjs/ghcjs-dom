{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ImageData
       (js_newImageData, newImageData, js_newImageData', newImageData',
        js_getWidth, getWidth, js_getHeight, getHeight, js_getData,
        getData, ImageData, castToImageData, gTypeImageData)
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

 
foreign import javascript unsafe
        "new window[\"ImageData\"]($1, $2,\n$3)" js_newImageData ::
        JSRef Uint8ClampedArray -> Word -> Word -> IO (JSRef ImageData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData Mozilla ImageData documentation> 
newImageData ::
             (MonadIO m, IsUint8ClampedArray data') =>
               Maybe data' -> Word -> Word -> m ImageData
newImageData data' sw sh
  = liftIO
      (js_newImageData
         (maybe jsNull (unUint8ClampedArray . toUint8ClampedArray) data')
         sw
         sh
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "new window[\"ImageData\"]($1, $2)" js_newImageData' ::
        Word -> Word -> IO (JSRef ImageData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData Mozilla ImageData documentation> 
newImageData' :: (MonadIO m) => Word -> Word -> m ImageData
newImageData' sw sh
  = liftIO (js_newImageData' sw sh >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef ImageData -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.width Mozilla ImageData.width documentation> 
getWidth :: (MonadIO m) => ImageData -> m Int
getWidth self = liftIO (js_getWidth (unImageData self))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef ImageData -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.height Mozilla ImageData.height documentation> 
getHeight :: (MonadIO m) => ImageData -> m Int
getHeight self = liftIO (js_getHeight (unImageData self))
 
foreign import javascript unsafe "$1[\"data\"]" js_getData ::
        JSRef ImageData -> IO (JSRef Uint8ClampedArray)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.data Mozilla ImageData.data documentation> 
getData :: (MonadIO m) => ImageData -> m (Maybe Uint8ClampedArray)
getData self
  = liftIO ((js_getData (unImageData self)) >>= fromJSRef)
#else
module GHCJS.DOM.ImageData (
  ) where
#endif
