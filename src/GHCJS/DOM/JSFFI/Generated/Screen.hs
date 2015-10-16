{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Screen
       (js_getHeight, getHeight, js_getWidth, getWidth, js_getColorDepth,
        getColorDepth, js_getPixelDepth, getPixelDepth, js_getAvailLeft,
        getAvailLeft, js_getAvailTop, getAvailTop, js_getAvailHeight,
        getAvailHeight, js_getAvailWidth, getAvailWidth, Screen,
        castToScreen, gTypeScreen)
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
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        Screen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.height Mozilla Screen.height documentation> 
getHeight :: (MonadIO m) => Screen -> m Word
getHeight self = liftIO (js_getHeight (self))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        Screen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.width Mozilla Screen.width documentation> 
getWidth :: (MonadIO m) => Screen -> m Word
getWidth self = liftIO (js_getWidth (self))
 
foreign import javascript unsafe "$1[\"colorDepth\"]"
        js_getColorDepth :: Screen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.colorDepth Mozilla Screen.colorDepth documentation> 
getColorDepth :: (MonadIO m) => Screen -> m Word
getColorDepth self = liftIO (js_getColorDepth (self))
 
foreign import javascript unsafe "$1[\"pixelDepth\"]"
        js_getPixelDepth :: Screen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.pixelDepth Mozilla Screen.pixelDepth documentation> 
getPixelDepth :: (MonadIO m) => Screen -> m Word
getPixelDepth self = liftIO (js_getPixelDepth (self))
 
foreign import javascript unsafe "$1[\"availLeft\"]"
        js_getAvailLeft :: Screen -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availLeft Mozilla Screen.availLeft documentation> 
getAvailLeft :: (MonadIO m) => Screen -> m Int
getAvailLeft self = liftIO (js_getAvailLeft (self))
 
foreign import javascript unsafe "$1[\"availTop\"]" js_getAvailTop
        :: Screen -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availTop Mozilla Screen.availTop documentation> 
getAvailTop :: (MonadIO m) => Screen -> m Int
getAvailTop self = liftIO (js_getAvailTop (self))
 
foreign import javascript unsafe "$1[\"availHeight\"]"
        js_getAvailHeight :: Screen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availHeight Mozilla Screen.availHeight documentation> 
getAvailHeight :: (MonadIO m) => Screen -> m Word
getAvailHeight self = liftIO (js_getAvailHeight (self))
 
foreign import javascript unsafe "$1[\"availWidth\"]"
        js_getAvailWidth :: Screen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availWidth Mozilla Screen.availWidth documentation> 
getAvailWidth :: (MonadIO m) => Screen -> m Word
getAvailWidth self = liftIO (js_getAvailWidth (self))