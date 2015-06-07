{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGStyleElement
       (js_setDisabled, setDisabled, js_getDisabled, getDisabled,
        js_setMedia, setMedia, js_getMedia, getMedia, js_setTitle,
        setTitle, js_getTitle, getTitle, SVGStyleElement,
        castToSVGStyleElement, gTypeSVGStyleElement)
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
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: JSRef SVGStyleElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.disabled Mozilla SVGStyleElement.disabled documentation> 
setDisabled :: (MonadIO m) => SVGStyleElement -> Bool -> m ()
setDisabled self val
  = liftIO (js_setDisabled (unSVGStyleElement self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: JSRef SVGStyleElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.disabled Mozilla SVGStyleElement.disabled documentation> 
getDisabled :: (MonadIO m) => SVGStyleElement -> m Bool
getDisabled self = liftIO (js_getDisabled (unSVGStyleElement self))
 
foreign import javascript unsafe "$1[\"media\"] = $2;" js_setMedia
        :: JSRef SVGStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.media Mozilla SVGStyleElement.media documentation> 
setMedia ::
         (MonadIO m, ToJSString val) => SVGStyleElement -> val -> m ()
setMedia self val
  = liftIO (js_setMedia (unSVGStyleElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        JSRef SVGStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.media Mozilla SVGStyleElement.media documentation> 
getMedia ::
         (MonadIO m, FromJSString result) => SVGStyleElement -> m result
getMedia self
  = liftIO (fromJSString <$> (js_getMedia (unSVGStyleElement self)))
 
foreign import javascript unsafe "$1[\"title\"] = $2;" js_setTitle
        :: JSRef SVGStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.title Mozilla SVGStyleElement.title documentation> 
setTitle ::
         (MonadIO m, ToJSString val) => SVGStyleElement -> val -> m ()
setTitle self val
  = liftIO (js_setTitle (unSVGStyleElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"title\"]" js_getTitle ::
        JSRef SVGStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.title Mozilla SVGStyleElement.title documentation> 
getTitle ::
         (MonadIO m, FromJSString result) => SVGStyleElement -> m result
getTitle self
  = liftIO (fromJSString <$> (js_getTitle (unSVGStyleElement self)))