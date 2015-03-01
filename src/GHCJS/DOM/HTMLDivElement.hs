{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLDivElement
       (js_setAlign, setAlign, js_getAlign, getAlign, HTMLDivElement,
        castToHTMLDivElement, gTypeHTMLDivElement)
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

 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef HTMLDivElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement.align Mozilla HTMLDivElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLDivElement -> val -> m ()
setAlign self val
  = liftIO (js_setAlign (unHTMLDivElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLDivElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDivElement.align Mozilla HTMLDivElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLDivElement -> m result
getAlign self
  = liftIO (fromJSString <$> (js_getAlign (unHTMLDivElement self)))
#else
module GHCJS.DOM.HTMLDivElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLDivElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLDivElement
#endif
