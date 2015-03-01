{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLFrameElement
       (js_getSVGDocument, getSVGDocument, js_setFrameBorder,
        setFrameBorder, js_getFrameBorder, getFrameBorder, js_setLongDesc,
        setLongDesc, js_getLongDesc, getLongDesc, js_setMarginHeight,
        setMarginHeight, js_getMarginHeight, getMarginHeight,
        js_setMarginWidth, setMarginWidth, js_getMarginWidth,
        getMarginWidth, js_setName, setName, js_getName, getName,
        js_setNoResize, setNoResize, js_getNoResize, getNoResize,
        js_setScrolling, setScrolling, js_getScrolling, getScrolling,
        js_setSrc, setSrc, js_getSrc, getSrc, js_getContentDocument,
        getContentDocument, js_getContentWindow, getContentWindow,
        js_setLocation, setLocation, js_getLocation, getLocation,
        js_getWidth, getWidth, js_getHeight, getHeight, HTMLFrameElement,
        castToHTMLFrameElement, gTypeHTMLFrameElement)
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

 
foreign import javascript unsafe "$1[\"getSVGDocument\"]()"
        js_getSVGDocument ::
        JSRef HTMLFrameElement -> IO (JSRef SVGDocument)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.getSVGDocument Mozilla HTMLFrameElement.getSVGDocument documentation> 
getSVGDocument ::
               (MonadIO m) => HTMLFrameElement -> m (Maybe SVGDocument)
getSVGDocument self
  = liftIO
      ((js_getSVGDocument (unHTMLFrameElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"frameBorder\"] = $2;"
        js_setFrameBorder :: JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.frameBorder Mozilla HTMLFrameElement.frameBorder documentation> 
setFrameBorder ::
               (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setFrameBorder self val
  = liftIO
      (js_setFrameBorder (unHTMLFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"frameBorder\"]"
        js_getFrameBorder :: JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.frameBorder Mozilla HTMLFrameElement.frameBorder documentation> 
getFrameBorder ::
               (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getFrameBorder self
  = liftIO
      (fromJSString <$> (js_getFrameBorder (unHTMLFrameElement self)))
 
foreign import javascript unsafe "$1[\"longDesc\"] = $2;"
        js_setLongDesc :: JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.longDesc Mozilla HTMLFrameElement.longDesc documentation> 
setLongDesc ::
            (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setLongDesc self val
  = liftIO
      (js_setLongDesc (unHTMLFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"longDesc\"]" js_getLongDesc
        :: JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.longDesc Mozilla HTMLFrameElement.longDesc documentation> 
getLongDesc ::
            (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getLongDesc self
  = liftIO
      (fromJSString <$> (js_getLongDesc (unHTMLFrameElement self)))
 
foreign import javascript unsafe "$1[\"marginHeight\"] = $2;"
        js_setMarginHeight :: JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginHeight Mozilla HTMLFrameElement.marginHeight documentation> 
setMarginHeight ::
                (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setMarginHeight self val
  = liftIO
      (js_setMarginHeight (unHTMLFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"marginHeight\"]"
        js_getMarginHeight :: JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginHeight Mozilla HTMLFrameElement.marginHeight documentation> 
getMarginHeight ::
                (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getMarginHeight self
  = liftIO
      (fromJSString <$> (js_getMarginHeight (unHTMLFrameElement self)))
 
foreign import javascript unsafe "$1[\"marginWidth\"] = $2;"
        js_setMarginWidth :: JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginWidth Mozilla HTMLFrameElement.marginWidth documentation> 
setMarginWidth ::
               (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setMarginWidth self val
  = liftIO
      (js_setMarginWidth (unHTMLFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"marginWidth\"]"
        js_getMarginWidth :: JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginWidth Mozilla HTMLFrameElement.marginWidth documentation> 
getMarginWidth ::
               (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getMarginWidth self
  = liftIO
      (fromJSString <$> (js_getMarginWidth (unHTMLFrameElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.name Mozilla HTMLFrameElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.name Mozilla HTMLFrameElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unHTMLFrameElement self)))
 
foreign import javascript unsafe "$1[\"noResize\"] = $2;"
        js_setNoResize :: JSRef HTMLFrameElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.noResize Mozilla HTMLFrameElement.noResize documentation> 
setNoResize :: (MonadIO m) => HTMLFrameElement -> Bool -> m ()
setNoResize self val
  = liftIO (js_setNoResize (unHTMLFrameElement self) val)
 
foreign import javascript unsafe "($1[\"noResize\"] ? 1 : 0)"
        js_getNoResize :: JSRef HTMLFrameElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.noResize Mozilla HTMLFrameElement.noResize documentation> 
getNoResize :: (MonadIO m) => HTMLFrameElement -> m Bool
getNoResize self
  = liftIO (js_getNoResize (unHTMLFrameElement self))
 
foreign import javascript unsafe "$1[\"scrolling\"] = $2;"
        js_setScrolling :: JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.scrolling Mozilla HTMLFrameElement.scrolling documentation> 
setScrolling ::
             (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setScrolling self val
  = liftIO
      (js_setScrolling (unHTMLFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"scrolling\"]"
        js_getScrolling :: JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.scrolling Mozilla HTMLFrameElement.scrolling documentation> 
getScrolling ::
             (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getScrolling self
  = liftIO
      (fromJSString <$> (js_getScrolling (unHTMLFrameElement self)))
 
foreign import javascript unsafe "$1[\"src\"] = $2;" js_setSrc ::
        JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.src Mozilla HTMLFrameElement.src documentation> 
setSrc ::
       (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setSrc self val
  = liftIO (js_setSrc (unHTMLFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]" js_getSrc ::
        JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.src Mozilla HTMLFrameElement.src documentation> 
getSrc ::
       (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getSrc self
  = liftIO (fromJSString <$> (js_getSrc (unHTMLFrameElement self)))
 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        js_getContentDocument ::
        JSRef HTMLFrameElement -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.contentDocument Mozilla HTMLFrameElement.contentDocument documentation> 
getContentDocument ::
                   (MonadIO m) => HTMLFrameElement -> m (Maybe Document)
getContentDocument self
  = liftIO
      ((js_getContentDocument (unHTMLFrameElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"contentWindow\"]"
        js_getContentWindow ::
        JSRef HTMLFrameElement -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.contentWindow Mozilla HTMLFrameElement.contentWindow documentation> 
getContentWindow ::
                 (MonadIO m) => HTMLFrameElement -> m (Maybe DOMWindow)
getContentWindow self
  = liftIO
      ((js_getContentWindow (unHTMLFrameElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"location\"] = $2;"
        js_setLocation :: JSRef HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.location Mozilla HTMLFrameElement.location documentation> 
setLocation ::
            (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setLocation self val
  = liftIO
      (js_setLocation (unHTMLFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"location\"]" js_getLocation
        :: JSRef HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.location Mozilla HTMLFrameElement.location documentation> 
getLocation ::
            (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getLocation self
  = liftIO
      (fromJSString <$> (js_getLocation (unHTMLFrameElement self)))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLFrameElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.width Mozilla HTMLFrameElement.width documentation> 
getWidth :: (MonadIO m) => HTMLFrameElement -> m Int
getWidth self = liftIO (js_getWidth (unHTMLFrameElement self))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef HTMLFrameElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.height Mozilla HTMLFrameElement.height documentation> 
getHeight :: (MonadIO m) => HTMLFrameElement -> m Int
getHeight self = liftIO (js_getHeight (unHTMLFrameElement self))
#else
module GHCJS.DOM.HTMLFrameElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFrameElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLFrameElement
#endif
