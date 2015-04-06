{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLOptionElement
       (js_setDisabled, setDisabled, js_getDisabled, getDisabled,
        js_getForm, getForm, js_setLabel, setLabel, js_getLabel, getLabel,
        js_setDefaultSelected, setDefaultSelected, js_getDefaultSelected,
        getDefaultSelected, js_setSelected, setSelected, js_getSelected,
        getSelected, js_setValue, setValue, js_getValue, getValue,
        js_getText, getText, js_getIndex, getIndex, HTMLOptionElement,
        castToHTMLOptionElement, gTypeHTMLOptionElement)
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
        js_setDisabled :: JSRef HTMLOptionElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.disabled Mozilla HTMLOptionElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLOptionElement -> Bool -> m ()
setDisabled self val
  = liftIO (js_setDisabled (unHTMLOptionElement self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: JSRef HTMLOptionElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.disabled Mozilla HTMLOptionElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLOptionElement -> m Bool
getDisabled self
  = liftIO (js_getDisabled (unHTMLOptionElement self))
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        JSRef HTMLOptionElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.form Mozilla HTMLOptionElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLOptionElement -> m (Maybe HTMLFormElement)
getForm self
  = liftIO ((js_getForm (unHTMLOptionElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"label\"] = $2;" js_setLabel
        :: JSRef HTMLOptionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.label Mozilla HTMLOptionElement.label documentation> 
setLabel ::
         (MonadIO m, ToJSString val) => HTMLOptionElement -> val -> m ()
setLabel self val
  = liftIO (js_setLabel (unHTMLOptionElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        JSRef HTMLOptionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.label Mozilla HTMLOptionElement.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => HTMLOptionElement -> m result
getLabel self
  = liftIO
      (fromJSString <$> (js_getLabel (unHTMLOptionElement self)))
 
foreign import javascript unsafe "$1[\"defaultSelected\"] = $2;"
        js_setDefaultSelected :: JSRef HTMLOptionElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.defaultSelected Mozilla HTMLOptionElement.defaultSelected documentation> 
setDefaultSelected ::
                   (MonadIO m) => HTMLOptionElement -> Bool -> m ()
setDefaultSelected self val
  = liftIO (js_setDefaultSelected (unHTMLOptionElement self) val)
 
foreign import javascript unsafe
        "($1[\"defaultSelected\"] ? 1 : 0)" js_getDefaultSelected ::
        JSRef HTMLOptionElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.defaultSelected Mozilla HTMLOptionElement.defaultSelected documentation> 
getDefaultSelected :: (MonadIO m) => HTMLOptionElement -> m Bool
getDefaultSelected self
  = liftIO (js_getDefaultSelected (unHTMLOptionElement self))
 
foreign import javascript unsafe "$1[\"selected\"] = $2;"
        js_setSelected :: JSRef HTMLOptionElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.selected Mozilla HTMLOptionElement.selected documentation> 
setSelected :: (MonadIO m) => HTMLOptionElement -> Bool -> m ()
setSelected self val
  = liftIO (js_setSelected (unHTMLOptionElement self) val)
 
foreign import javascript unsafe "($1[\"selected\"] ? 1 : 0)"
        js_getSelected :: JSRef HTMLOptionElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.selected Mozilla HTMLOptionElement.selected documentation> 
getSelected :: (MonadIO m) => HTMLOptionElement -> m Bool
getSelected self
  = liftIO (js_getSelected (unHTMLOptionElement self))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef HTMLOptionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.value Mozilla HTMLOptionElement.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => HTMLOptionElement -> val -> m ()
setValue self val
  = liftIO (js_setValue (unHTMLOptionElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef HTMLOptionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.value Mozilla HTMLOptionElement.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => HTMLOptionElement -> m result
getValue self
  = liftIO
      (fromJSString <$> (js_getValue (unHTMLOptionElement self)))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        JSRef HTMLOptionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.text Mozilla HTMLOptionElement.text documentation> 
getText ::
        (MonadIO m, FromJSString result) => HTMLOptionElement -> m result
getText self
  = liftIO (fromJSString <$> (js_getText (unHTMLOptionElement self)))
 
foreign import javascript unsafe "$1[\"index\"]" js_getIndex ::
        JSRef HTMLOptionElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionElement.index Mozilla HTMLOptionElement.index documentation> 
getIndex :: (MonadIO m) => HTMLOptionElement -> m Int
getIndex self = liftIO (js_getIndex (unHTMLOptionElement self))
#else
module GHCJS.DOM.HTMLOptionElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOptionElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLOptionElement
#endif
