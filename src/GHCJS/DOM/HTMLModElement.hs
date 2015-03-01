{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLModElement
       (js_setCite, setCite, js_getCite, getCite, js_setDateTime,
        setDateTime, js_getDateTime, getDateTime, HTMLModElement,
        castToHTMLModElement, gTypeHTMLModElement)
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

 
foreign import javascript unsafe "$1[\"cite\"] = $2;" js_setCite ::
        JSRef HTMLModElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.cite Mozilla HTMLModElement.cite documentation> 
setCite ::
        (MonadIO m, ToJSString val) => HTMLModElement -> val -> m ()
setCite self val
  = liftIO (js_setCite (unHTMLModElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"cite\"]" js_getCite ::
        JSRef HTMLModElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.cite Mozilla HTMLModElement.cite documentation> 
getCite ::
        (MonadIO m, FromJSString result) => HTMLModElement -> m result
getCite self
  = liftIO (fromJSString <$> (js_getCite (unHTMLModElement self)))
 
foreign import javascript unsafe "$1[\"dateTime\"] = $2;"
        js_setDateTime :: JSRef HTMLModElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.dateTime Mozilla HTMLModElement.dateTime documentation> 
setDateTime ::
            (MonadIO m, ToJSString val) => HTMLModElement -> val -> m ()
setDateTime self val
  = liftIO (js_setDateTime (unHTMLModElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"dateTime\"]" js_getDateTime
        :: JSRef HTMLModElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement.dateTime Mozilla HTMLModElement.dateTime documentation> 
getDateTime ::
            (MonadIO m, FromJSString result) => HTMLModElement -> m result
getDateTime self
  = liftIO
      (fromJSString <$> (js_getDateTime (unHTMLModElement self)))
#else
module GHCJS.DOM.HTMLModElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLModElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLModElement
#endif
