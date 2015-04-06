{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLOutputElement
       (js_checkValidity, checkValidity, js_setCustomValidity,
        setCustomValidity, js_getHtmlFor, getHtmlFor, js_getForm, getForm,
        js_setName, setName, js_getName, getName, js_setDefaultValue,
        setDefaultValue, js_getDefaultValue, getDefaultValue, js_setValue,
        setValue, js_getValue, getValue, js_getWillValidate,
        getWillValidate, js_getValidity, getValidity,
        js_getValidationMessage, getValidationMessage, js_getLabels,
        getLabels, HTMLOutputElement, castToHTMLOutputElement,
        gTypeHTMLOutputElement)
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
        JSRef HTMLOutputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.checkValidity Mozilla HTMLOutputElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLOutputElement -> m Bool
checkValidity self
  = liftIO (js_checkValidity (unHTMLOutputElement self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        js_setCustomValidity ::
        JSRef HTMLOutputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.setCustomValidity Mozilla HTMLOutputElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) => HTMLOutputElement -> error -> m ()
setCustomValidity self error
  = liftIO
      (js_setCustomValidity (unHTMLOutputElement self)
         (toJSString error))
 
foreign import javascript unsafe "$1[\"htmlFor\"]" js_getHtmlFor ::
        JSRef HTMLOutputElement -> IO (JSRef DOMSettableTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.htmlFor Mozilla HTMLOutputElement.htmlFor documentation> 
getHtmlFor ::
           (MonadIO m) => HTMLOutputElement -> m (Maybe DOMSettableTokenList)
getHtmlFor self
  = liftIO ((js_getHtmlFor (unHTMLOutputElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        JSRef HTMLOutputElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.form Mozilla HTMLOutputElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLOutputElement -> m (Maybe HTMLFormElement)
getForm self
  = liftIO ((js_getForm (unHTMLOutputElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef HTMLOutputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.name Mozilla HTMLOutputElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLOutputElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLOutputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLOutputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.name Mozilla HTMLOutputElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLOutputElement -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unHTMLOutputElement self)))
 
foreign import javascript unsafe "$1[\"defaultValue\"] = $2;"
        js_setDefaultValue :: JSRef HTMLOutputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.defaultValue Mozilla HTMLOutputElement.defaultValue documentation> 
setDefaultValue ::
                (MonadIO m, ToJSString val) => HTMLOutputElement -> val -> m ()
setDefaultValue self val
  = liftIO
      (js_setDefaultValue (unHTMLOutputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        js_getDefaultValue :: JSRef HTMLOutputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.defaultValue Mozilla HTMLOutputElement.defaultValue documentation> 
getDefaultValue ::
                (MonadIO m, FromJSString result) => HTMLOutputElement -> m result
getDefaultValue self
  = liftIO
      (fromJSString <$> (js_getDefaultValue (unHTMLOutputElement self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef HTMLOutputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.value Mozilla HTMLOutputElement.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => HTMLOutputElement -> val -> m ()
setValue self val
  = liftIO (js_setValue (unHTMLOutputElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef HTMLOutputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.value Mozilla HTMLOutputElement.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => HTMLOutputElement -> m result
getValue self
  = liftIO
      (fromJSString <$> (js_getValue (unHTMLOutputElement self)))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        js_getWillValidate :: JSRef HTMLOutputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.willValidate Mozilla HTMLOutputElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLOutputElement -> m Bool
getWillValidate self
  = liftIO (js_getWillValidate (unHTMLOutputElement self))
 
foreign import javascript unsafe "$1[\"validity\"]" js_getValidity
        :: JSRef HTMLOutputElement -> IO (JSRef ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.validity Mozilla HTMLOutputElement.validity documentation> 
getValidity ::
            (MonadIO m) => HTMLOutputElement -> m (Maybe ValidityState)
getValidity self
  = liftIO
      ((js_getValidity (unHTMLOutputElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        js_getValidationMessage :: JSRef HTMLOutputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.validationMessage Mozilla HTMLOutputElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLOutputElement -> m result
getValidationMessage self
  = liftIO
      (fromJSString <$>
         (js_getValidationMessage (unHTMLOutputElement self)))
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        JSRef HTMLOutputElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.labels Mozilla HTMLOutputElement.labels documentation> 
getLabels :: (MonadIO m) => HTMLOutputElement -> m (Maybe NodeList)
getLabels self
  = liftIO ((js_getLabels (unHTMLOutputElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.HTMLOutputElement (
  ) where
#endif
