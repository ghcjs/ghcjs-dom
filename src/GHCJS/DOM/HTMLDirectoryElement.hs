{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLDirectoryElement
       (js_setCompact, setCompact, js_getCompact, getCompact,
        HTMLDirectoryElement, castToHTMLDirectoryElement,
        gTypeHTMLDirectoryElement)
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

 
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        js_setCompact :: JSRef HTMLDirectoryElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement.compact Mozilla HTMLDirectoryElement.compact documentation> 
setCompact :: (MonadIO m) => HTMLDirectoryElement -> Bool -> m ()
setCompact self val
  = liftIO (js_setCompact (unHTMLDirectoryElement self) val)
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        js_getCompact :: JSRef HTMLDirectoryElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDirectoryElement.compact Mozilla HTMLDirectoryElement.compact documentation> 
getCompact :: (MonadIO m) => HTMLDirectoryElement -> m Bool
getCompact self
  = liftIO (js_getCompact (unHTMLDirectoryElement self))
#else
module GHCJS.DOM.HTMLDirectoryElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLDirectoryElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLDirectoryElement
#endif
