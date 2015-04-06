{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGZoomEvent
       (js_getZoomRectScreen, getZoomRectScreen, js_getPreviousScale,
        getPreviousScale, js_getPreviousTranslate, getPreviousTranslate,
        js_getNewScale, getNewScale, js_getNewTranslate, getNewTranslate,
        SVGZoomEvent, castToSVGZoomEvent, gTypeSVGZoomEvent)
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

 
foreign import javascript unsafe "$1[\"zoomRectScreen\"]"
        js_getZoomRectScreen :: JSRef SVGZoomEvent -> IO (JSRef SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.zoomRectScreen Mozilla SVGZoomEvent.zoomRectScreen documentation> 
getZoomRectScreen ::
                  (MonadIO m) => SVGZoomEvent -> m (Maybe SVGRect)
getZoomRectScreen self
  = liftIO
      ((js_getZoomRectScreen (unSVGZoomEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"previousScale\"]"
        js_getPreviousScale :: JSRef SVGZoomEvent -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.previousScale Mozilla SVGZoomEvent.previousScale documentation> 
getPreviousScale :: (MonadIO m) => SVGZoomEvent -> m Float
getPreviousScale self
  = liftIO (js_getPreviousScale (unSVGZoomEvent self))
 
foreign import javascript unsafe "$1[\"previousTranslate\"]"
        js_getPreviousTranslate ::
        JSRef SVGZoomEvent -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.previousTranslate Mozilla SVGZoomEvent.previousTranslate documentation> 
getPreviousTranslate ::
                     (MonadIO m) => SVGZoomEvent -> m (Maybe SVGPoint)
getPreviousTranslate self
  = liftIO
      ((js_getPreviousTranslate (unSVGZoomEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"newScale\"]" js_getNewScale
        :: JSRef SVGZoomEvent -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.newScale Mozilla SVGZoomEvent.newScale documentation> 
getNewScale :: (MonadIO m) => SVGZoomEvent -> m Float
getNewScale self = liftIO (js_getNewScale (unSVGZoomEvent self))
 
foreign import javascript unsafe "$1[\"newTranslate\"]"
        js_getNewTranslate :: JSRef SVGZoomEvent -> IO (JSRef SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.newTranslate Mozilla SVGZoomEvent.newTranslate documentation> 
getNewTranslate ::
                (MonadIO m) => SVGZoomEvent -> m (Maybe SVGPoint)
getNewTranslate self
  = liftIO ((js_getNewTranslate (unSVGZoomEvent self)) >>= fromJSRef)
#else
module GHCJS.DOM.SVGZoomEvent (
  ) where
#endif
