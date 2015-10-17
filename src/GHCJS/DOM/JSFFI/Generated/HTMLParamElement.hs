{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLParamElement
       (js_setName, setName, js_getName, getName, js_setType, setType,
        js_getType, getType, js_setValue, setValue, js_getValue, getValue,
        js_setValueType, setValueType, js_getValueType, getValueType,
        HTMLParamElement, castToHTMLParamElement, gTypeHTMLParamElement)
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
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLParamElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.name Mozilla HTMLParamElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLParamElement -> val -> m ()
setName self val = liftIO (js_setName (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLParamElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.name Mozilla HTMLParamElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLParamElement -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        HTMLParamElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.type Mozilla HTMLParamElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLParamElement -> val -> m ()
setType self val = liftIO (js_setType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLParamElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.type Mozilla HTMLParamElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLParamElement -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: HTMLParamElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.value Mozilla HTMLParamElement.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => HTMLParamElement -> val -> m ()
setValue self val = liftIO (js_setValue (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        HTMLParamElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.value Mozilla HTMLParamElement.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => HTMLParamElement -> m result
getValue self = liftIO (fromJSString <$> (js_getValue (self)))
 
foreign import javascript unsafe "$1[\"valueType\"] = $2;"
        js_setValueType :: HTMLParamElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.valueType Mozilla HTMLParamElement.valueType documentation> 
setValueType ::
             (MonadIO m, ToJSString val) => HTMLParamElement -> val -> m ()
setValueType self val
  = liftIO (js_setValueType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"valueType\"]"
        js_getValueType :: HTMLParamElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.valueType Mozilla HTMLParamElement.valueType documentation> 
getValueType ::
             (MonadIO m, FromJSString result) => HTMLParamElement -> m result
getValueType self
  = liftIO (fromJSString <$> (js_getValueType (self)))