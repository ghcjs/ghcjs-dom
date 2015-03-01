{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLCanvasElement
       (js_toDataURL, toDataURL, js_getContext, getContext,
        js_probablySupportsContext, probablySupportsContext, js_setWidth,
        setWidth, js_getWidth, getWidth, js_setHeight, setHeight,
        js_getHeight, getHeight, HTMLCanvasElement,
        castToHTMLCanvasElement, gTypeHTMLCanvasElement)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"toDataURL\"]($2)"
        js_toDataURL :: JSRef HTMLCanvasElement -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.toDataURL Mozilla HTMLCanvasElement.toDataURL documentation> 
toDataURL ::
          (MonadIO m, ToJSString type', FromJSString result) =>
            HTMLCanvasElement -> type' -> m result
toDataURL self type'
  = liftIO
      (fromJSString <$>
         (js_toDataURL (unHTMLCanvasElement self) (toJSString type')))
 
foreign import javascript unsafe "$1[\"getContext\"]($2)"
        js_getContext ::
        JSRef HTMLCanvasElement -> JSString -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.getContext Mozilla HTMLCanvasElement.getContext documentation> 
getContext ::
           (MonadIO m, ToJSString contextId) =>
             HTMLCanvasElement -> contextId -> m (JSRef a)
getContext self contextId
  = liftIO
      (js_getContext (unHTMLCanvasElement self) (toJSString contextId))
 
foreign import javascript unsafe
        "$1[\"probablySupportsContext\"]($2)" js_probablySupportsContext ::
        JSRef HTMLCanvasElement -> JSString -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.probablySupportsContext Mozilla HTMLCanvasElement.probablySupportsContext documentation> 
probablySupportsContext ::
                        (MonadIO m, ToJSString contextId) =>
                          HTMLCanvasElement -> contextId -> m (JSRef a)
probablySupportsContext self contextId
  = liftIO
      (js_probablySupportsContext (unHTMLCanvasElement self)
         (toJSString contextId))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef HTMLCanvasElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.width Mozilla HTMLCanvasElement.width documentation> 
setWidth :: (MonadIO m) => HTMLCanvasElement -> Int -> m ()
setWidth self val
  = liftIO (js_setWidth (unHTMLCanvasElement self) val)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLCanvasElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.width Mozilla HTMLCanvasElement.width documentation> 
getWidth :: (MonadIO m) => HTMLCanvasElement -> m Int
getWidth self = liftIO (js_getWidth (unHTMLCanvasElement self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: JSRef HTMLCanvasElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.height Mozilla HTMLCanvasElement.height documentation> 
setHeight :: (MonadIO m) => HTMLCanvasElement -> Int -> m ()
setHeight self val
  = liftIO (js_setHeight (unHTMLCanvasElement self) val)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef HTMLCanvasElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement.height Mozilla HTMLCanvasElement.height documentation> 
getHeight :: (MonadIO m) => HTMLCanvasElement -> m Int
getHeight self = liftIO (js_getHeight (unHTMLCanvasElement self))
#else
module GHCJS.DOM.HTMLCanvasElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLCanvasElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLCanvasElement
#endif
