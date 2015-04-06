{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLOptGroupElement
       (js_setDisabled, setDisabled, js_getDisabled, getDisabled,
        js_setLabel, setLabel, js_getLabel, getLabel, HTMLOptGroupElement,
        castToHTMLOptGroupElement, gTypeHTMLOptGroupElement)
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

 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: JSRef HTMLOptGroupElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement.disabled Mozilla HTMLOptGroupElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLOptGroupElement -> Bool -> m ()
setDisabled self val
  = liftIO (js_setDisabled (unHTMLOptGroupElement self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: JSRef HTMLOptGroupElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement.disabled Mozilla HTMLOptGroupElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLOptGroupElement -> m Bool
getDisabled self
  = liftIO (js_getDisabled (unHTMLOptGroupElement self))
 
foreign import javascript unsafe "$1[\"label\"] = $2;" js_setLabel
        :: JSRef HTMLOptGroupElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement.label Mozilla HTMLOptGroupElement.label documentation> 
setLabel ::
         (MonadIO m, ToJSString val) => HTMLOptGroupElement -> val -> m ()
setLabel self val
  = liftIO
      (js_setLabel (unHTMLOptGroupElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        JSRef HTMLOptGroupElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement.label Mozilla HTMLOptGroupElement.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => HTMLOptGroupElement -> m result
getLabel self
  = liftIO
      (fromJSString <$> (js_getLabel (unHTMLOptGroupElement self)))
#else
module GHCJS.DOM.HTMLOptGroupElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOptGroupElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLOptGroupElement
#endif
