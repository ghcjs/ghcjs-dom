{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.ClientRect
       (js_getTop, getTop, js_getRight, getRight, js_getBottom, getBottom,
        js_getLeft, getLeft, js_getWidth, getWidth, js_getHeight,
        getHeight, ClientRect, castToClientRect, gTypeClientRect)
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
 
foreign import javascript unsafe "$1[\"top\"]" js_getTop ::
        JSRef ClientRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.top Mozilla ClientRect.top documentation> 
getTop :: (MonadIO m) => ClientRect -> m Float
getTop self = liftIO (js_getTop (unClientRect self))
 
foreign import javascript unsafe "$1[\"right\"]" js_getRight ::
        JSRef ClientRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.right Mozilla ClientRect.right documentation> 
getRight :: (MonadIO m) => ClientRect -> m Float
getRight self = liftIO (js_getRight (unClientRect self))
 
foreign import javascript unsafe "$1[\"bottom\"]" js_getBottom ::
        JSRef ClientRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.bottom Mozilla ClientRect.bottom documentation> 
getBottom :: (MonadIO m) => ClientRect -> m Float
getBottom self = liftIO (js_getBottom (unClientRect self))
 
foreign import javascript unsafe "$1[\"left\"]" js_getLeft ::
        JSRef ClientRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.left Mozilla ClientRect.left documentation> 
getLeft :: (MonadIO m) => ClientRect -> m Float
getLeft self = liftIO (js_getLeft (unClientRect self))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef ClientRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.width Mozilla ClientRect.width documentation> 
getWidth :: (MonadIO m) => ClientRect -> m Float
getWidth self = liftIO (js_getWidth (unClientRect self))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef ClientRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ClientRect.height Mozilla ClientRect.height documentation> 
getHeight :: (MonadIO m) => ClientRect -> m Float
getHeight self = liftIO (js_getHeight (unClientRect self))