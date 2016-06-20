{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLFrameElement
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
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"getSVGDocument\"]()"
        js_getSVGDocument :: HTMLFrameElement -> IO (Nullable SVGDocument)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.getSVGDocument Mozilla HTMLFrameElement.getSVGDocument documentation> 
getSVGDocument ::
               (MonadIO m) => HTMLFrameElement -> m (Maybe SVGDocument)
getSVGDocument self
  = liftIO (nullableToMaybe <$> (js_getSVGDocument (self)))
 
foreign import javascript unsafe "$1[\"frameBorder\"] = $2;"
        js_setFrameBorder :: HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.frameBorder Mozilla HTMLFrameElement.frameBorder documentation> 
setFrameBorder ::
               (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setFrameBorder self val
  = liftIO (js_setFrameBorder (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"frameBorder\"]"
        js_getFrameBorder :: HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.frameBorder Mozilla HTMLFrameElement.frameBorder documentation> 
getFrameBorder ::
               (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getFrameBorder self
  = liftIO (fromJSString <$> (js_getFrameBorder (self)))
 
foreign import javascript unsafe "$1[\"longDesc\"] = $2;"
        js_setLongDesc :: HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.longDesc Mozilla HTMLFrameElement.longDesc documentation> 
setLongDesc ::
            (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setLongDesc self val
  = liftIO (js_setLongDesc (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"longDesc\"]" js_getLongDesc
        :: HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.longDesc Mozilla HTMLFrameElement.longDesc documentation> 
getLongDesc ::
            (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getLongDesc self
  = liftIO (fromJSString <$> (js_getLongDesc (self)))
 
foreign import javascript unsafe "$1[\"marginHeight\"] = $2;"
        js_setMarginHeight :: HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginHeight Mozilla HTMLFrameElement.marginHeight documentation> 
setMarginHeight ::
                (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setMarginHeight self val
  = liftIO (js_setMarginHeight (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"marginHeight\"]"
        js_getMarginHeight :: HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginHeight Mozilla HTMLFrameElement.marginHeight documentation> 
getMarginHeight ::
                (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getMarginHeight self
  = liftIO (fromJSString <$> (js_getMarginHeight (self)))
 
foreign import javascript unsafe "$1[\"marginWidth\"] = $2;"
        js_setMarginWidth :: HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginWidth Mozilla HTMLFrameElement.marginWidth documentation> 
setMarginWidth ::
               (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setMarginWidth self val
  = liftIO (js_setMarginWidth (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"marginWidth\"]"
        js_getMarginWidth :: HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginWidth Mozilla HTMLFrameElement.marginWidth documentation> 
getMarginWidth ::
               (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getMarginWidth self
  = liftIO (fromJSString <$> (js_getMarginWidth (self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.name Mozilla HTMLFrameElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setName self val = liftIO (js_setName (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.name Mozilla HTMLFrameElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"noResize\"] = $2;"
        js_setNoResize :: HTMLFrameElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.noResize Mozilla HTMLFrameElement.noResize documentation> 
setNoResize :: (MonadIO m) => HTMLFrameElement -> Bool -> m ()
setNoResize self val = liftIO (js_setNoResize (self) val)
 
foreign import javascript unsafe "($1[\"noResize\"] ? 1 : 0)"
        js_getNoResize :: HTMLFrameElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.noResize Mozilla HTMLFrameElement.noResize documentation> 
getNoResize :: (MonadIO m) => HTMLFrameElement -> m Bool
getNoResize self = liftIO (js_getNoResize (self))
 
foreign import javascript unsafe "$1[\"scrolling\"] = $2;"
        js_setScrolling :: HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.scrolling Mozilla HTMLFrameElement.scrolling documentation> 
setScrolling ::
             (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setScrolling self val
  = liftIO (js_setScrolling (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"scrolling\"]"
        js_getScrolling :: HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.scrolling Mozilla HTMLFrameElement.scrolling documentation> 
getScrolling ::
             (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getScrolling self
  = liftIO (fromJSString <$> (js_getScrolling (self)))
 
foreign import javascript unsafe "$1[\"src\"] = $2;" js_setSrc ::
        HTMLFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.src Mozilla HTMLFrameElement.src documentation> 
setSrc ::
       (MonadIO m, ToJSString val) => HTMLFrameElement -> val -> m ()
setSrc self val = liftIO (js_setSrc (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]" js_getSrc ::
        HTMLFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.src Mozilla HTMLFrameElement.src documentation> 
getSrc ::
       (MonadIO m, FromJSString result) => HTMLFrameElement -> m result
getSrc self = liftIO (fromJSString <$> (js_getSrc (self)))
 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        js_getContentDocument :: HTMLFrameElement -> IO (Nullable Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.contentDocument Mozilla HTMLFrameElement.contentDocument documentation> 
getContentDocument ::
                   (MonadIO m) => HTMLFrameElement -> m (Maybe Document)
getContentDocument self
  = liftIO (nullableToMaybe <$> (js_getContentDocument (self)))
 
foreign import javascript unsafe "$1[\"contentWindow\"]"
        js_getContentWindow :: HTMLFrameElement -> IO (Nullable Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.contentWindow Mozilla HTMLFrameElement.contentWindow documentation> 
getContentWindow ::
                 (MonadIO m) => HTMLFrameElement -> m (Maybe Window)
getContentWindow self
  = liftIO (nullableToMaybe <$> (js_getContentWindow (self)))
 
foreign import javascript unsafe "$1[\"location\"] = $2;"
        js_setLocation :: HTMLFrameElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.location Mozilla HTMLFrameElement.location documentation> 
setLocation ::
            (MonadIO m, ToJSString val) =>
              HTMLFrameElement -> Maybe val -> m ()
setLocation self val
  = liftIO (js_setLocation (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"location\"]" js_getLocation
        :: HTMLFrameElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.location Mozilla HTMLFrameElement.location documentation> 
getLocation ::
            (MonadIO m, FromJSString result) =>
              HTMLFrameElement -> m (Maybe result)
getLocation self
  = liftIO (fromMaybeJSString <$> (js_getLocation (self)))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        HTMLFrameElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.width Mozilla HTMLFrameElement.width documentation> 
getWidth :: (MonadIO m) => HTMLFrameElement -> m Int
getWidth self = liftIO (js_getWidth (self))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        HTMLFrameElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.height Mozilla HTMLFrameElement.height documentation> 
getHeight :: (MonadIO m) => HTMLFrameElement -> m Int
getHeight self = liftIO (js_getHeight (self))