{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLUListElement
       (js_setCompact, setCompact, js_getCompact, getCompact,
        HTMLUListElement, castToHTMLUListElement, gTypeHTMLUListElement)
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
        js_setCompact :: JSRef HTMLUListElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement.compact Mozilla HTMLUListElement.compact documentation> 
setCompact :: (MonadIO m) => HTMLUListElement -> Bool -> m ()
setCompact self val
  = liftIO (js_setCompact (unHTMLUListElement self) val)
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        js_getCompact :: JSRef HTMLUListElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLUListElement.compact Mozilla HTMLUListElement.compact documentation> 
getCompact :: (MonadIO m) => HTMLUListElement -> m Bool
getCompact self = liftIO (js_getCompact (unHTMLUListElement self))
#else
module GHCJS.DOM.HTMLUListElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLUListElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLUListElement
#endif
