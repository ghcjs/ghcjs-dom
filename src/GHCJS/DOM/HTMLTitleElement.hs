{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTitleElement
       (js_setText, setText, js_getText, getText, HTMLTitleElement,
        castToHTMLTitleElement, gTypeHTMLTitleElement)
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

 
foreign import javascript unsafe "$1[\"text\"] = $2;" js_setText ::
        JSRef HTMLTitleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement.text Mozilla HTMLTitleElement.text documentation> 
setText ::
        (MonadIO m, ToJSString val) => HTMLTitleElement -> val -> m ()
setText self val
  = liftIO (js_setText (unHTMLTitleElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        JSRef HTMLTitleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTitleElement.text Mozilla HTMLTitleElement.text documentation> 
getText ::
        (MonadIO m, FromJSString result) => HTMLTitleElement -> m result
getText self
  = liftIO (fromJSString <$> (js_getText (unHTMLTitleElement self)))
#else
module GHCJS.DOM.HTMLTitleElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTitleElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTitleElement
#endif
