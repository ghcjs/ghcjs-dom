{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLFieldSetElement
       (js_checkValidity, checkValidity, js_setCustomValidity,
        setCustomValidity, js_setDisabled, setDisabled, js_getDisabled,
        getDisabled, js_getForm, getForm, js_setName, setName, js_getName,
        getName, js_getElements, getElements, js_getWillValidate,
        getWillValidate, js_getValidity, getValidity,
        js_getValidationMessage, getValidationMessage, HTMLFieldSetElement,
        castToHTMLFieldSetElement, gTypeHTMLFieldSetElement)
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
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)" js_checkValidity ::
        JSRef HTMLFieldSetElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.checkValidity Mozilla HTMLFieldSetElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLFieldSetElement -> m Bool
checkValidity self
  = liftIO (js_checkValidity (unHTMLFieldSetElement self))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        js_setCustomValidity ::
        JSRef HTMLFieldSetElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.setCustomValidity Mozilla HTMLFieldSetElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) =>
                    HTMLFieldSetElement -> error -> m ()
setCustomValidity self error
  = liftIO
      (js_setCustomValidity (unHTMLFieldSetElement self)
         (toJSString error))
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: JSRef HTMLFieldSetElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.disabled Mozilla HTMLFieldSetElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLFieldSetElement -> Bool -> m ()
setDisabled self val
  = liftIO (js_setDisabled (unHTMLFieldSetElement self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: JSRef HTMLFieldSetElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.disabled Mozilla HTMLFieldSetElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLFieldSetElement -> m Bool
getDisabled self
  = liftIO (js_getDisabled (unHTMLFieldSetElement self))
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        JSRef HTMLFieldSetElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.form Mozilla HTMLFieldSetElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLFieldSetElement -> m (Maybe HTMLFormElement)
getForm self
  = liftIO ((js_getForm (unHTMLFieldSetElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef HTMLFieldSetElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.name Mozilla HTMLFieldSetElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLFieldSetElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLFieldSetElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLFieldSetElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.name Mozilla HTMLFieldSetElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLFieldSetElement -> m result
getName self
  = liftIO
      (fromJSString <$> (js_getName (unHTMLFieldSetElement self)))
 
foreign import javascript unsafe "$1[\"elements\"]" js_getElements
        :: JSRef HTMLFieldSetElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.elements Mozilla HTMLFieldSetElement.elements documentation> 
getElements ::
            (MonadIO m) => HTMLFieldSetElement -> m (Maybe HTMLCollection)
getElements self
  = liftIO
      ((js_getElements (unHTMLFieldSetElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        js_getWillValidate :: JSRef HTMLFieldSetElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.willValidate Mozilla HTMLFieldSetElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLFieldSetElement -> m Bool
getWillValidate self
  = liftIO (js_getWillValidate (unHTMLFieldSetElement self))
 
foreign import javascript unsafe "$1[\"validity\"]" js_getValidity
        :: JSRef HTMLFieldSetElement -> IO (JSRef ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.validity Mozilla HTMLFieldSetElement.validity documentation> 
getValidity ::
            (MonadIO m) => HTMLFieldSetElement -> m (Maybe ValidityState)
getValidity self
  = liftIO
      ((js_getValidity (unHTMLFieldSetElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        js_getValidationMessage :: JSRef HTMLFieldSetElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFieldSetElement.validationMessage Mozilla HTMLFieldSetElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLFieldSetElement -> m result
getValidationMessage self
  = liftIO
      (fromJSString <$>
         (js_getValidationMessage (unHTMLFieldSetElement self)))