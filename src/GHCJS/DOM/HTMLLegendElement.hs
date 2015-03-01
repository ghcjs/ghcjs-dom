{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLLegendElement
       (js_getForm, getForm, js_setAlign, setAlign, js_getAlign, getAlign,
        HTMLLegendElement, castToHTMLLegendElement, gTypeHTMLLegendElement)
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

 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        JSRef HTMLLegendElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.form Mozilla HTMLLegendElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLLegendElement -> m (Maybe HTMLFormElement)
getForm self
  = liftIO ((js_getForm (unHTMLLegendElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef HTMLLegendElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.align Mozilla HTMLLegendElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLLegendElement -> val -> m ()
setAlign self val
  = liftIO (js_setAlign (unHTMLLegendElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLLegendElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.align Mozilla HTMLLegendElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLLegendElement -> m result
getAlign self
  = liftIO
      (fromJSString <$> (js_getAlign (unHTMLLegendElement self)))
#else
module GHCJS.DOM.HTMLLegendElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLLegendElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLLegendElement
#endif
