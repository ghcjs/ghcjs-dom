{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGZoomEvent
       (js_getZoomRectScreen, getZoomRectScreen, js_getPreviousScale,
        getPreviousScale, js_getPreviousTranslate, getPreviousTranslate,
        js_getNewScale, getNewScale, js_getNewTranslate, getNewTranslate,
        SVGZoomEvent(..), gTypeSVGZoomEvent)
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
 
foreign import javascript unsafe "$1[\"zoomRectScreen\"]"
        js_getZoomRectScreen :: SVGZoomEvent -> IO SVGRect

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.zoomRectScreen Mozilla SVGZoomEvent.zoomRectScreen documentation> 
getZoomRectScreen :: (MonadIO m) => SVGZoomEvent -> m SVGRect
getZoomRectScreen self = liftIO (js_getZoomRectScreen self)
 
foreign import javascript unsafe "$1[\"previousScale\"]"
        js_getPreviousScale :: SVGZoomEvent -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.previousScale Mozilla SVGZoomEvent.previousScale documentation> 
getPreviousScale :: (MonadIO m) => SVGZoomEvent -> m Float
getPreviousScale self = liftIO (js_getPreviousScale self)
 
foreign import javascript unsafe "$1[\"previousTranslate\"]"
        js_getPreviousTranslate :: SVGZoomEvent -> IO SVGPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.previousTranslate Mozilla SVGZoomEvent.previousTranslate documentation> 
getPreviousTranslate :: (MonadIO m) => SVGZoomEvent -> m SVGPoint
getPreviousTranslate self = liftIO (js_getPreviousTranslate self)
 
foreign import javascript unsafe "$1[\"newScale\"]" js_getNewScale
        :: SVGZoomEvent -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.newScale Mozilla SVGZoomEvent.newScale documentation> 
getNewScale :: (MonadIO m) => SVGZoomEvent -> m Float
getNewScale self = liftIO (js_getNewScale self)
 
foreign import javascript unsafe "$1[\"newTranslate\"]"
        js_getNewTranslate :: SVGZoomEvent -> IO SVGPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.newTranslate Mozilla SVGZoomEvent.newTranslate documentation> 
getNewTranslate :: (MonadIO m) => SVGZoomEvent -> m SVGPoint
getNewTranslate self = liftIO (js_getNewTranslate self)