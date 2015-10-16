{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.ImageData
       (js_newImageData, newImageData, js_newImageData', newImageData',
        js_getWidth, getWidth, js_getHeight, getHeight, ImageData,
        castToImageData, gTypeImageData)
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
 
foreign import javascript unsafe
        "new window[\"ImageData\"]($1, $2,\n$3)" js_newImageData ::
        Nullable Uint8ClampedArray -> Word -> Word -> IO ImageData

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData Mozilla ImageData documentation> 
newImageData ::
             (MonadIO m, IsUint8ClampedArray data') =>
               Maybe data' -> Word -> Word -> m ImageData
newImageData data' sw sh
  = liftIO
      (js_newImageData (maybeToNullable (fmap toUint8ClampedArray data'))
         sw
         sh)
 
foreign import javascript unsafe
        "new window[\"ImageData\"]($1, $2)" js_newImageData' ::
        Word -> Word -> IO ImageData

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData Mozilla ImageData documentation> 
newImageData' :: (MonadIO m) => Word -> Word -> m ImageData
newImageData' sw sh = liftIO (js_newImageData' sw sh)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        ImageData -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.width Mozilla ImageData.width documentation> 
getWidth :: (MonadIO m) => ImageData -> m Int
getWidth self = liftIO (js_getWidth (self))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        ImageData -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.height Mozilla ImageData.height documentation> 
getHeight :: (MonadIO m) => ImageData -> m Int
getHeight self = liftIO (js_getHeight (self))