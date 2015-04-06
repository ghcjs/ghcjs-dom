{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLObjectElement
       (js_checkValidity, checkValidity, js_setCustomValidity,
        setCustomValidity, js_getSVGDocument, getSVGDocument, js_getForm,
        getForm, js_setCode, setCode, js_getCode, getCode, js_setAlign,
        setAlign, js_getAlign, getAlign, js_setArchive, setArchive,
        js_getArchive, getArchive, js_setBorder, setBorder, js_getBorder,
        getBorder, js_setCodeBase, setCodeBase, js_getCodeBase,
        getCodeBase, js_setCodeType, setCodeType, js_getCodeType,
        getCodeType, js_setData, setData, js_getData, getData,
        js_setDeclare, setDeclare, js_getDeclare, getDeclare, js_setHeight,
        setHeight, js_getHeight, getHeight, js_setHspace, setHspace,
        js_getHspace, getHspace, js_setName, setName, js_getName, getName,
        js_setStandby, setStandby, js_getStandby, getStandby, js_setUseMap,
        setUseMap, js_getUseMap, getUseMap, js_setVspace, setVspace,
        js_getVspace, getVspace, js_setWidth, setWidth, js_getWidth,
        getWidth, js_getWillValidate, getWillValidate, js_getValidity,
        getValidity, js_getValidationMessage, getValidationMessage,
        js_getContentDocument, getContentDocument, HTMLObjectElement,
        castToHTMLObjectElement, gTypeHTMLObjectElement)
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

 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)" js_checkValidity ::
        JSRef HTMLObjectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.checkValidity Mozilla HTMLObjectElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLObjectElement -> m Bool
checkValidity self
  = liftIO (js_checkValidity (unHTMLObjectElement self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        js_setCustomValidity ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.setCustomValidity Mozilla HTMLObjectElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) => HTMLObjectElement -> error -> m ()
setCustomValidity self error
  = liftIO
      (js_setCustomValidity (unHTMLObjectElement self)
         (toJSString error))
 
foreign import javascript unsafe "$1[\"getSVGDocument\"]()"
        js_getSVGDocument ::
        JSRef HTMLObjectElement -> IO (JSRef SVGDocument)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.getSVGDocument Mozilla HTMLObjectElement.getSVGDocument documentation> 
getSVGDocument ::
               (MonadIO m) => HTMLObjectElement -> m (Maybe SVGDocument)
getSVGDocument self
  = liftIO
      ((js_getSVGDocument (unHTMLObjectElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        JSRef HTMLObjectElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.form Mozilla HTMLObjectElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLObjectElement -> m (Maybe HTMLFormElement)
getForm self
  = liftIO ((js_getForm (unHTMLObjectElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"code\"] = $2;" js_setCode ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.code Mozilla HTMLObjectElement.code documentation> 
setCode ::
        (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setCode self val
  = liftIO (js_setCode (unHTMLObjectElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.code Mozilla HTMLObjectElement.code documentation> 
getCode ::
        (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getCode self
  = liftIO (fromJSString <$> (js_getCode (unHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.align Mozilla HTMLObjectElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setAlign self val
  = liftIO (js_setAlign (unHTMLObjectElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.align Mozilla HTMLObjectElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getAlign self
  = liftIO
      (fromJSString <$> (js_getAlign (unHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"archive\"] = $2;"
        js_setArchive :: JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.archive Mozilla HTMLObjectElement.archive documentation> 
setArchive ::
           (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setArchive self val
  = liftIO
      (js_setArchive (unHTMLObjectElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"archive\"]" js_getArchive ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.archive Mozilla HTMLObjectElement.archive documentation> 
getArchive ::
           (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getArchive self
  = liftIO
      (fromJSString <$> (js_getArchive (unHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"border\"] = $2;"
        js_setBorder :: JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.border Mozilla HTMLObjectElement.border documentation> 
setBorder ::
          (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setBorder self val
  = liftIO (js_setBorder (unHTMLObjectElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"border\"]" js_getBorder ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.border Mozilla HTMLObjectElement.border documentation> 
getBorder ::
          (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getBorder self
  = liftIO
      (fromJSString <$> (js_getBorder (unHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"codeBase\"] = $2;"
        js_setCodeBase :: JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeBase Mozilla HTMLObjectElement.codeBase documentation> 
setCodeBase ::
            (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setCodeBase self val
  = liftIO
      (js_setCodeBase (unHTMLObjectElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"codeBase\"]" js_getCodeBase
        :: JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeBase Mozilla HTMLObjectElement.codeBase documentation> 
getCodeBase ::
            (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getCodeBase self
  = liftIO
      (fromJSString <$> (js_getCodeBase (unHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"codeType\"] = $2;"
        js_setCodeType :: JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeType Mozilla HTMLObjectElement.codeType documentation> 
setCodeType ::
            (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setCodeType self val
  = liftIO
      (js_setCodeType (unHTMLObjectElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"codeType\"]" js_getCodeType
        :: JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeType Mozilla HTMLObjectElement.codeType documentation> 
getCodeType ::
            (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getCodeType self
  = liftIO
      (fromJSString <$> (js_getCodeType (unHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"data\"] = $2;" js_setData ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.data Mozilla HTMLObjectElement.data documentation> 
setData ::
        (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setData self val
  = liftIO (js_setData (unHTMLObjectElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"data\"]" js_getData ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.data Mozilla HTMLObjectElement.data documentation> 
getData ::
        (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getData self
  = liftIO (fromJSString <$> (js_getData (unHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"declare\"] = $2;"
        js_setDeclare :: JSRef HTMLObjectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.declare Mozilla HTMLObjectElement.declare documentation> 
setDeclare :: (MonadIO m) => HTMLObjectElement -> Bool -> m ()
setDeclare self val
  = liftIO (js_setDeclare (unHTMLObjectElement self) val)
 
foreign import javascript unsafe "($1[\"declare\"] ? 1 : 0)"
        js_getDeclare :: JSRef HTMLObjectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.declare Mozilla HTMLObjectElement.declare documentation> 
getDeclare :: (MonadIO m) => HTMLObjectElement -> m Bool
getDeclare self = liftIO (js_getDeclare (unHTMLObjectElement self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.height Mozilla HTMLObjectElement.height documentation> 
setHeight ::
          (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setHeight self val
  = liftIO (js_setHeight (unHTMLObjectElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.height Mozilla HTMLObjectElement.height documentation> 
getHeight ::
          (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getHeight self
  = liftIO
      (fromJSString <$> (js_getHeight (unHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        js_setHspace :: JSRef HTMLObjectElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.hspace Mozilla HTMLObjectElement.hspace documentation> 
setHspace :: (MonadIO m) => HTMLObjectElement -> Int -> m ()
setHspace self val
  = liftIO (js_setHspace (unHTMLObjectElement self) val)
 
foreign import javascript unsafe "$1[\"hspace\"]" js_getHspace ::
        JSRef HTMLObjectElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.hspace Mozilla HTMLObjectElement.hspace documentation> 
getHspace :: (MonadIO m) => HTMLObjectElement -> m Int
getHspace self = liftIO (js_getHspace (unHTMLObjectElement self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.name Mozilla HTMLObjectElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLObjectElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.name Mozilla HTMLObjectElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"standby\"] = $2;"
        js_setStandby :: JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.standby Mozilla HTMLObjectElement.standby documentation> 
setStandby ::
           (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setStandby self val
  = liftIO
      (js_setStandby (unHTMLObjectElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"standby\"]" js_getStandby ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.standby Mozilla HTMLObjectElement.standby documentation> 
getStandby ::
           (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getStandby self
  = liftIO
      (fromJSString <$> (js_getStandby (unHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"useMap\"] = $2;"
        js_setUseMap :: JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.useMap Mozilla HTMLObjectElement.useMap documentation> 
setUseMap ::
          (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setUseMap self val
  = liftIO (js_setUseMap (unHTMLObjectElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"useMap\"]" js_getUseMap ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.useMap Mozilla HTMLObjectElement.useMap documentation> 
getUseMap ::
          (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getUseMap self
  = liftIO
      (fromJSString <$> (js_getUseMap (unHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        js_setVspace :: JSRef HTMLObjectElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.vspace Mozilla HTMLObjectElement.vspace documentation> 
setVspace :: (MonadIO m) => HTMLObjectElement -> Int -> m ()
setVspace self val
  = liftIO (js_setVspace (unHTMLObjectElement self) val)
 
foreign import javascript unsafe "$1[\"vspace\"]" js_getVspace ::
        JSRef HTMLObjectElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.vspace Mozilla HTMLObjectElement.vspace documentation> 
getVspace :: (MonadIO m) => HTMLObjectElement -> m Int
getVspace self = liftIO (js_getVspace (unHTMLObjectElement self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.width Mozilla HTMLObjectElement.width documentation> 
setWidth ::
         (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setWidth self val
  = liftIO (js_setWidth (unHTMLObjectElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.width Mozilla HTMLObjectElement.width documentation> 
getWidth ::
         (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getWidth self
  = liftIO
      (fromJSString <$> (js_getWidth (unHTMLObjectElement self)))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        js_getWillValidate :: JSRef HTMLObjectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.willValidate Mozilla HTMLObjectElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLObjectElement -> m Bool
getWillValidate self
  = liftIO (js_getWillValidate (unHTMLObjectElement self))
 
foreign import javascript unsafe "$1[\"validity\"]" js_getValidity
        :: JSRef HTMLObjectElement -> IO (JSRef ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.validity Mozilla HTMLObjectElement.validity documentation> 
getValidity ::
            (MonadIO m) => HTMLObjectElement -> m (Maybe ValidityState)
getValidity self
  = liftIO
      ((js_getValidity (unHTMLObjectElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        js_getValidationMessage :: JSRef HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.validationMessage Mozilla HTMLObjectElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getValidationMessage self
  = liftIO
      (fromJSString <$>
         (js_getValidationMessage (unHTMLObjectElement self)))
 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        js_getContentDocument ::
        JSRef HTMLObjectElement -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.contentDocument Mozilla HTMLObjectElement.contentDocument documentation> 
getContentDocument ::
                   (MonadIO m) => HTMLObjectElement -> m (Maybe Document)
getContentDocument self
  = liftIO
      ((js_getContentDocument (unHTMLObjectElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.HTMLObjectElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLObjectElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLObjectElement
#endif
