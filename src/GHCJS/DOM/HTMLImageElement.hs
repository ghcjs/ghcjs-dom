{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLImageElement
       (js_setName, setName, js_getName, getName, js_setAlign, setAlign,
        js_getAlign, getAlign, js_setAlt, setAlt, js_getAlt, getAlt,
        js_setBorder, setBorder, js_getBorder, getBorder,
        js_setCrossOrigin, setCrossOrigin, js_getCrossOrigin,
        getCrossOrigin, js_setHeight, setHeight, js_getHeight, getHeight,
        js_setHspace, setHspace, js_getHspace, getHspace, js_setIsMap,
        setIsMap, js_getIsMap, getIsMap, js_setLongDesc, setLongDesc,
        js_getLongDesc, getLongDesc, js_setSrc, setSrc, js_getSrc, getSrc,
        js_setSrcset, setSrcset, js_getSrcset, getSrcset, js_setSizes,
        setSizes, js_getSizes, getSizes, js_getCurrentSrc, getCurrentSrc,
        js_setUseMap, setUseMap, js_getUseMap, getUseMap, js_setVspace,
        setVspace, js_getVspace, getVspace, js_setWidth, setWidth,
        js_getWidth, getWidth, js_getComplete, getComplete, js_setLowsrc,
        setLowsrc, js_getLowsrc, getLowsrc, js_getNaturalHeight,
        getNaturalHeight, js_getNaturalWidth, getNaturalWidth, js_getX,
        getX, js_getY, getY, HTMLImageElement, castToHTMLImageElement,
        gTypeHTMLImageElement)
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

 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.name Mozilla HTMLImageElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLImageElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLImageElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.name Mozilla HTMLImageElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLImageElement -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.align Mozilla HTMLImageElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLImageElement -> val -> m ()
setAlign self val
  = liftIO (js_setAlign (unHTMLImageElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.align Mozilla HTMLImageElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLImageElement -> m result
getAlign self
  = liftIO (fromJSString <$> (js_getAlign (unHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"alt\"] = $2;" js_setAlt ::
        JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.alt Mozilla HTMLImageElement.alt documentation> 
setAlt ::
       (MonadIO m, ToJSString val) => HTMLImageElement -> val -> m ()
setAlt self val
  = liftIO (js_setAlt (unHTMLImageElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"alt\"]" js_getAlt ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.alt Mozilla HTMLImageElement.alt documentation> 
getAlt ::
       (MonadIO m, FromJSString result) => HTMLImageElement -> m result
getAlt self
  = liftIO (fromJSString <$> (js_getAlt (unHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"border\"] = $2;"
        js_setBorder :: JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.border Mozilla HTMLImageElement.border documentation> 
setBorder ::
          (MonadIO m, ToJSString val) => HTMLImageElement -> val -> m ()
setBorder self val
  = liftIO (js_setBorder (unHTMLImageElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"border\"]" js_getBorder ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.border Mozilla HTMLImageElement.border documentation> 
getBorder ::
          (MonadIO m, FromJSString result) => HTMLImageElement -> m result
getBorder self
  = liftIO
      (fromJSString <$> (js_getBorder (unHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"crossOrigin\"] = $2;"
        js_setCrossOrigin :: JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.crossOrigin Mozilla HTMLImageElement.crossOrigin documentation> 
setCrossOrigin ::
               (MonadIO m, ToJSString val) => HTMLImageElement -> val -> m ()
setCrossOrigin self val
  = liftIO
      (js_setCrossOrigin (unHTMLImageElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"crossOrigin\"]"
        js_getCrossOrigin :: JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.crossOrigin Mozilla HTMLImageElement.crossOrigin documentation> 
getCrossOrigin ::
               (MonadIO m, FromJSString result) => HTMLImageElement -> m result
getCrossOrigin self
  = liftIO
      (fromJSString <$> (js_getCrossOrigin (unHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: JSRef HTMLImageElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.height Mozilla HTMLImageElement.height documentation> 
setHeight :: (MonadIO m) => HTMLImageElement -> Int -> m ()
setHeight self val
  = liftIO (js_setHeight (unHTMLImageElement self) val)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.height Mozilla HTMLImageElement.height documentation> 
getHeight :: (MonadIO m) => HTMLImageElement -> m Int
getHeight self = liftIO (js_getHeight (unHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        js_setHspace :: JSRef HTMLImageElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.hspace Mozilla HTMLImageElement.hspace documentation> 
setHspace :: (MonadIO m) => HTMLImageElement -> Int -> m ()
setHspace self val
  = liftIO (js_setHspace (unHTMLImageElement self) val)
 
foreign import javascript unsafe "$1[\"hspace\"]" js_getHspace ::
        JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.hspace Mozilla HTMLImageElement.hspace documentation> 
getHspace :: (MonadIO m) => HTMLImageElement -> m Int
getHspace self = liftIO (js_getHspace (unHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"isMap\"] = $2;" js_setIsMap
        :: JSRef HTMLImageElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.isMap Mozilla HTMLImageElement.isMap documentation> 
setIsMap :: (MonadIO m) => HTMLImageElement -> Bool -> m ()
setIsMap self val
  = liftIO (js_setIsMap (unHTMLImageElement self) val)
 
foreign import javascript unsafe "($1[\"isMap\"] ? 1 : 0)"
        js_getIsMap :: JSRef HTMLImageElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.isMap Mozilla HTMLImageElement.isMap documentation> 
getIsMap :: (MonadIO m) => HTMLImageElement -> m Bool
getIsMap self = liftIO (js_getIsMap (unHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"longDesc\"] = $2;"
        js_setLongDesc :: JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.longDesc Mozilla HTMLImageElement.longDesc documentation> 
setLongDesc ::
            (MonadIO m, ToJSString val) => HTMLImageElement -> val -> m ()
setLongDesc self val
  = liftIO
      (js_setLongDesc (unHTMLImageElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"longDesc\"]" js_getLongDesc
        :: JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.longDesc Mozilla HTMLImageElement.longDesc documentation> 
getLongDesc ::
            (MonadIO m, FromJSString result) => HTMLImageElement -> m result
getLongDesc self
  = liftIO
      (fromJSString <$> (js_getLongDesc (unHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"src\"] = $2;" js_setSrc ::
        JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.src Mozilla HTMLImageElement.src documentation> 
setSrc ::
       (MonadIO m, ToJSString val) => HTMLImageElement -> val -> m ()
setSrc self val
  = liftIO (js_setSrc (unHTMLImageElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]" js_getSrc ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.src Mozilla HTMLImageElement.src documentation> 
getSrc ::
       (MonadIO m, FromJSString result) => HTMLImageElement -> m result
getSrc self
  = liftIO (fromJSString <$> (js_getSrc (unHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"srcset\"] = $2;"
        js_setSrcset :: JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.srcset Mozilla HTMLImageElement.srcset documentation> 
setSrcset ::
          (MonadIO m, ToJSString val) => HTMLImageElement -> val -> m ()
setSrcset self val
  = liftIO (js_setSrcset (unHTMLImageElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"srcset\"]" js_getSrcset ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.srcset Mozilla HTMLImageElement.srcset documentation> 
getSrcset ::
          (MonadIO m, FromJSString result) => HTMLImageElement -> m result
getSrcset self
  = liftIO
      (fromJSString <$> (js_getSrcset (unHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"sizes\"] = $2;" js_setSizes
        :: JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.sizes Mozilla HTMLImageElement.sizes documentation> 
setSizes ::
         (MonadIO m, ToJSString val) => HTMLImageElement -> val -> m ()
setSizes self val
  = liftIO (js_setSizes (unHTMLImageElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"sizes\"]" js_getSizes ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.sizes Mozilla HTMLImageElement.sizes documentation> 
getSizes ::
         (MonadIO m, FromJSString result) => HTMLImageElement -> m result
getSizes self
  = liftIO (fromJSString <$> (js_getSizes (unHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"currentSrc\"]"
        js_getCurrentSrc :: JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.currentSrc Mozilla HTMLImageElement.currentSrc documentation> 
getCurrentSrc ::
              (MonadIO m, FromJSString result) => HTMLImageElement -> m result
getCurrentSrc self
  = liftIO
      (fromJSString <$> (js_getCurrentSrc (unHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"useMap\"] = $2;"
        js_setUseMap :: JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.useMap Mozilla HTMLImageElement.useMap documentation> 
setUseMap ::
          (MonadIO m, ToJSString val) => HTMLImageElement -> val -> m ()
setUseMap self val
  = liftIO (js_setUseMap (unHTMLImageElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"useMap\"]" js_getUseMap ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.useMap Mozilla HTMLImageElement.useMap documentation> 
getUseMap ::
          (MonadIO m, FromJSString result) => HTMLImageElement -> m result
getUseMap self
  = liftIO
      (fromJSString <$> (js_getUseMap (unHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        js_setVspace :: JSRef HTMLImageElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.vspace Mozilla HTMLImageElement.vspace documentation> 
setVspace :: (MonadIO m) => HTMLImageElement -> Int -> m ()
setVspace self val
  = liftIO (js_setVspace (unHTMLImageElement self) val)
 
foreign import javascript unsafe "$1[\"vspace\"]" js_getVspace ::
        JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.vspace Mozilla HTMLImageElement.vspace documentation> 
getVspace :: (MonadIO m) => HTMLImageElement -> m Int
getVspace self = liftIO (js_getVspace (unHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef HTMLImageElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.width Mozilla HTMLImageElement.width documentation> 
setWidth :: (MonadIO m) => HTMLImageElement -> Int -> m ()
setWidth self val
  = liftIO (js_setWidth (unHTMLImageElement self) val)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.width Mozilla HTMLImageElement.width documentation> 
getWidth :: (MonadIO m) => HTMLImageElement -> m Int
getWidth self = liftIO (js_getWidth (unHTMLImageElement self))
 
foreign import javascript unsafe "($1[\"complete\"] ? 1 : 0)"
        js_getComplete :: JSRef HTMLImageElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.complete Mozilla HTMLImageElement.complete documentation> 
getComplete :: (MonadIO m) => HTMLImageElement -> m Bool
getComplete self
  = liftIO (js_getComplete (unHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"lowsrc\"] = $2;"
        js_setLowsrc :: JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.lowsrc Mozilla HTMLImageElement.lowsrc documentation> 
setLowsrc ::
          (MonadIO m, ToJSString val) => HTMLImageElement -> val -> m ()
setLowsrc self val
  = liftIO (js_setLowsrc (unHTMLImageElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"lowsrc\"]" js_getLowsrc ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.lowsrc Mozilla HTMLImageElement.lowsrc documentation> 
getLowsrc ::
          (MonadIO m, FromJSString result) => HTMLImageElement -> m result
getLowsrc self
  = liftIO
      (fromJSString <$> (js_getLowsrc (unHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"naturalHeight\"]"
        js_getNaturalHeight :: JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.naturalHeight Mozilla HTMLImageElement.naturalHeight documentation> 
getNaturalHeight :: (MonadIO m) => HTMLImageElement -> m Int
getNaturalHeight self
  = liftIO (js_getNaturalHeight (unHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"naturalWidth\"]"
        js_getNaturalWidth :: JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.naturalWidth Mozilla HTMLImageElement.naturalWidth documentation> 
getNaturalWidth :: (MonadIO m) => HTMLImageElement -> m Int
getNaturalWidth self
  = liftIO (js_getNaturalWidth (unHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.x Mozilla HTMLImageElement.x documentation> 
getX :: (MonadIO m) => HTMLImageElement -> m Int
getX self = liftIO (js_getX (unHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.y Mozilla HTMLImageElement.y documentation> 
getY :: (MonadIO m) => HTMLImageElement -> m Int
getY self = liftIO (js_getY (unHTMLImageElement self))
#else
module GHCJS.DOM.HTMLImageElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLImageElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLImageElement
#endif
