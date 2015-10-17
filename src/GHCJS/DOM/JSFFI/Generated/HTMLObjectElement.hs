{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLObjectElement
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
        js_setStandby, setStandby, js_getStandby, getStandby, js_setType,
        setType, js_getType, getType, js_setUseMap, setUseMap,
        js_getUseMap, getUseMap, js_setVspace, setVspace, js_getVspace,
        getVspace, js_setWidth, setWidth, js_getWidth, getWidth,
        js_getWillValidate, getWillValidate, js_getValidity, getValidity,
        js_getValidationMessage, getValidationMessage,
        js_getContentDocument, getContentDocument, HTMLObjectElement,
        castToHTMLObjectElement, gTypeHTMLObjectElement)
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
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)" js_checkValidity ::
        HTMLObjectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.checkValidity Mozilla HTMLObjectElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLObjectElement -> m Bool
checkValidity self = liftIO (js_checkValidity (self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        js_setCustomValidity ::
        HTMLObjectElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.setCustomValidity Mozilla HTMLObjectElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) =>
                    HTMLObjectElement -> Maybe error -> m ()
setCustomValidity self error
  = liftIO (js_setCustomValidity (self) (toMaybeJSString error))
 
foreign import javascript unsafe "$1[\"getSVGDocument\"]()"
        js_getSVGDocument :: HTMLObjectElement -> IO (Nullable SVGDocument)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.getSVGDocument Mozilla HTMLObjectElement.getSVGDocument documentation> 
getSVGDocument ::
               (MonadIO m) => HTMLObjectElement -> m (Maybe SVGDocument)
getSVGDocument self
  = liftIO (nullableToMaybe <$> (js_getSVGDocument (self)))
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        HTMLObjectElement -> IO (Nullable HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.form Mozilla HTMLObjectElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLObjectElement -> m (Maybe HTMLFormElement)
getForm self = liftIO (nullableToMaybe <$> (js_getForm (self)))
 
foreign import javascript unsafe "$1[\"code\"] = $2;" js_setCode ::
        HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.code Mozilla HTMLObjectElement.code documentation> 
setCode ::
        (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setCode self val = liftIO (js_setCode (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.code Mozilla HTMLObjectElement.code documentation> 
getCode ::
        (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getCode self = liftIO (fromJSString <$> (js_getCode (self)))
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.align Mozilla HTMLObjectElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setAlign self val = liftIO (js_setAlign (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.align Mozilla HTMLObjectElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getAlign self = liftIO (fromJSString <$> (js_getAlign (self)))
 
foreign import javascript unsafe "$1[\"archive\"] = $2;"
        js_setArchive :: HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.archive Mozilla HTMLObjectElement.archive documentation> 
setArchive ::
           (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setArchive self val
  = liftIO (js_setArchive (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"archive\"]" js_getArchive ::
        HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.archive Mozilla HTMLObjectElement.archive documentation> 
getArchive ::
           (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getArchive self = liftIO (fromJSString <$> (js_getArchive (self)))
 
foreign import javascript unsafe "$1[\"border\"] = $2;"
        js_setBorder :: HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.border Mozilla HTMLObjectElement.border documentation> 
setBorder ::
          (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setBorder self val = liftIO (js_setBorder (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"border\"]" js_getBorder ::
        HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.border Mozilla HTMLObjectElement.border documentation> 
getBorder ::
          (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getBorder self = liftIO (fromJSString <$> (js_getBorder (self)))
 
foreign import javascript unsafe "$1[\"codeBase\"] = $2;"
        js_setCodeBase :: HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeBase Mozilla HTMLObjectElement.codeBase documentation> 
setCodeBase ::
            (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setCodeBase self val
  = liftIO (js_setCodeBase (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"codeBase\"]" js_getCodeBase
        :: HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeBase Mozilla HTMLObjectElement.codeBase documentation> 
getCodeBase ::
            (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getCodeBase self
  = liftIO (fromJSString <$> (js_getCodeBase (self)))
 
foreign import javascript unsafe "$1[\"codeType\"] = $2;"
        js_setCodeType :: HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeType Mozilla HTMLObjectElement.codeType documentation> 
setCodeType ::
            (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setCodeType self val
  = liftIO (js_setCodeType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"codeType\"]" js_getCodeType
        :: HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.codeType Mozilla HTMLObjectElement.codeType documentation> 
getCodeType ::
            (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getCodeType self
  = liftIO (fromJSString <$> (js_getCodeType (self)))
 
foreign import javascript unsafe "$1[\"data\"] = $2;" js_setData ::
        HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.data Mozilla HTMLObjectElement.data documentation> 
setData ::
        (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setData self val = liftIO (js_setData (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"data\"]" js_getData ::
        HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.data Mozilla HTMLObjectElement.data documentation> 
getData ::
        (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getData self = liftIO (fromJSString <$> (js_getData (self)))
 
foreign import javascript unsafe "$1[\"declare\"] = $2;"
        js_setDeclare :: HTMLObjectElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.declare Mozilla HTMLObjectElement.declare documentation> 
setDeclare :: (MonadIO m) => HTMLObjectElement -> Bool -> m ()
setDeclare self val = liftIO (js_setDeclare (self) val)
 
foreign import javascript unsafe "($1[\"declare\"] ? 1 : 0)"
        js_getDeclare :: HTMLObjectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.declare Mozilla HTMLObjectElement.declare documentation> 
getDeclare :: (MonadIO m) => HTMLObjectElement -> m Bool
getDeclare self = liftIO (js_getDeclare (self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.height Mozilla HTMLObjectElement.height documentation> 
setHeight ::
          (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setHeight self val = liftIO (js_setHeight (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.height Mozilla HTMLObjectElement.height documentation> 
getHeight ::
          (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getHeight self = liftIO (fromJSString <$> (js_getHeight (self)))
 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        js_setHspace :: HTMLObjectElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.hspace Mozilla HTMLObjectElement.hspace documentation> 
setHspace :: (MonadIO m) => HTMLObjectElement -> Int -> m ()
setHspace self val = liftIO (js_setHspace (self) val)
 
foreign import javascript unsafe "$1[\"hspace\"]" js_getHspace ::
        HTMLObjectElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.hspace Mozilla HTMLObjectElement.hspace documentation> 
getHspace :: (MonadIO m) => HTMLObjectElement -> m Int
getHspace self = liftIO (js_getHspace (self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.name Mozilla HTMLObjectElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setName self val = liftIO (js_setName (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.name Mozilla HTMLObjectElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"standby\"] = $2;"
        js_setStandby :: HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.standby Mozilla HTMLObjectElement.standby documentation> 
setStandby ::
           (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setStandby self val
  = liftIO (js_setStandby (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"standby\"]" js_getStandby ::
        HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.standby Mozilla HTMLObjectElement.standby documentation> 
getStandby ::
           (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getStandby self = liftIO (fromJSString <$> (js_getStandby (self)))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.type Mozilla HTMLObjectElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setType self val = liftIO (js_setType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.type Mozilla HTMLObjectElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"useMap\"] = $2;"
        js_setUseMap :: HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.useMap Mozilla HTMLObjectElement.useMap documentation> 
setUseMap ::
          (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setUseMap self val = liftIO (js_setUseMap (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"useMap\"]" js_getUseMap ::
        HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.useMap Mozilla HTMLObjectElement.useMap documentation> 
getUseMap ::
          (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getUseMap self = liftIO (fromJSString <$> (js_getUseMap (self)))
 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        js_setVspace :: HTMLObjectElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.vspace Mozilla HTMLObjectElement.vspace documentation> 
setVspace :: (MonadIO m) => HTMLObjectElement -> Int -> m ()
setVspace self val = liftIO (js_setVspace (self) val)
 
foreign import javascript unsafe "$1[\"vspace\"]" js_getVspace ::
        HTMLObjectElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.vspace Mozilla HTMLObjectElement.vspace documentation> 
getVspace :: (MonadIO m) => HTMLObjectElement -> m Int
getVspace self = liftIO (js_getVspace (self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: HTMLObjectElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.width Mozilla HTMLObjectElement.width documentation> 
setWidth ::
         (MonadIO m, ToJSString val) => HTMLObjectElement -> val -> m ()
setWidth self val = liftIO (js_setWidth (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.width Mozilla HTMLObjectElement.width documentation> 
getWidth ::
         (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getWidth self = liftIO (fromJSString <$> (js_getWidth (self)))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        js_getWillValidate :: HTMLObjectElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.willValidate Mozilla HTMLObjectElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLObjectElement -> m Bool
getWillValidate self = liftIO (js_getWillValidate (self))
 
foreign import javascript unsafe "$1[\"validity\"]" js_getValidity
        :: HTMLObjectElement -> IO (Nullable ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.validity Mozilla HTMLObjectElement.validity documentation> 
getValidity ::
            (MonadIO m) => HTMLObjectElement -> m (Maybe ValidityState)
getValidity self
  = liftIO (nullableToMaybe <$> (js_getValidity (self)))
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        js_getValidationMessage :: HTMLObjectElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.validationMessage Mozilla HTMLObjectElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLObjectElement -> m result
getValidationMessage self
  = liftIO (fromJSString <$> (js_getValidationMessage (self)))
 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        js_getContentDocument ::
        HTMLObjectElement -> IO (Nullable Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLObjectElement.contentDocument Mozilla HTMLObjectElement.contentDocument documentation> 
getContentDocument ::
                   (MonadIO m) => HTMLObjectElement -> m (Maybe Document)
getContentDocument self
  = liftIO (nullableToMaybe <$> (js_getContentDocument (self)))