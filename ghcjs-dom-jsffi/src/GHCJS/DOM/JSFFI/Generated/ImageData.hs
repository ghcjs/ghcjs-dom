{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ImageData
       (js_newImageData, newImageData, js_newImageData', newImageData',
        js_getWidth, getWidth, js_getHeight, getHeight, js_getData,
        getData, ImageData(..), gTypeImageData)
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
 
foreign import javascript safe
        "new window[\"ImageData\"]($1, $2,\n$3)" js_newImageData ::
        Uint8ClampedArray -> Word -> Optional Word -> IO ImageData

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData Mozilla ImageData documentation> 
newImageData ::
             (MonadIO m, IsUint8ClampedArray data') =>
               data' -> Word -> Maybe Word -> m ImageData
newImageData data' sw sh
  = liftIO
      (js_newImageData (toUint8ClampedArray data') sw
         (maybeToOptional sh))
 
foreign import javascript safe "new window[\"ImageData\"]($1, $2)"
        js_newImageData' :: Word -> Word -> IO ImageData

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData Mozilla ImageData documentation> 
newImageData' :: (MonadIO m) => Word -> Word -> m ImageData
newImageData' sw sh = liftIO (js_newImageData' sw sh)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        ImageData -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.width Mozilla ImageData.width documentation> 
getWidth :: (MonadIO m) => ImageData -> m Word
getWidth self = liftIO (js_getWidth self)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        ImageData -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.height Mozilla ImageData.height documentation> 
getHeight :: (MonadIO m) => ImageData -> m Word
getHeight self = liftIO (js_getHeight self)
 
foreign import javascript unsafe "$1[\"data\"]" js_getData ::
        ImageData -> IO Uint8ClampedArray

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ImageData.data Mozilla ImageData.data documentation> 
getData :: (MonadIO m) => ImageData -> m Uint8ClampedArray
getData self = liftIO (js_getData self)