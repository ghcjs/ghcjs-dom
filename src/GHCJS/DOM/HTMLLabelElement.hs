{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLLabelElement
       (js_getForm, getForm, js_setHtmlFor, setHtmlFor, js_getHtmlFor,
        getHtmlFor, js_getControl, getControl, HTMLLabelElement,
        castToHTMLLabelElement, gTypeHTMLLabelElement)
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

 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        JSRef HTMLLabelElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.form Mozilla HTMLLabelElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLLabelElement -> m (Maybe HTMLFormElement)
getForm self
  = liftIO ((js_getForm (unHTMLLabelElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"htmlFor\"] = $2;"
        js_setHtmlFor :: JSRef HTMLLabelElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.htmlFor Mozilla HTMLLabelElement.htmlFor documentation> 
setHtmlFor ::
           (MonadIO m, ToJSString val) => HTMLLabelElement -> val -> m ()
setHtmlFor self val
  = liftIO (js_setHtmlFor (unHTMLLabelElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"htmlFor\"]" js_getHtmlFor ::
        JSRef HTMLLabelElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.htmlFor Mozilla HTMLLabelElement.htmlFor documentation> 
getHtmlFor ::
           (MonadIO m, FromJSString result) => HTMLLabelElement -> m result
getHtmlFor self
  = liftIO
      (fromJSString <$> (js_getHtmlFor (unHTMLLabelElement self)))
 
foreign import javascript unsafe "$1[\"control\"]" js_getControl ::
        JSRef HTMLLabelElement -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLabelElement.control Mozilla HTMLLabelElement.control documentation> 
getControl ::
           (MonadIO m) => HTMLLabelElement -> m (Maybe HTMLElement)
getControl self
  = liftIO ((js_getControl (unHTMLLabelElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.HTMLLabelElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLLabelElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLLabelElement
#endif
