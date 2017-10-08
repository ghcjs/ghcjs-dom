{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLFormElement
       (js_getAt, getAt, getAt_, getAtUnsafe, getAtUnchecked, js_get, get,
        get_, getUnsafe, getUnchecked, js_submit, submit, js_reset, reset,
        js_checkValidity, checkValidity, checkValidity_, js_reportValidity,
        reportValidity, reportValidity_, js_requestAutocomplete,
        requestAutocomplete, js_setAcceptCharset, setAcceptCharset,
        js_getAcceptCharset, getAcceptCharset, js_setAction, setAction,
        js_getAction, getAction, js_setAutocomplete, setAutocomplete,
        js_getAutocomplete, getAutocomplete, js_setEnctype, setEnctype,
        js_getEnctype, getEnctype, js_setEncoding, setEncoding,
        js_getEncoding, getEncoding, js_setMethod, setMethod, js_getMethod,
        getMethod, js_setName, setName, js_getName, getName,
        js_setNoValidate, setNoValidate, js_getNoValidate, getNoValidate,
        js_setTarget, setTarget, js_getTarget, getTarget, js_getElements,
        getElements, js_getLength, getLength, HTMLFormElement(..),
        gTypeHTMLFormElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[$2]" js_getAt ::
        HTMLFormElement -> Word -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
getAt ::
      (MonadIO m) => HTMLFormElement -> Word -> m (Maybe Element)
getAt self index
  = liftIO (nullableToMaybe <$> (js_getAt self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
getAt_ :: (MonadIO m) => HTMLFormElement -> Word -> m ()
getAt_ self index = liftIO (void (js_getAt self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
getAtUnsafe ::
            (MonadIO m, HasCallStack) => HTMLFormElement -> Word -> m Element
getAtUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_getAt self index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
getAtUnchecked ::
               (MonadIO m) => HTMLFormElement -> Word -> m Element
getAtUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_getAt self index))
 
foreign import javascript unsafe "$1[$2]" js_get ::
        HTMLFormElement -> JSString -> IO (Nullable RadioNodeListOrElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
get ::
    (MonadIO m, ToJSString name) =>
      HTMLFormElement -> name -> m (Maybe RadioNodeListOrElement)
get self name
  = liftIO (nullableToMaybe <$> (js_get self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
get_ ::
     (MonadIO m, ToJSString name) => HTMLFormElement -> name -> m ()
get_ self name = liftIO (void (js_get self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
getUnsafe ::
          (MonadIO m, ToJSString name, HasCallStack) =>
            HTMLFormElement -> name -> m RadioNodeListOrElement
getUnsafe self name
  = liftIO
      ((nullableToMaybe <$> (js_get self (toJSString name))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.get Mozilla HTMLFormElement.get documentation> 
getUnchecked ::
             (MonadIO m, ToJSString name) =>
               HTMLFormElement -> name -> m RadioNodeListOrElement
getUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$> (js_get self (toJSString name)))
 
foreign import javascript unsafe "$1[\"submit\"]()" js_submit ::
        HTMLFormElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.submit Mozilla HTMLFormElement.submit documentation> 
submit :: (MonadIO m) => HTMLFormElement -> m ()
submit self = liftIO (js_submit self)
 
foreign import javascript unsafe "$1[\"reset\"]()" js_reset ::
        HTMLFormElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.reset Mozilla HTMLFormElement.reset documentation> 
reset :: (MonadIO m) => HTMLFormElement -> m ()
reset self = liftIO (js_reset self)
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)" js_checkValidity ::
        HTMLFormElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.checkValidity Mozilla HTMLFormElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLFormElement -> m Bool
checkValidity self = liftIO (js_checkValidity self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.checkValidity Mozilla HTMLFormElement.checkValidity documentation> 
checkValidity_ :: (MonadIO m) => HTMLFormElement -> m ()
checkValidity_ self = liftIO (void (js_checkValidity self))
 
foreign import javascript unsafe
        "($1[\"reportValidity\"]() ? 1 : 0)" js_reportValidity ::
        HTMLFormElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.reportValidity Mozilla HTMLFormElement.reportValidity documentation> 
reportValidity :: (MonadIO m) => HTMLFormElement -> m Bool
reportValidity self = liftIO (js_reportValidity self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.reportValidity Mozilla HTMLFormElement.reportValidity documentation> 
reportValidity_ :: (MonadIO m) => HTMLFormElement -> m ()
reportValidity_ self = liftIO (void (js_reportValidity self))
 
foreign import javascript unsafe "$1[\"requestAutocomplete\"]()"
        js_requestAutocomplete :: HTMLFormElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.requestAutocomplete Mozilla HTMLFormElement.requestAutocomplete documentation> 
requestAutocomplete :: (MonadIO m) => HTMLFormElement -> m ()
requestAutocomplete self = liftIO (js_requestAutocomplete self)
 
foreign import javascript unsafe "$1[\"acceptCharset\"] = $2;"
        js_setAcceptCharset :: HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.acceptCharset Mozilla HTMLFormElement.acceptCharset documentation> 
setAcceptCharset ::
                 (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setAcceptCharset self val
  = liftIO (js_setAcceptCharset self (toJSString val))
 
foreign import javascript unsafe "$1[\"acceptCharset\"]"
        js_getAcceptCharset :: HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.acceptCharset Mozilla HTMLFormElement.acceptCharset documentation> 
getAcceptCharset ::
                 (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getAcceptCharset self
  = liftIO (fromJSString <$> (js_getAcceptCharset self))
 
foreign import javascript unsafe "$1[\"action\"] = $2;"
        js_setAction :: HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.action Mozilla HTMLFormElement.action documentation> 
setAction ::
          (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setAction self val = liftIO (js_setAction self (toJSString val))
 
foreign import javascript unsafe "$1[\"action\"]" js_getAction ::
        HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.action Mozilla HTMLFormElement.action documentation> 
getAction ::
          (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getAction self = liftIO (fromJSString <$> (js_getAction self))
 
foreign import javascript unsafe "$1[\"autocomplete\"] = $2;"
        js_setAutocomplete :: HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocomplete Mozilla HTMLFormElement.autocomplete documentation> 
setAutocomplete ::
                (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setAutocomplete self val
  = liftIO (js_setAutocomplete self (toJSString val))
 
foreign import javascript unsafe "$1[\"autocomplete\"]"
        js_getAutocomplete :: HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.autocomplete Mozilla HTMLFormElement.autocomplete documentation> 
getAutocomplete ::
                (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getAutocomplete self
  = liftIO (fromJSString <$> (js_getAutocomplete self))
 
foreign import javascript unsafe "$1[\"enctype\"] = $2;"
        js_setEnctype :: HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.enctype Mozilla HTMLFormElement.enctype documentation> 
setEnctype ::
           (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setEnctype self val = liftIO (js_setEnctype self (toJSString val))
 
foreign import javascript unsafe "$1[\"enctype\"]" js_getEnctype ::
        HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.enctype Mozilla HTMLFormElement.enctype documentation> 
getEnctype ::
           (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getEnctype self = liftIO (fromJSString <$> (js_getEnctype self))
 
foreign import javascript unsafe "$1[\"encoding\"] = $2;"
        js_setEncoding :: HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.encoding Mozilla HTMLFormElement.encoding documentation> 
setEncoding ::
            (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setEncoding self val
  = liftIO (js_setEncoding self (toJSString val))
 
foreign import javascript unsafe "$1[\"encoding\"]" js_getEncoding
        :: HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.encoding Mozilla HTMLFormElement.encoding documentation> 
getEncoding ::
            (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getEncoding self = liftIO (fromJSString <$> (js_getEncoding self))
 
foreign import javascript unsafe "$1[\"method\"] = $2;"
        js_setMethod :: HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.method Mozilla HTMLFormElement.method documentation> 
setMethod ::
          (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setMethod self val = liftIO (js_setMethod self (toJSString val))
 
foreign import javascript unsafe "$1[\"method\"]" js_getMethod ::
        HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.method Mozilla HTMLFormElement.method documentation> 
getMethod ::
          (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getMethod self = liftIO (fromJSString <$> (js_getMethod self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.name Mozilla HTMLFormElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setName self val = liftIO (js_setName self (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.name Mozilla HTMLFormElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"noValidate\"] = $2;"
        js_setNoValidate :: HTMLFormElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.noValidate Mozilla HTMLFormElement.noValidate documentation> 
setNoValidate :: (MonadIO m) => HTMLFormElement -> Bool -> m ()
setNoValidate self val = liftIO (js_setNoValidate self val)
 
foreign import javascript unsafe "($1[\"noValidate\"] ? 1 : 0)"
        js_getNoValidate :: HTMLFormElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.noValidate Mozilla HTMLFormElement.noValidate documentation> 
getNoValidate :: (MonadIO m) => HTMLFormElement -> m Bool
getNoValidate self = liftIO (js_getNoValidate self)
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        js_setTarget :: HTMLFormElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.target Mozilla HTMLFormElement.target documentation> 
setTarget ::
          (MonadIO m, ToJSString val) => HTMLFormElement -> val -> m ()
setTarget self val = liftIO (js_setTarget self (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        HTMLFormElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.target Mozilla HTMLFormElement.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) => HTMLFormElement -> m result
getTarget self = liftIO (fromJSString <$> (js_getTarget self))
 
foreign import javascript unsafe "$1[\"elements\"]" js_getElements
        :: HTMLFormElement -> IO HTMLFormControlsCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.elements Mozilla HTMLFormElement.elements documentation> 
getElements ::
            (MonadIO m) => HTMLFormElement -> m HTMLFormControlsCollection
getElements self = liftIO (js_getElements self)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        HTMLFormElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement.length Mozilla HTMLFormElement.length documentation> 
getLength :: (MonadIO m) => HTMLFormElement -> m Word
getLength self = liftIO (js_getLength self)