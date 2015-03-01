{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.BarProp
       (js_getVisible, getVisible, BarProp, castToBarProp, gTypeBarProp)
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

 
foreign import javascript unsafe "($1[\"visible\"] ? 1 : 0)"
        js_getVisible :: JSRef BarProp -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BarProp.visible Mozilla BarProp.visible documentation> 
getVisible :: (MonadIO m) => BarProp -> m Bool
getVisible self = liftIO (js_getVisible (unBarProp self))
#else
module GHCJS.DOM.BarProp (
  module Graphics.UI.Gtk.WebKit.DOM.BarProp
  ) where
import Graphics.UI.Gtk.WebKit.DOM.BarProp
#endif
