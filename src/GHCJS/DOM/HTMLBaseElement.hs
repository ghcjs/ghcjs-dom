{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLBaseElement
       (js_setHref, setHref, js_getHref, getHref, js_setTarget, setTarget,
        js_getTarget, getTarget, HTMLBaseElement, castToHTMLBaseElement,
        gTypeHTMLBaseElement)
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

 
foreign import javascript unsafe "$1[\"href\"] = $2;" js_setHref ::
        JSRef HTMLBaseElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.href Mozilla HTMLBaseElement.href documentation> 
setHref ::
        (MonadIO m, ToJSString val) => HTMLBaseElement -> val -> m ()
setHref self val
  = liftIO (js_setHref (unHTMLBaseElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        JSRef HTMLBaseElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.href Mozilla HTMLBaseElement.href documentation> 
getHref ::
        (MonadIO m, FromJSString result) => HTMLBaseElement -> m result
getHref self
  = liftIO (fromJSString <$> (js_getHref (unHTMLBaseElement self)))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        js_setTarget :: JSRef HTMLBaseElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.target Mozilla HTMLBaseElement.target documentation> 
setTarget ::
          (MonadIO m, ToJSString val) => HTMLBaseElement -> val -> m ()
setTarget self val
  = liftIO (js_setTarget (unHTMLBaseElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        JSRef HTMLBaseElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseElement.target Mozilla HTMLBaseElement.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) => HTMLBaseElement -> m result
getTarget self
  = liftIO (fromJSString <$> (js_getTarget (unHTMLBaseElement self)))
#else
module GHCJS.DOM.HTMLBaseElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBaseElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLBaseElement
#endif
