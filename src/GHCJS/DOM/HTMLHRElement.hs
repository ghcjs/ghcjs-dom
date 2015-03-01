{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLHRElement
       (js_setAlign, setAlign, js_getAlign, getAlign, js_setNoShade,
        setNoShade, js_getNoShade, getNoShade, js_setSize, setSize,
        js_getSize, getSize, js_setWidth, setWidth, js_getWidth, getWidth,
        HTMLHRElement, castToHTMLHRElement, gTypeHTMLHRElement)
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
        :: JSRef HTMLHRElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.align Mozilla HTMLHRElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLHRElement -> val -> m ()
setAlign self val
  = liftIO (js_setAlign (unHTMLHRElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLHRElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.align Mozilla HTMLHRElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLHRElement -> m result
getAlign self
  = liftIO (fromJSString <$> (js_getAlign (unHTMLHRElement self)))
 
foreign import javascript unsafe "$1[\"noShade\"] = $2;"
        js_setNoShade :: JSRef HTMLHRElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.noShade Mozilla HTMLHRElement.noShade documentation> 
setNoShade :: (MonadIO m) => HTMLHRElement -> Bool -> m ()
setNoShade self val
  = liftIO (js_setNoShade (unHTMLHRElement self) val)
 
foreign import javascript unsafe "($1[\"noShade\"] ? 1 : 0)"
        js_getNoShade :: JSRef HTMLHRElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.noShade Mozilla HTMLHRElement.noShade documentation> 
getNoShade :: (MonadIO m) => HTMLHRElement -> m Bool
getNoShade self = liftIO (js_getNoShade (unHTMLHRElement self))
 
foreign import javascript unsafe "$1[\"size\"] = $2;" js_setSize ::
        JSRef HTMLHRElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.size Mozilla HTMLHRElement.size documentation> 
setSize ::
        (MonadIO m, ToJSString val) => HTMLHRElement -> val -> m ()
setSize self val
  = liftIO (js_setSize (unHTMLHRElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        JSRef HTMLHRElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.size Mozilla HTMLHRElement.size documentation> 
getSize ::
        (MonadIO m, FromJSString result) => HTMLHRElement -> m result
getSize self
  = liftIO (fromJSString <$> (js_getSize (unHTMLHRElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef HTMLHRElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.width Mozilla HTMLHRElement.width documentation> 
setWidth ::
         (MonadIO m, ToJSString val) => HTMLHRElement -> val -> m ()
setWidth self val
  = liftIO (js_setWidth (unHTMLHRElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLHRElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.width Mozilla HTMLHRElement.width documentation> 
getWidth ::
         (MonadIO m, FromJSString result) => HTMLHRElement -> m result
getWidth self
  = liftIO (fromJSString <$> (js_getWidth (unHTMLHRElement self)))
#else
module GHCJS.DOM.HTMLHRElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLHRElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLHRElement
#endif
