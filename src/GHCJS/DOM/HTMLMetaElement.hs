{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLMetaElement
       (js_setContent, setContent, js_getContent, getContent,
        js_setHttpEquiv, setHttpEquiv, js_getHttpEquiv, getHttpEquiv,
        js_setName, setName, js_getName, getName, js_setScheme, setScheme,
        js_getScheme, getScheme, HTMLMetaElement, castToHTMLMetaElement,
        gTypeHTMLMetaElement)
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

 
foreign import javascript unsafe "$1[\"content\"] = $2;"
        js_setContent :: JSRef HTMLMetaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.content Mozilla HTMLMetaElement.content documentation> 
setContent ::
           (MonadIO m, ToJSString val) => HTMLMetaElement -> val -> m ()
setContent self val
  = liftIO (js_setContent (unHTMLMetaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"content\"]" js_getContent ::
        JSRef HTMLMetaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.content Mozilla HTMLMetaElement.content documentation> 
getContent ::
           (MonadIO m, FromJSString result) => HTMLMetaElement -> m result
getContent self
  = liftIO
      (fromJSString <$> (js_getContent (unHTMLMetaElement self)))
 
foreign import javascript unsafe "$1[\"httpEquiv\"] = $2;"
        js_setHttpEquiv :: JSRef HTMLMetaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.httpEquiv Mozilla HTMLMetaElement.httpEquiv documentation> 
setHttpEquiv ::
             (MonadIO m, ToJSString val) => HTMLMetaElement -> val -> m ()
setHttpEquiv self val
  = liftIO
      (js_setHttpEquiv (unHTMLMetaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"httpEquiv\"]"
        js_getHttpEquiv :: JSRef HTMLMetaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.httpEquiv Mozilla HTMLMetaElement.httpEquiv documentation> 
getHttpEquiv ::
             (MonadIO m, FromJSString result) => HTMLMetaElement -> m result
getHttpEquiv self
  = liftIO
      (fromJSString <$> (js_getHttpEquiv (unHTMLMetaElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef HTMLMetaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.name Mozilla HTMLMetaElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLMetaElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLMetaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLMetaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.name Mozilla HTMLMetaElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLMetaElement -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unHTMLMetaElement self)))
 
foreign import javascript unsafe "$1[\"scheme\"] = $2;"
        js_setScheme :: JSRef HTMLMetaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.scheme Mozilla HTMLMetaElement.scheme documentation> 
setScheme ::
          (MonadIO m, ToJSString val) => HTMLMetaElement -> val -> m ()
setScheme self val
  = liftIO (js_setScheme (unHTMLMetaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"scheme\"]" js_getScheme ::
        JSRef HTMLMetaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMetaElement.scheme Mozilla HTMLMetaElement.scheme documentation> 
getScheme ::
          (MonadIO m, FromJSString result) => HTMLMetaElement -> m result
getScheme self
  = liftIO (fromJSString <$> (js_getScheme (unHTMLMetaElement self)))
#else
module GHCJS.DOM.HTMLMetaElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMetaElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLMetaElement
#endif
