{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLPreElement
       (js_setWidth, setWidth, js_getWidth, getWidth, js_setWrap, setWrap,
        js_getWrap, getWrap, HTMLPreElement, castToHTMLPreElement,
        gTypeHTMLPreElement)
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

 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef HTMLPreElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.width Mozilla HTMLPreElement.width documentation> 
setWidth :: (MonadIO m) => HTMLPreElement -> Int -> m ()
setWidth self val
  = liftIO (js_setWidth (unHTMLPreElement self) val)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLPreElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.width Mozilla HTMLPreElement.width documentation> 
getWidth :: (MonadIO m) => HTMLPreElement -> m Int
getWidth self = liftIO (js_getWidth (unHTMLPreElement self))
 
foreign import javascript unsafe "$1[\"wrap\"] = $2;" js_setWrap ::
        JSRef HTMLPreElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.wrap Mozilla HTMLPreElement.wrap documentation> 
setWrap :: (MonadIO m) => HTMLPreElement -> Bool -> m ()
setWrap self val = liftIO (js_setWrap (unHTMLPreElement self) val)
 
foreign import javascript unsafe "($1[\"wrap\"] ? 1 : 0)"
        js_getWrap :: JSRef HTMLPreElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.wrap Mozilla HTMLPreElement.wrap documentation> 
getWrap :: (MonadIO m) => HTMLPreElement -> m Bool
getWrap self = liftIO (js_getWrap (unHTMLPreElement self))
#else
module GHCJS.DOM.HTMLPreElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLPreElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLPreElement
#endif
