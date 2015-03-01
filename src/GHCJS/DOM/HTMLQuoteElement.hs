{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLQuoteElement
       (js_setCite, setCite, js_getCite, getCite, HTMLQuoteElement,
        castToHTMLQuoteElement, gTypeHTMLQuoteElement)
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
        JSRef HTMLQuoteElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLQuoteElement.cite Mozilla HTMLQuoteElement.cite documentation> 
setCite ::
        (MonadIO m, ToJSString val) => HTMLQuoteElement -> val -> m ()
setCite self val
  = liftIO (js_setCite (unHTMLQuoteElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"cite\"]" js_getCite ::
        JSRef HTMLQuoteElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLQuoteElement.cite Mozilla HTMLQuoteElement.cite documentation> 
getCite ::
        (MonadIO m, FromJSString result) => HTMLQuoteElement -> m result
getCite self
  = liftIO (fromJSString <$> (js_getCite (unHTMLQuoteElement self)))
#else
module GHCJS.DOM.HTMLQuoteElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLQuoteElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLQuoteElement
#endif
