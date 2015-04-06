{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLBRElement
       (js_setClear, setClear, js_getClear, getClear, HTMLBRElement,
        castToHTMLBRElement, gTypeHTMLBRElement)
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

 
foreign import javascript unsafe "$1[\"clear\"] = $2;" js_setClear
        :: JSRef HTMLBRElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement.clear Mozilla HTMLBRElement.clear documentation> 
setClear ::
         (MonadIO m, ToJSString val) => HTMLBRElement -> val -> m ()
setClear self val
  = liftIO (js_setClear (unHTMLBRElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"clear\"]" js_getClear ::
        JSRef HTMLBRElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement.clear Mozilla HTMLBRElement.clear documentation> 
getClear ::
         (MonadIO m, FromJSString result) => HTMLBRElement -> m result
getClear self
  = liftIO (fromJSString <$> (js_getClear (unHTMLBRElement self)))
#else
module GHCJS.DOM.HTMLBRElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBRElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLBRElement
#endif
