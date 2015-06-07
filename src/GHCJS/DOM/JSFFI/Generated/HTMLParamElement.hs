{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLParamElement
       (js_setName, setName, js_getName, getName, js_setValue, setValue,
        js_getValue, getValue, js_setValueType, setValueType,
        js_getValueType, getValueType, HTMLParamElement,
        castToHTMLParamElement, gTypeHTMLParamElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
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
        JSRef HTMLParamElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.name Mozilla HTMLParamElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLParamElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLParamElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLParamElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.name Mozilla HTMLParamElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLParamElement -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unHTMLParamElement self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef HTMLParamElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.value Mozilla HTMLParamElement.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => HTMLParamElement -> val -> m ()
setValue self val
  = liftIO (js_setValue (unHTMLParamElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef HTMLParamElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.value Mozilla HTMLParamElement.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => HTMLParamElement -> m result
getValue self
  = liftIO (fromJSString <$> (js_getValue (unHTMLParamElement self)))
 
foreign import javascript unsafe "$1[\"valueType\"] = $2;"
        js_setValueType :: JSRef HTMLParamElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.valueType Mozilla HTMLParamElement.valueType documentation> 
setValueType ::
             (MonadIO m, ToJSString val) => HTMLParamElement -> val -> m ()
setValueType self val
  = liftIO
      (js_setValueType (unHTMLParamElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"valueType\"]"
        js_getValueType :: JSRef HTMLParamElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement.valueType Mozilla HTMLParamElement.valueType documentation> 
getValueType ::
             (MonadIO m, FromJSString result) => HTMLParamElement -> m result
getValueType self
  = liftIO
      (fromJSString <$> (js_getValueType (unHTMLParamElement self)))